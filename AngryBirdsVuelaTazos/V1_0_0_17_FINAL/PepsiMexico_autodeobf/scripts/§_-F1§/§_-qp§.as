package §_-F1§
{
   import §_-20§.§_-j5§;
   import §_-6r§.§_-h3§;
   import §_-mD§.§_-29§;
   import flash.display.MovieClip;
   
   public class §_-qp§ extends §_-h3§
   {
       
      
      private var §_-Ia§:§_-j5§;
      
      public function §_-qp§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-q3§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-q3§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-q3§(§_-Ek§,param1.@MouseOver);
         §_-q3§(§_-6q§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-By§)
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
         if(§_-uD§)
         {
            if(param1 == §_-pm§)
            {
               if(this.§_-Ia§ != null)
               {
                  this.§_-Ia§.stop();
               }
               this.§_-Ia§ = §_-29§.§_-NW§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-Ia§.play();
            }
            else if(param1 == §_-Wy§)
            {
               if(this.§_-Ia§ != null)
               {
                  this.§_-Ia§.stop();
               }
               this.§_-Ia§ = §_-29§.§_-NW§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-Ia§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§_-Ia§)
         {
            this.§_-Ia§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§_-Ia§)
         {
            this.§_-Ia§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
