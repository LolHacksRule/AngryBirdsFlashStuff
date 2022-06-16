package com.rovio.ui.Components
{
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   
   public class UIComponentFactory
   {
      
      public static var containerClass:Class = UIContainerRovio;
      
      public static var repeaterClass:Class = UIRepeaterRovio;
      
      public static var buttonClass:Class = UIButtonRovio;
      
      public static var textFieldClass:Class = UITextFieldRovio;
      
      public static var movieClipClass:Class = UIMovieClipRovio;
      
      public static var popupClass:Class = UIPopUpRovio;
      
      public static var sliderClass:Class = UISliderRovio;
       
      
      public function UIComponentFactory()
      {
         super();
      }
      
      public static function createContainer(data:XML, parent:UIContainerRovio, view:UIView, clip:MovieClip = null) : UIContainerRovio
      {
         return new containerClass(data,parent,view,clip);
      }
      
      public static function createRepeater(data:XML, parent:UIContainerRovio, view:UIView, clip:MovieClip = null) : UIRepeaterRovio
      {
         return new repeaterClass(data,parent,view,clip);
      }
      
      public static function createButton(data:XML, parent:UIContainerRovio) : UIButtonRovio
      {
         return new buttonClass(data,parent);
      }
      
      public static function createTextField(data:XML, parent:UIContainerRovio) : UITextFieldRovio
      {
         return new textFieldClass(data,parent);
      }
      
      public static function createMovieClip(data:XML, parent:UIContainerRovio) : UIMovieClipRovio
      {
         return new movieClipClass(data,parent);
      }
      
      public static function createPopup(data:XML, parent:UIContainerRovio) : UIPopUpRovio
      {
         return new popupClass(data,parent);
      }
      
      public static function createSlider(data:XML, parent:UIContainerRovio) : UISliderRovio
      {
         return new sliderClass(data,parent);
      }
   }
}
