import { setOption } from "./option.ts";
import { setKeymap } from "./keymap.ts";
import { setDvpm } from "./dvpm.ts";

export async function main(denops: Denops): Promise<void> {
  await setOption(denops);
  await setKeymap(denops);
  await setDvpm(denops);
}

