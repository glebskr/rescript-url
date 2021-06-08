
<div align="center">
<h1>rescript-url</h1>
<img src="https://pics.freeicons.io/uploads/icons/png/14393104921553233145-512.png" width='110px' height='110px'></img>
<br>
</br>

<code>url</code> bindings for <a href="https://rescript-lang.org/">Rescript </a>.
<hr />
</div>


## Installation

1. Install package from npm:
   ```
   npm install --save rescript-url
   ```

   or

   ```
   yarn add rescript-url
   ```

2. Add `rescript-url` to `bs-dependencies` section of `bsconfig.json`:
   ```
   "bs-dependencies": [
    "rescript-url"
    ]
   ```

## Usage

Create URL object.

```rescript
let myURL = URL.make("https://example.com");
Js.log(myURL);
/* Prints https://example.com */

let otherURL = URL.make("/foo", "https://example.com");
Js.log(otherURL);
/* Prints https://example.com/foo */
```

Get member in URL object.

```rescript
URL.make("https://example.com/test#main")
|> URL.hash
|> Js.log
/* Prints #main */
```

Resove a target URL relative to a base URL.

```rescript
URL.resolve("https://example.com/", "/foo") /* https://example.com/foo */
```

Create URLSearchParams object.

```rescript
/* from String */
let params0 = URLSearchParmas.make("user=abc&query=xyz");

/* from Object */
let params1 = URLSearchParmas.makeWithObject({"user": "abc", "query": [|"first", "second"|]});

/* from Array */
let params2 = URLSearchParmas.makeWithArray([|("user", "abc"), ("query", "first"), ("query", "second")|])
```
