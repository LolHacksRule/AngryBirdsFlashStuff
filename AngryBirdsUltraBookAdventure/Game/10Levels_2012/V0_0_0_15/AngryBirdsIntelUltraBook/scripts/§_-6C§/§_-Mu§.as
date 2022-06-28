package §_-6C§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-MN§.§_-rR§;
   import flash.display.MovieClip;
   
   public class §_-Mu§ extends §_-rR§
   {
       
      
      private var §_-iN§:§_-dd§;
      
      public function §_-Mu§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-Ay§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-Ay§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-Ay§(§_-0-Q§,param1.@MouseOver);
         §_-Ay§(§_-09A§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-K1§)
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
         if(§_-pb§)
         {
            if(param1 == §_-01m§)
            {
               if(this.§_-iN§ != null)
               {
                  this.§_-iN§.stop();
               }
               this.§_-iN§ = §_-cx§.§_-3S§.§_-Wf§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-iN§.play();
            }
            else if(param1 == §_-k0§)
            {
               if(this.§_-iN§ != null)
               {
                  this.§_-iN§.stop();
               }
               this.§_-iN§ = §_-cx§.§_-3S§.§_-Wf§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-iN§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§_-iN§)
         {
            this.§_-iN§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§_-iN§)
         {
            this.§_-iN§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
