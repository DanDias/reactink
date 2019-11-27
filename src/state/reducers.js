import { gameLoop, MAKE_CHOICE } from './actions'
export const INITIAL_STATE = {
  ending: false,
  ...gameLoop()
}
export default (state = INITIAL_STATE, { type, ...action }) => {
  switch (type) {
    case MAKE_CHOICE:
      return Object.assign({}, state, {
        globals: action.globals,
        tags: Object.assign({}, state.tags, action.tags),
        currentChoices: action.currentChoices,
        sceneText: action.sceneText,
        currentTags: action.currentTags
      })
    default:
      return state
  }
}
