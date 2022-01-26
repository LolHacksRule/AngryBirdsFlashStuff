package §_-of§
{
   import §_-Ys§.§_-TM§;
   import §_-ZI§.§_-Vu§;
   import §_-c7§.§_-m8§;
   import flash.display.MovieClip;
   
   public class §_-Yk§ extends §_-TM§
   {
       
      
      private var §_-q5§:§_-Vu§;
      
      public function §_-Yk§(param1:XML, param2:§_-H4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-1W§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-1W§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-1W§(§_-GB§,param1.@MouseOver);
         §_-1W§(§_-UA§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-wD§)
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
         if(§_-Xt§)
         {
            if(param1 == §_-9b§)
            {
               if(this.§_-q5§ != null)
               {
                  this.§_-q5§.stop();
               }
               this.§_-q5§ = §_-m8§.§_-Y8§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-q5§.play();
            }
            else if(param1 == §_-VJ§)
            {
               if(this.§_-q5§ != null)
               {
                  this.§_-q5§.stop();
               }
               this.§_-q5§ = §_-m8§.§_-Y8§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-q5§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
   }
}
