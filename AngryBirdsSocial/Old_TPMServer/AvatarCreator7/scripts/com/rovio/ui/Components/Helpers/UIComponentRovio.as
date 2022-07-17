package com.rovio.ui.Components.Helpers
{
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const COMPONENT_STATE_DEACTIVE:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const VISUAL_STATE_MOUSE_ROLL_OUT:String = "Out";
      
      public static const VISUAL_STATE_MOUSE_ROLL_OVER:String = "Over";
      
      public static const VISUAL_STATE_MOUSE_UP_DEFULT:String = "Up_Default";
      
      public static const VISUAL_STATE_MOUSE_DOWN:String = "Down";
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mComponentName:String;
      
      public var mComponentState:String;
      
      public var mVisualState:String;
      
      public var mActive:Boolean = false;
      
      public var mVisibility:Boolean = true;
      
      public function UIComponentRovio(param1:XML, param2:MovieClip = null)
      {
         var _loc4_:int = 0;
         this.mComponentName = param1.@name;
         if(param2)
         {
            this.mClip = param2;
            addChild(this.mClip);
            this.mParentContainer.mMovieClip.addChild(this);
         }
         else
         {
            this.mClip = this.mParentContainer.mMovieClip.getChildByName(param1.@name) as MovieClip;
            _loc4_ = this.mParentContainer.mMovieClip.getChildIndex(this.mClip);
            addChild(this.mClip);
            this.mParentContainer.mMovieClip.addChildAt(this,_loc4_);
         }
         super(this.mClip);
         this.mComponentState = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.mVisualState = VISUAL_STATE_MOUSE_UP_DEFULT;
         this.goToCorrectFrame();
         var _loc3_:String = param1.@visible;
         if(_loc3_ && _loc3_.toUpperCase() == "FALSE")
         {
            this.setVisibility(false);
         }
         else
         {
            this.setVisibility(true);
         }
         _loc3_ = param1.@enabled;
         if(_loc3_ && _loc3_.toUpperCase() == "FALSE")
         {
            this.setEnabled(false);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         this.mParentContainer.mMovieClip.removeChild(this);
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.mClip = null;
      }
      
      public function setComponentState(param1:String) : void
      {
         this.mComponentState = param1;
         this.goToCorrectFrame();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if((this.mVisualState == VISUAL_STATE_MOUSE_DOWN || this.mVisualState == VISUAL_STATE_MOUSE_ROLL_OVER) && param1 == VISUAL_STATE_MOUSE_ROLL_OVER)
         {
            return;
         }
         this.mVisualState = param1;
         this.goToCorrectFrame();
      }
      
      public function goToCorrectFrame() : void
      {
         if(this.mClip.totalFrames < 2)
         {
            return;
         }
         var frameName:Array = new Array(this.mComponentState + "_" + this.mVisualState,this.mComponentState + "_" + VISUAL_STATE_MOUSE_UP_DEFULT,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.mVisualState,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + VISUAL_STATE_MOUSE_UP_DEFULT);
         var i:int = 0;
         for(; i < frameName.length; i++)
         {
            try
            {
               this.mClip.gotoAndStop(frameName[i] as String);
               if(this.mClip.numChildren > 0)
               {
                  return;
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_DOWN);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_UP_DEFULT);
         }
         if(param1 == LISTENER_EVENT_MOUSE_ROLLOUT)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OUT);
         }
         if(param1 == LISTENER_EVENT_MOUSE_ROLLOVER)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OVER);
         }
         this.mParentContainer.containerEventOccured(param1,param2,this);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.mVisibility = param1;
         visible = this.mVisibility && this.mActive;
         this.mClip.visible = visible;
         if(visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.mActive = param1;
         visible = this.mVisibility && this.mActive;
         this.mClip.visible = visible;
         if(visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         this.mClip.mouseEnabled = param1;
         this.mClip.mouseChildren = param1;
         mouseEnabled = param1;
         mouseChildren = param1;
      }
      
      public function getParentView() : UIView
      {
         return this.mParentContainer.getParentView();
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         super.changeMovieClip(param1);
         var _loc2_:Number = this.mClip.x;
         var _loc3_:Number = this.mClip.y;
         removeChild(this.mClip);
         this.mClip = null;
         this.mClip = param1;
         addChildAt(this.mClip,0);
         this.mClip.x = _loc2_;
         this.mClip.y = _loc3_;
         this.goToCorrectFrame();
      }
   }
}
