package §_-Eg§
{
   import §_-16§.§_-8n§;
   import §_-9s§.§_-Vc§;
   import §_-9s§.§_-db§;
   import flash.display.MovieClip;
   
   public class §_-hf§ extends §_-8n§
   {
       
      
      private var §_-Mo§:§_-Vc§;
      
      public function §_-hf§(param1:XML, param2:§_-Up§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §_-jo§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §_-jo§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §_-jo§(§_-jw§,param1.@MouseOver);
         §_-jo§(§_-Gu§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §_-uX§)
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
         if(§_-im§)
         {
            if(param1 == §_-rC§)
            {
               if(this.§_-Mo§ != null)
               {
                  this.§_-Mo§.stop();
               }
               this.§_-Mo§ = §_-db§.§_-yU§.§_-mZ§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§_-Mo§.play();
            }
            else if(param1 == §_-ns§)
            {
               if(this.§_-Mo§ != null)
               {
                  this.§_-Mo§.stop();
               }
               this.§_-Mo§ = §_-db§.§_-yU§.§_-mZ§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§_-Mo§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§_-Mo§)
         {
            this.§_-Mo§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§_-Mo§)
         {
            this.§_-Mo§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
