### Imports
import tensorflow as tf
import numpy as np
import json
import sys
import matplotlib.pyplot as plt

### Charger le réseau de neurones
load_model = tf.keras.models.load_model("neural_network.h5")

### Charger l'image
image=sys.argv[1]
img= plt.imread(image)
img = img[:,:,1] #on prend qu'un canal
img = img.reshape(784,)

### prévoir la classe de l'image
predict = [img]
predict = np.array(predict)
prediction = load_model.predict(predict)
classes = np.argmax(prediction, axis = 1)

print(classes)

### Mettre sous format JSON 
fileName = "classe.json"
jsonString = str(classes)
jsonString = json.loads(jsonString)

file = open(fileName, "w")
json.dump(jsonString, file)
file.close()