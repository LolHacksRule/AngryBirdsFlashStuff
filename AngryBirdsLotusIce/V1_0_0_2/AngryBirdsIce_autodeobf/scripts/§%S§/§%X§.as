package §%S§
{
   import §+N§.§!j§;
   import §+N§.§]G§;
   import flash.display.MovieClip;
   import §in§.§9c§;
   
   public class §%X§ extends §9c§
   {
       
      
      private var §-L§:§]G§;
      
      public function §%X§(param1:XML, param2:§,1§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §]o§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §]o§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §]o§(§9S§,param1.@MouseOver);
         §]o§(§54§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §@<§)
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
         if(§%!@§)
         {
            if(param1 == §'!§)
            {
               if(this.§-L§ != null)
               {
                  this.§-L§.stop();
               }
               this.§-L§ = §!j§.§5!B§.§+I§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§-L§.play();
            }
            else if(param1 == §8s§)
            {
               if(this.§-L§ != null)
               {
                  this.§-L§.stop();
               }
               this.§-L§ = §!j§.§5!B§.§+I§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§-L§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§-L§)
         {
            this.§-L§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§-L§)
         {
            this.§-L§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
