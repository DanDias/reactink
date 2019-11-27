import React from 'react'
import PropTypes from 'prop-types'

const backgroundImages = {
  paper: './img/paper.png'
}
const defaultImage = ''

const Scene = ({ tags }) => {
  return (
    <section
      className='scene'
      style={{
        backgroundImage: `url(${
          tags && backgroundImages[tags.background]
            ? backgroundImages[tags.background]
            : defaultImage
        })`
      }}
    />
  )
}

Scene.propTypes = {
  tags: PropTypes.object
}

export default Scene
