package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import flash.text.TextField;
   
   public class UITextFieldRovio extends UIComponentRovio
   {
       
      
      public var mTextField:TextField;
      
      public function UITextFieldRovio(param1:XML, param2:UIContainerRovio)
      {
         mParentContainer = param2;
         super(param1);
         this.mTextField = mClip.getChildByName("text") as TextField;
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
         if(this.mTextField)
         {
            this.mTextField.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         this.mTextField.text = param1;
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
