package §6a§
{
   import §0!Q§.UIComponentInteractiveRovio;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentInteractiveRovio
   {
       
      
      private var §,!C§:§?W§;
      
      public function UIButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §[!5§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §[!5§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §[!5§(§9O§,param1.@MouseOver);
         §[!5§(§!!Q§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §#!K§)
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
         if(§5N§)
         {
            if(param1 == §@=§)
            {
               if(this.§,!C§ != null)
               {
                  this.§,!C§.stop();
               }
               this.§,!C§ = TweenManager.§7!E§.§5§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§,!C§.play();
            }
            else if(param1 == § e§)
            {
               if(this.§,!C§ != null)
               {
                  this.§,!C§.stop();
               }
               this.§,!C§ = TweenManager.§7!E§.§5§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§,!C§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§,!C§)
         {
            this.§,!C§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§,!C§)
         {
            this.§,!C§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
