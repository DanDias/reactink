import React from 'react'
import PropTypes from 'prop-types'

import Scene from './Scene'

const Story = ({ sceneText, tags }) => (
  <section className='story-text'>
    <Scene tags={tags} />
    {sceneText.map((text, idx) => <p key={idx}>{text}</p>)}
  </section>
)

Story.propTypes = {
  sceneText: PropTypes.array,
  tags: PropTypes.object
}

export default Story
