type t

@module("url") @new external make: string => t = "URL"
@module("url") @new
external makeWithBase: (string, string) => t = "URL"

@val external decodeURI: t => t = "decodeURIComponent"

@get external getHash: t => string = "hash"
@get external getHost: t => string = "host"
@get external getHostname: t => string = "hostname"
@get external getHref: t => string = "href"
@get external getOrigin: t => string = "origin"
@get external getPassword: t => string = "password"
@get external getPathname: t => string = "pathname"
@get external getPort: t => string = "port"
@get external getProtocol: t => string = "protocol"
@get external getSearch: t => string = "search"
@get external getSearchParams: t => URLSearchParams.t = "searchParams"
@get external getUsername: t => string = "username"

@send external toString: t => string = "toString"
@send external toJSON: t => string = "toJSON"

@module("url") @val
external domainToASCII: string => string = "domainToASCII"
@module("url") @val
external domainToUnicode: string => string = "domainToUnicode"
@module("url") @val
external formatInternal: (
  t,
  {"auth": bool, "fragment": bool, "search": bool, "unicode": bool},
) => string = "format"

let unwrapOptWithDefault = (optionalValue, default) =>
  switch optionalValue {
  | Some(v) => v
  | None => default
  }

let format = (~auth=?, ~fragment=?, ~search=?, ~unicode=?, t) =>
  formatInternal(
    t,
    {
      "auth": unwrapOptWithDefault(auth, true),
      "fragment": unwrapOptWithDefault(fragment, true),
      "search": unwrapOptWithDefault(search, true),
      "unicode": unwrapOptWithDefault(unicode, false),
    },
  )
@module("url") @val external parse: string => t = "parse"

@module("url") @val external resolve: (string, string) => t = "resolve"
