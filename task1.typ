#import "@preview/wordometer:0.1.1": word-count, total-words

#align(center, text(20pt)[
  *Low Cost Multi-Modal Fire Detection using Computer Vision & mmWave Radar*
])

#align(center, text(17pt)[
  Task 1: Preliminary Research
])

#align(center, text(14pt)[
  Ashwin Rajesh - 14259321
])

#set heading(numbering: "1.a")
#show link: underline
#show link: set text(blue)
#show cite: set text(maroon)
#show: word-count

#outline()
#pagebreak()


= Introduction

Wildfires pose a significant threat to humans, wildlife and the environment alike. Left unchecked, A wildfire can spread rapidly causing large scale destruction to forests & infrastructure, as well as releasing large amounts of pollutants into the atmosphere. Therefore, it has become increasingly crucial to detect them as early as possible. This report aims to explore strategies to optimise early wildfire detection through combining multiple sensors to achieve a multi-modal system. Existing methods of fire detection using sensor nodes are compared to advanced systems utilising a computer vision model. A potential detection method through the use of FMCW millimeter-wave radars is also explored. Through comparison of different systems, this paper aims to explore how early wildfire detection can be optimised by combining computer vision and mmWave radar scanning to form a low cost multi-modal detection system.

= Traditional Sensor Nodes

A selection of low power sensors can be placed at high risk locations that can monitor temperature, humidity and other characteristics of air in the surrounding area. These systems generally use a microcontroller to operate sensors, relying on solar cells for long-term power. By setting up multiple such nodes in different areas forming a Wireless Sensor Network (WSN), the collected sensor data may then be analyzed to determine the locations of fire events @MohapatraAnkita2022EWDT. More advance methods of data classification with the use of artificial neural networks boast a high accuracy of >82% with multiple sensors @wsnfire.

The low cost of WSN systems has made it an increasingly popular choice for real-time monitoring of forest fires. However, sensor nodes fail to be viable in some situations. Establishing wireless communications for a WSN can prove challenging in rural or untamed areas such as forests @Talaat2023. The sensor nodes may also be prone to damage from the wildfire, needing to be replaced in order to continue using the system. 

#figure(
  image("sensornode.png", width: 60%),
  caption: [Basic operation of WSNs. Images sourced from Creative Commons, following the
guidelines on Attribution 3.0 Unported, CC By 3.0],
) <sn>

= Computer Vision Fire Detection

Deep learning techniques such as Convolutional neural networks have shown promising results in fire and smoke detection tasks. Talaat et al. (2023) proposes a Smart fire detection system using the YOLOv8 detection model. This allows for fast and precise edge computation on a system that is capable of processing video streams. The article claims that deep learning techniques can improve the accuracy of fire detection compared to traditional sensor nodes, while being cost-effective by using low cost hardware @Talaat2023. A computer vision based system offers significantly further range compared to sensor nodes, as cameras with a large field of view can be strategically placed to maximise visibility at high risk locations.

#figure(
  image("compvis.png", width: 25%),
  caption: [YOLOv5 computer vision model detecting smoke & fire],
) <cv>

= mmWave Radar Detection

Millimeter wave radars use short-wavelength electromagnetic waves to transmit signals that objects in their path can rflect. The radar system can determine characteristics such as range and angle of objects. An article by Wu et al. (2023) outlines the advancements in single and multiple object tracking using short range mmWave radar, highlighting the maturity of single object tracking systems. Although a large portion of the research is focused on human subjects, the article suggests that object tracking methodologies could apply to targets that are dissimiliar to humans. A method of tracking is detailed where data from the radar in point cloud form is passed through stages that progressively classifies the data to achieve a continuously tracked object. Data is passed through a static noise removal stage, after which a clustering algorithm such as DBSCAN is used to identify the centroids in the point cloud data, which will eliminate false positives @kaimmwave. Finally, a track is found for each object across continuous frames using a Kalman filter. 

It is possible that such a system may be used to track wildfires accurately. A study analyzing the influence of fires on electromagnetic waves shows that changes in chemical composition can be easily detected with FMCW radar sensors @mmwavesensingfire. This could provide valuable tracking information about wildfires that other systems can not provide, potentially enabling predictions of the direction and intensity of the wildfire.

= Conclusion

The research articles explored above indicate that a multi-modal system for early wildfire detection is a feasible and low cost system that could improve upon existing systems with larger range and lower costs. By augmenting computer vision with a innovative approach to fire detection using mmWave radar, crucial information regarding wildfire location, direction and intensity can be rapidly detected, allowing for response teams to act faster and minimise devastation to society. 


#bibliography("ref.bib", style: "apa")
