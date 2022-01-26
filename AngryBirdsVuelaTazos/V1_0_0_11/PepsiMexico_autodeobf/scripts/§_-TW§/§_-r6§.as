package §_-TW§
{
   import §_-bg§.§_-xF§;
   import §_-uz§.§_-wX§;
   import §_-xN§.§_-WL§;
   import flash.display.MovieClip;
   
   public class §_-r6§ extends §_-WL§
   {
       
      
      private var §_-T9§:§_-wX§;
      
      public function §_-r6§(param1:XML, param2:§_-qq§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-sR§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-sR§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-sR§(§_-DH§,param1.@MouseOver);
         §_-sR§(§_-Yg§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-Jv§)
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
         if(§_-5k§)
         {
            if(param1 == §_-r5§)
            {
               if(this.§_-T9§ != null)
               {
                  this.§_-T9§.stop();
               }
               this.§_-T9§ = §_-xF§.§_-JE§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-T9§.play();
            }
            else if(param1 == §_-GA§)
            {
               if(this.§_-T9§ != null)
               {
                  this.§_-T9§.stop();
               }
               this.§_-T9§ = §_-xF§.§_-JE§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-T9§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
   }
}
