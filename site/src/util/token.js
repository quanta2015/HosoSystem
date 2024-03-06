const TOKEN_KEY = 'HOSO_SYS_TOKEN'
const USER_KEY  = 'HOSO_SYS_USER'

export const loadToken = () => {
  return window.localStorage.getItem(TOKEN_KEY)
}

export const saveToken = (token) => {
  return window.localStorage.setItem(TOKEN_KEY,token)
}


export const removeLocalUser = () => {
  window.localStorage.removeItem(USER_KEY)
}

export const loadLocalUser = () => {
  return JSON.parse(window.localStorage.getItem(USER_KEY))
}

export const saveLocalUser = (data) => {
  window.localStorage.setItem(USER_KEY, JSON.stringify(data))
}