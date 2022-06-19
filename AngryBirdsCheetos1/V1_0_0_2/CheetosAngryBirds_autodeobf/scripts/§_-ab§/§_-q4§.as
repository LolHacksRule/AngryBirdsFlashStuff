package §_-ab§
{
   import §_-A§.§_-YT§;
   import §_-jV§.§_-GL§;
   import §_-jV§.§_-mI§;
   import flash.display.MovieClip;
   
   public class §_-q4§ extends §_-YT§
   {
       
      
      private var §_-wc§:§_-GL§;
      
      public function §_-q4§(param1:XML, param2:§_-IP§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-vq§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-vq§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-vq§(§_-M7§,param1.@MouseOver);
         §_-vq§(§_-xl§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-39§)
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
         if(§_-sy§)
         {
            if(param1 == §_-dN§)
            {
               if(this.§_-wc§ != null)
               {
                  this.§_-wc§.stop();
               }
               this.§_-wc§ = §_-mI§.§_-0H§.§_-cb§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-wc§.play();
            }
            else if(param1 == §_-MW§)
            {
               if(this.§_-wc§ != null)
               {
                  this.§_-wc§.stop();
               }
               this.§_-wc§ = §_-mI§.§_-0H§.§_-cb§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-wc§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§_-wc§)
         {
            this.§_-wc§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§_-wc§)
         {
            this.§_-wc§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
