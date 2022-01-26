package §_-E-§
{
   import §_-Kj§.§_-8u§;
   import §_-PK§.§_-ds§;
   import flash.display.MovieClip;
   import §in §.§_-tX§;
   
   public class §_-Fy§ extends §_-ds§
   {
       
      
      private var §_-YP§:§_-8u§;
      
      public function §_-Fy§(param1:XML, param2:§_-hw§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-Lw§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-Lw§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-Lw§(§_-jr§,param1.@MouseOver);
         §_-Lw§(§_-07§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-Kv§)
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
         if(§_-MP§)
         {
            if(param1 == §_-Tu§)
            {
               if(this.§_-YP§ != null)
               {
                  this.§_-YP§.stop();
               }
               this.§_-YP§ = §_-tX§.§finally§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-YP§.play();
            }
            else if(param1 == §_-kx§)
            {
               if(this.§_-YP§ != null)
               {
                  this.§_-YP§.stop();
               }
               this.§_-YP§ = §_-tX§.§finally§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-YP§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
   }
}
