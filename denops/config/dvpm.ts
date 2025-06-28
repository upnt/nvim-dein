import * as fn from "jsr:@denops/std@7.6.0/function";
import * as mapping from "jsr:@denops/std@7.6.0/mapping";
import type { Denops } from "jsr:@denops/std@7.6.0";
import { Dvpm } from "jsr:@yukimemi/dvpm@7.0.3";
import { ensureString } from "https://deno.land/x/unknownutil@v2.1.1/mod.ts";
import { execute } from "jsr:@denops/std@7.6.0/helper";
import { z } from "npm:zod@3.25.67";

export async function setDvpm(denops: Denops): Promise<void> {
  // プラグインをインストールするベースとなるパスです。
  const basePath = denops.meta.host === "nvim" ? "~/.cache/nvim/dvpm" : "~/.cache/vim/dvpm";
  const base = z.string().parse(await fn.expand(denops, basePath));

  // ベースパスを引数に、 Dvpm.begin を実行して、 `dvpm` インスタンスを取得します。
  const dvpm = await Dvpm.begin(denops, { base });

  await dvpm.add({
      url: "psliwka/vim-smoothie",
      after: async ({ denops }) => {
          await execute(denops, `let g:smoothie_enabled = v:true`);
      },
  });
//
  await dvpm.add({
    url: "tomasr/molokai",
    after: async ({ denops }) => {
        await execute(denops, `colorscheme molokai`);
    },
  });

  // 最後に dvpm.end を呼べば完了です。
  await dvpm.end();

  console.log("Load completed !");
}

