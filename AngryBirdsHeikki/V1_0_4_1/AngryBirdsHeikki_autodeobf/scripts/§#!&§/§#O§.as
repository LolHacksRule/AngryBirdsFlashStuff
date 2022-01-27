package §#!&§
{
   import §6-§.§"H§;
   import §6-§.§%1§;
   import flash.display.MovieClip;
   import §var§.§8!_§;
   
   public class §#O§ extends §8!_§
   {
       
      
      private var §>i§:§%1§;
      
      public function §#O§(param1:XML, param2:§59§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §?!N§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §?!N§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §?!N§(§@M§,param1.@MouseOver);
         §?!N§(§%%§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §4Z§)
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
         if(§6!I§)
         {
            if(param1 == §=!1§)
            {
               if(this.§>i§ != null)
               {
                  this.§>i§.stop();
               }
               this.§>i§ = §"H§.§'![§.§8Y§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§>i§.play();
            }
            else if(param1 == §7!,§)
            {
               if(this.§>i§ != null)
               {
                  this.§>i§.stop();
               }
               this.§>i§ = §"H§.§'![§.§8Y§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§>i§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§>i§)
         {
            this.§>i§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§>i§)
         {
            this.§>i§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
