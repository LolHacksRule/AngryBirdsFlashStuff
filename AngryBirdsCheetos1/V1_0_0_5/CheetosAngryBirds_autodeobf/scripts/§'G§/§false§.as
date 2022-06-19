package §'G§
{
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §-V§.§9d§;
   import flash.display.MovieClip;
   
   public class §false§ extends §9d§
   {
       
      
      private var §+!M§:§3!$§;
      
      public function §false§(param1:XML, param2:§%!%§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §=a§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §=a§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §=a§(§91§,param1.@MouseOver);
         §=a§(§'8§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §^#§)
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
         if(§'!;§)
         {
            if(param1 == §^!'§)
            {
               if(this.§+!M§ != null)
               {
                  this.§+!M§.stop();
               }
               this.§+!M§ = §4N§.§-!U§.§5!N§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§+!M§.play();
            }
            else if(param1 == §%^§)
            {
               if(this.§+!M§ != null)
               {
                  this.§+!M§.stop();
               }
               this.§+!M§ = §4N§.§-!U§.§5!N§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§+!M§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§+!M§)
         {
            this.§+!M§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§+!M§)
         {
            this.§+!M§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
