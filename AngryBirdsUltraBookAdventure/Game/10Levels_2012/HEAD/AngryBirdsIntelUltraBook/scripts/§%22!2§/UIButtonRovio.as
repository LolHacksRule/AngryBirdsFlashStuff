package §"!2§
{
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentInteractiveRovio
   {
       
      
      private var § !^§:§9h§;
      
      public function UIButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §?o§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §?o§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §?o§(§"!H§,param1.@MouseOver);
         §?o§(§2!O§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §,a§)
         {
            mClip.useHandCursor = false;
            mClip.buttonMode = false;
         }
         else
         {
            mClip.useHandCursor = true;
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
         }
         super.setComponentState(param1);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(§3q§)
         {
            if(param1 == §@!a§)
            {
               if(this.§ !^§ != null)
               {
                  this.§ !^§.stop();
               }
               this.§ !^§ = TweenManager.§&!'§.§3L§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§ !^§.play();
            }
            else if(param1 == §1>§)
            {
               if(this.§ !^§ != null)
               {
                  this.§ !^§.stop();
               }
               this.§ !^§ = TweenManager.§&!'§.§3L§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§ !^§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§ !^§)
         {
            this.§ !^§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§ !^§)
         {
            this.§ !^§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
