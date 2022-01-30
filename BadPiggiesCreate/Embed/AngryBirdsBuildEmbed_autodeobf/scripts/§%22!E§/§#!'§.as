package §"!E§
{
   import §#!4§.§<f§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import flash.display.MovieClip;
   
   public class §#!'§ extends §<f§
   {
       
      
      private var §?x§:§0Y§;
      
      public function §#!'§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §<!k§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §<!k§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §<!k§(§`"§,param1.@MouseOver);
         §<!k§(§<H§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §!`§)
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
         if(§-!c§)
         {
            if(param1 == §8!U§)
            {
               if(this.§?x§ != null)
               {
                  this.§?x§.stop();
               }
               this.§?x§ = §@!T§.§`!t§.§8!"§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§?x§.play();
            }
            else if(param1 == §@5§)
            {
               if(this.§?x§ != null)
               {
                  this.§?x§.stop();
               }
               this.§?x§ = §@!T§.§`!t§.§8!"§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§?x§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§?x§)
         {
            this.§?x§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§?x§)
         {
            this.§?x§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
