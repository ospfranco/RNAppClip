/**
 * @format
 */

import React from 'react';
import {AppRegistry, View, Text} from 'react-native';

const AppClip = () => (
  <View
    style={{
      justifyContent: 'center',
      alignItems: 'center',
      marginTop: 50,
    }}>
    <Text
      style={{
        fontSize: 40,
        margin: 10,
        textAlign: 'center',
      }}>
      Hello,
    </Text>
    <Text
      style={{
        fontSize: 20,
        margin: 10,
        textAlign: 'center',
      }}>
      I'm your AppClip!
    </Text>
  </View>
);

AppRegistry.registerComponent('clip', () => AppClip);
