import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Particles 2.0

Window {
    visible: true

    Rectangle {
        id: root
        width: 480
        height: 260
        color: "#1f1f1f"
        ParticleSystem {
            id: particleSystem
        }
        Emitter {
            id: emitter
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            width: 1
            height: 1
            system: particleSystem
            emitRate: 10
            lifeSpan: 6400
            lifeSpanVariation: 400
            size: 32
            velocity: PointDirection {
                x: 100
                y: 0
                xVariation: 0
                yVariation: 100 / 6
            }

        }

        ImageParticle {
            source: "images/star.png"
            system: particleSystem
            color: '#FFD700'
            colorVariation: 0.2
            rotation: 0
            rotationVariation: 45
            rotationVelocity: 15
            rotationVelocityVariation: 15
            entryEffect: ImageParticle.Scale
        }
    }
}
