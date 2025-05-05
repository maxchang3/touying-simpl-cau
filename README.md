# Touying Slide Theme for China Agricultural University

A slide theme for China Agricultural University based on the [Touying](https://github.com/touying-typ/touying) presentation framework. Modified from the [Touying Slide Theme for Beihang University](https://github.com/Coekjan/touying-buaa).

## Usage

### Import the theme in existing projects

```typst
#import "@preview/touying:0.6.1": *
#import "@preview/touying-simpl-cau:0.2.0": *

#show: cau-theme.with(
    config-info(
        title: [Touying for CAU: Customize Your Slide Title Here],
        subtitle: [Customize Your Slide Subtitle Here],
        author: [Authors],
        date: datetime.today(),
        institution: [China Agricultural University],
    ),
)

#title-slide() // Create a title slide

#outline-slide() // Create an outline slide

// Add your content here
```

### Create a new project with `typst init`

Quickly scaffold a new presentation with:

```console
$ typst init @preview/touying-simpl-cau
Successfully created new project from @preview/touying-simpl-cau:<latest>
To start writing, run:
> cd touying-simpl-cau
> typst watch main.typ
```

## Examples

See [examples](examples) for more details.

Compile the examples yourself:

```console
$ typst compile ./examples/main.typ --root .
```

The compiled presentation will be available at `./examples/main.pdf`.

## Development

This package is maintained using [Typship](https://github.com/sjfhsjfh/typship) for publishing to the Typst package registry.

## License

Licensed under the [MIT License](LICENSE).
