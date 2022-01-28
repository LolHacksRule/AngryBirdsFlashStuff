package §_-Ll§
{
   import §_-7V§.§_-LB§;
   import §_-cJ§.§_-WM§;
   import §_-cJ§.§_-xx§;
   import flash.display.MovieClip;
   
   public class §_-FU§ extends §_-LB§
   {
       
      
      private var §_-SN§:§_-WM§;
      
      public function §_-FU§(param1:XML, param2:§_-4G§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-7S§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-7S§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-7S§(§_-V4§,param1.@MouseOver);
         §_-7S§(§_-ya§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-BL§)
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
         if(§_-nC§)
         {
            if(param1 == §_-6G§)
            {
               if(this.§_-SN§ != null)
               {
                  this.§_-SN§.stop();
               }
               this.§_-SN§ = §_-xx§.§_-uP§.§_-Vb§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-SN§.play();
            }
            else if(param1 == §_-S7§)
            {
               if(this.§_-SN§ != null)
               {
                  this.§_-SN§.stop();
               }
               this.§_-SN§ = §_-xx§.§_-uP§.§_-Vb§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-SN§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§_-SN§)
         {
            this.§_-SN§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§_-SN§)
         {
            this.§_-SN§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
