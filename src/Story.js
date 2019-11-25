import React from 'react'
import PropTypes from 'prop-types'

const Story = ({ sceneText }) => (
  <section className='story-text'>
    {sceneText.map((text, idx) => <p key={idx}>{text}</p>)}
  </section>
)

Story.propTypes = {
  sceneText: PropTypes.array
}

export default Story
