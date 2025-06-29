import * as fn from "jsr:@denops/std@7.6.0/function";
import * as mapping from "jsr:@denops/std@7.6.0/mapping";
import type { Denops } from "jsr:@denops/std@7.6.0";
import { Dvpm } from "jsr:@yukimemi/dvpm@7.0.3";
import { ensureString } from "https://deno.land/x/unknownutil@v2.1.1/mod.ts";
import { execute } from "jsr:@denops/std@7.6.0/helper";
import { z } from "npm:zod@3.25.67";

export async function setPlugins(denops: Denops): Promise<void> {
  // プラグインをインストールするベースとなるパスです。
  const basePath = denops.meta.host === "nvim" ? "~/.cache/nvim/dvpm" : "~/.cache/vim/dvpm";
  const base = z.string().parse(await fn.expand(denops, basePath));
  const cachePath = denops.meta.host === "nvim"
    ? "~/.config/nvim/plugin/dvpm_plugin_cache.vim"
    : "~/.config/vim/pluguin/dvpm_plugin_cache.vim";
  const cache = z.string().parse(await fn.expand(denops, cachePath));

  // ベースパスを引数に、 Dvpm.begin を実行して、 `dvpm` インスタンスを取得します。
  const dvpm = await Dvpm.begin(denops, { base, cache });

  await dvpm.add({
    url: "psliwka/vim-smoothie",
    after: async ({ denops }) => {
      await execute(denops, `let g:smoothie_enabled = v:true`);
    },
  });

  await dvpm.add({
    url: "tomasr/molokai",
    after: async ({ denops }) => {
      await execute(denops, `colorscheme molokai`);
    },
    cache: { enabled: true },
  });

  await dvpm.add({ url: "vim-denops/denops-shared-server.vim" });
  await dvpm.add({ url: "sheerun/vim-polyglot" });
  await dvpm.add({ url: "yukimemi/silentsaver.vim" });
  await dvpm.add({ url: "cohama/lexima.vim" });
  await dvpm.add({ url: "kana/vim-smartword" });

  // 最後に dvpm.end を呼べば完了です。
  await dvpm.end();

  console.log("Load completed !");
}

