package §_-ES§
{
   import §_-9J§.§_-DA§;
   import §_-hx§.§_-Z0§;
   import §_-hx§.§_-lq§;
   import flash.display.MovieClip;
   
   public class §_-Ng§ extends §_-DA§
   {
       
      
      private var §_-pk§:§_-Z0§;
      
      public function §_-Ng§(param1:XML, param2:§_-L8§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-xm§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-xm§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-xm§(§_-QP§,param1.@MouseOver);
         §_-xm§(§_-md§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-La§)
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
         if(§_-k0§)
         {
            if(param1 == §_-2k§)
            {
               if(this.§_-pk§ != null)
               {
                  this.§_-pk§.stop();
               }
               this.§_-pk§ = §_-lq§.§var §.§_-OC§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-pk§.play();
            }
            else if(param1 == §_-mf§)
            {
               if(this.§_-pk§ != null)
               {
                  this.§_-pk§.stop();
               }
               this.§_-pk§ = §_-lq§.§var §.§_-OC§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-pk§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§_-pk§)
         {
            this.§_-pk§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§_-pk§)
         {
            this.§_-pk§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
