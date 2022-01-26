package §_-hf§
{
   import §_-12§.§_-7l§;
   import §_-Jx§.§_-Tc§;
   import §_-Qn§.§_-AG§;
   import flash.display.MovieClip;
   
   public class §_-6o§ extends §_-Tc§
   {
       
      
      private var §_-sl§:§_-7l§;
      
      public function §_-6o§(param1:XML, param2:§_-WL§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-E2§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-E2§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-E2§(§_-Qy§,param1.@MouseOver);
         §_-E2§(§_-S8§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-9Z§)
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
         if(§_-EO§)
         {
            if(param1 == §_-dg§)
            {
               if(this.§_-sl§ != null)
               {
                  this.§_-sl§.stop();
               }
               this.§_-sl§ = §_-AG§.§_-aI§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-sl§.play();
            }
            else if(param1 == §_-bG§)
            {
               if(this.§_-sl§ != null)
               {
                  this.§_-sl§.stop();
               }
               this.§_-sl§ = §_-AG§.§_-aI§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-sl§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§_-sl§)
         {
            this.§_-sl§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§_-sl§)
         {
            this.§_-sl§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
