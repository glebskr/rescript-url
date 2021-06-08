type t;
let make: string => t;
let makeWithBase: (string, string) => t;
let getHash: t => string;
let getHost: t => string;
let getHostname: t => string;
let getHref: t => string;
let getOrigin: t => string;
let getPassword: t => string;
let getPathname: t => string;
let getPort: t => string;
let getProtocol: t => string;
let getSearch: t => string;
let getSearchParams: t => URLSearchParams.t;
let getUsername: t => string;
let toString: t => string;
let toJSON: t => string;
let domainToASCII: string => string;
let domainToUnicode: string => string;
let format:
  (~auth: bool=?, ~fragment: bool=?, ~search: bool=?, ~unicode: bool=?, t) =>
  string;
let parse: string => t;
let resolve: (string, string) => t;
