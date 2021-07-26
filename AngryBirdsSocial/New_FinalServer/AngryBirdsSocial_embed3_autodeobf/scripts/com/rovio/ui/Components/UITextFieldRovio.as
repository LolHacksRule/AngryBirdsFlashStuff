package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import flash.text.TextField;
   
   public class UITextFieldRovio extends UIComponentInteractiveRovio
   {
       
      
      public var mTextField:TextField;
      
      public function UITextFieldRovio(data:XML, parentContainer:UIContainerRovio)
      {
         super(data,parentContainer);
         this.mTextField = mClip.getChildByName("text") as TextField;
         if(data.@text)
         {
            this.setText(data.@text);
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(enabled:Boolean) : void
      {
         super.setEnabled(enabled);
         if(this.mTextField)
         {
            this.mTextField.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String) : void
      {
         super.listenerEventOccured(eventIndex,eventName);
      }
      
      public function setText(newText:String) : void
      {
         this.mTextField.text = newText;
      }
      
      public function getText() : String
      {
         return this.mTextField.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         this.mTextField = null;
      }
   }
}
