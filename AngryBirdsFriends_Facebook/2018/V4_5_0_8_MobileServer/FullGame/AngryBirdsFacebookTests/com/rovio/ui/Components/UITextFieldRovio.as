package com.rovio.ui.Components
{
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.utils.TextFieldColor;
   import flash.text.TextField;
   
   public class UITextFieldRovio extends UIComponentInteractiveRovio
   {
       
      
      public var mTextField:TextField;
      
      private var mTextFieldColor:TextFieldColor = null;
      
      public function UITextFieldRovio(data:XML, parentContainer:UIContainerRovio)
      {
         super(data,parentContainer);
         this.mTextField = mClip.getChildByName("text") as TextField;
         if(data.@text)
         {
            this.setText(data.@text);
         }
         if(data.@tabIndex)
         {
            this.mTextField.tabIndex = data.@tabIndex;
         }
         if(!mClip.mouseEnabled)
         {
            this.setEnabled(mClip.mouseEnabled);
         }
      }
      
      override public function setEnabled(enabled:Boolean, affectChildren:Boolean = false) : void
      {
         super.setEnabled(enabled,affectChildren);
         if(this.mTextField)
         {
            this.mTextField.mouseEnabled = mClip.mouseEnabled;
         }
      }
      
      override public function listenerUIEventOccured(eventIndex:int, eventName:String) : UIInteractionEvent
      {
         return super.listenerUIEventOccured(eventIndex,eventName);
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
         if(this.mTextFieldColor)
         {
            this.mTextFieldColor.dispose();
            this.mTextFieldColor = null;
         }
         this.mTextField = null;
      }
      
      public function setTextColor(textColor:uint, selectedTextColor:uint, selectedTextBgColor:uint) : void
      {
         this.mTextFieldColor = new TextFieldColor(this.mTextField,textColor,selectedTextColor,selectedTextBgColor);
      }
      
      public function clearTextColor() : void
      {
         this.mTextFieldColor.dispose();
         this.mTextFieldColor = null;
      }
   }
}
