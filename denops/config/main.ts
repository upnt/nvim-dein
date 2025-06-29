import { setOptions } from "./options.ts";
import { setKeymaps } from "./keymaps.ts";
import { setPlugins } from "./plugins.ts";

export async function main(denops: Denops): Promise<void> {
  await setOptions(denops);
  await setKeymaps(denops);
  await setPlugins(denops);
}

