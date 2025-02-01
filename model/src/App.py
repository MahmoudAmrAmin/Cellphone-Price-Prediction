import streamlit as st
import pandas as pd
import joblib
import os
import warnings
warnings.filterwarnings('ignore')

def load_resources():   

    scaler = joblib.load(r'M:\Data science career\Project\model\workspace\scaler.pkl')
    
    model = joblib.load(r'M:\Data science career\Project\model\workspace\rf_model.pkl')
    
    return  scaler, model

def main():
    st.title('Prediction Phone Price')

    
    scaler, model = load_resources()

    
    input_data = {}
    
    
    
    FCam_query = st.text_input('Modify front cam pixels')
   
    input_data['Front_Cam'] = st.number_input('Front Camera Pixels', min_value=0, value=100)
    input_data['RearCam'] = st.number_input('Rear Camera Pixels', min_value=0, value=10)
    input_data['ram'] = st.number_input('Mobile phone Ram', min_value=0, value=512)
    input_data['battery'] = st.number_input('Phone Battery', min_value=0.0, value=10000.0)
    input_data['internal mem'] = st.number_input('Phone Internal Memory', min_value=1,value=10000)


    input_df = pd.DataFrame([input_data])

    
    numerical_cols = ['internal mem', 'battery']
    input_df[numerical_cols] = scaler.transform(input_df[numerical_cols])

    if st.button('Predict price'):
        input_df = input_df.reindex(columns=model.feature_names_in_, fill_value=0)
        prediction = model.predict(input_df)
        st.success(f'Predicted phone Price is: {prediction[0]:.2f}')

        

if __name__ == '__main__':
    main()