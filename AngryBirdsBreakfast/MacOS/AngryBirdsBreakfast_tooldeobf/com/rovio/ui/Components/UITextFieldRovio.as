package com.rovio.ui.Components
{
   import com.rovio.utils.TextFieldColor;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.events.UIInteractionEvent;
   import fl.text.TLFTextField;
   import flash.text.TextField;
   
   public class UITextFieldRovio extends UIComponentInteractiveRovio
   {
       
      
      public var mTextField:Object;
      
      private var mTextFieldColor:TextFieldColor = null;
      
      public function UITextFieldRovio(param1:XML, param2:UIContainerRovio)
      {
         super(param1,param2);
         if(mClip.getChildByName("text") is TLFTextField)
         {
            this.mTextField = mClip.getChildByName("text") as TLFTextField;
         }
         else
         {
            this.mTextField = mClip.getChildByName("text") as TextField;
         }
         if(param1.@text)
         {
            this.setText(param1.@text);
         }
         if(param1.@tabIndex)
         {
            this.mTextField.tabIndex = param1.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
         if(this.mTextField)
         {
            this.mTextField.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : UIInteractionEvent
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function setText(param1:String) : void
      {
         if(this.mTextField.text != param1)
         {
            this.mTextField.text = param1;
         }
      }
      
      public function getText() : String
      {
         return this.mTextField.text;
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.mTextFieldColor)
         {
            this.mTextFieldColor.dispose();
            this.mTextFieldColor = null;
         }
         this.mTextField = null;
      }
   }
}
