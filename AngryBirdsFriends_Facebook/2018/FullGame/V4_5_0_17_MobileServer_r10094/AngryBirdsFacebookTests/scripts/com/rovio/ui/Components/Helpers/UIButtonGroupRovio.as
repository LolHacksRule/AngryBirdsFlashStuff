package com.rovio.ui.Components.Helpers
{
   import com.rovio.ui.Components.UIButtonRovio;
   
   public class UIButtonGroupRovio
   {
      
      public static const TYPE_EXCLUSIVE_BUTTONS:int = 0;
      
      public static const TYPE_NO_SELECTION:int = 1;
      
      public static const TYPE_MULTI_SELECTION:int = 2;
       
      
      public var mButtons:Array;
      
      public var mMultiSelectionCount:int;
      
      public var mType:int;
      
      public var mName:String;
      
      public var mLastSelectedButtonName:String;
      
      public function UIButtonGroupRovio(newType:int, newName:String)
      {
         super();
         this.mType = newType;
         this.mName = newName;
         this.mButtons = new Array();
      }
      
      public function addButton(newButton:UIButtonRovio) : void
      {
         if(!newButton)
         {
            return;
         }
         this.mButtons[this.mButtons.length] = newButton;
      }
      
      public function buttonSelected(name:String) : void
      {
         var i:int = 0;
         var j:int = 0;
         this.mLastSelectedButtonName = name;
         var upperCaseName:String = name.toUpperCase();
         if(this.mType == TYPE_EXCLUSIVE_BUTTONS)
         {
            for(i = 0; i < this.mButtons.length; i++)
            {
               if((this.mButtons[i] as UIButtonRovio).upperCaseName == upperCaseName)
               {
                  (this.mButtons[i] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.mButtons[i] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.mButtons[i] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
               }
            }
         }
         if(this.mType == TYPE_MULTI_SELECTION)
         {
            for(i = 0; i < this.mButtons.length; i++)
            {
               if((this.mButtons[i] as UIButtonRovio).upperCaseName == upperCaseName)
               {
                  if((this.mButtons[i] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.mButtons[i] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
                  }
                  else if((this.mButtons[i] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE)
                  {
                     if(this.getCurrentSelection().length < this.mMultiSelectionCount)
                     {
                        (this.mButtons[i] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.getCurrentSelection().length >= this.mMultiSelectionCount)
               {
                  for(j = 0; j < this.mButtons.length; j++)
                  {
                     if((this.mButtons[j] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE)
                     {
                        (this.mButtons[j] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
                     }
                  }
               }
               else
               {
                  for(j = 0; j < this.mButtons.length; j++)
                  {
                     if((this.mButtons[j] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED)
                     {
                        (this.mButtons[j] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
                     }
                  }
               }
            }
         }
      }
      
      public function setEnabled(enabled:Boolean, affectChildren:Boolean = false) : void
      {
         for(var i:int = 0; i < this.mButtons.length; i++)
         {
            (this.mButtons[i] as UIButtonRovio).setEnabled(enabled,affectChildren);
         }
      }
      
      public function resetSelections() : void
      {
         for(var i:int = 0; i < this.mButtons.length; i++)
         {
            (this.mButtons[i] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
         }
      }
      
      public function setNumSelectable(selectableNum:Number) : void
      {
         this.mMultiSelectionCount = selectableNum;
         if(selectableNum == 1)
         {
            this.mType = TYPE_EXCLUSIVE_BUTTONS;
         }
         else
         {
            this.mType = TYPE_MULTI_SELECTION;
         }
      }
      
      public function setSelections(selections:Array) : void
      {
         this.resetSelections();
         for(var i:int = 0; i < selections.length; i++)
         {
            this.buttonSelected(selections[i]);
         }
      }
      
      public function getCurrentSelection() : Array
      {
         var selected:Array = new Array();
         for(var i:int = 0; i < this.mButtons.length; i++)
         {
            if((this.mButtons[i] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               selected.push((this.mButtons[i] as UIButtonRovio).name);
            }
         }
         return selected;
      }
   }
}
