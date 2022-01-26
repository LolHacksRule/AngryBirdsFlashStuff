package §_-58§
{
   import §_-He§.§_-05§;
   import §_-J-§.§_-BT§;
   import §_-LP§.§_-PH§;
   import flash.display.MovieClip;
   
   public class §_-8c§ extends §_-BT§
   {
       
      
      private var §_-NP§:§_-PH§;
      
      public function §_-8c§(param1:XML, param2:§_-WC§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-yv§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-yv§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-yv§(§_-ZE§,param1.@MouseOver);
         §_-yv§(§_-CK§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-aM§)
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
         if(§const§)
         {
            if(param1 == §_-vB§)
            {
               if(this.§_-NP§ != null)
               {
                  this.§_-NP§.stop();
               }
               this.§_-NP§ = §_-05§.§_-Yr§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-NP§.play();
            }
            else if(param1 == §_-si§)
            {
               if(this.§_-NP§ != null)
               {
                  this.§_-NP§.stop();
               }
               this.§_-NP§ = §_-05§.§_-Yr§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-NP§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
   }
}
