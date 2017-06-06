# fish-plugin-peco
Select git repository and command history and more intaractively for fish shell.

## Installation
with [fisherman](https://github.com/fisherman/fisherman)

```
fisher raba-jp/fish-plugin-peco
```

## Usage
Select git repository intaractively
```
> peco_select_repository
```

Select command history
```
> peco_select_history
```

Select and kill process
```
> peco_process_kill
```

Select and force kill process
```
> peco_force_process_kill
```

## Configuration
```
function fish_user_key_bindings
  bind \cr peco_select_repository
  bind \ch peco_select_history
  bind \ck peco_process_kill
end
```

## License
MIT
