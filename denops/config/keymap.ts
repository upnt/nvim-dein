import * as fn from "jsr:@denops/std@7.6.0/function";
import * as mapping from "jsr:@denops/std@7.6.0/mapping";
import type { Denops } from "jsr:@denops/std@7.6.0";
import { Dvpm } from "jsr:@yukimemi/dvpm@7.0.3";
import { ensureString } from "https://deno.land/x/unknownutil@v2.1.1/mod.ts";
import { execute } from "jsr:@denops/std@7.6.0/helper";
import { z } from "npm:zod@3.25.67";

export async function setKeymap(denops: Denops): Promise<void> {
  await mapping.map(denops, "jj", "<esc>", {
      mode: "i",
      silent: true,
      noremap: true,
  });
  await mapping.map(denops, "jj", "<C-\\><C-n>", {
      mode: "t",
      silent: true,
      noremap: true,
  });
  await mapping.map(denops, "<esc>", "<C-\\><C-n>", {
      mode: "t",
      silent: true,
      noremap: true,
  });
  await mapping.map(denops, "<esc><esc>", "<cmd>nohlsearch<cr>", {
      mode: "n",
      silent: true,
      noremap: true,
  });
}

