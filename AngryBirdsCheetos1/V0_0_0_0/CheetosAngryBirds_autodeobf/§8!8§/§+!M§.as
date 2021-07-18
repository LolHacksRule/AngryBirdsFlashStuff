package §8!8§
{
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §@R§.§<d§;
   import flash.display.MovieClip;
   
   public class §+!M§ extends §<d§
   {
       
      
      private var §%!%§:§3!$§;
      
      public function §+!M§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §?^§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §?^§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §?^§(§'8§,param1.@MouseOver);
         §?^§(§@!$§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §%^§)
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
         if(§ ^§)
         {
            if(param1 == §,]§)
            {
               if(this.§%!%§ != null)
               {
                  this.§%!%§.stop();
               }
               this.§%!%§ = §4N§.§!!L§.§5!N§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§%!%§.play();
            }
            else if(param1 == §^!'§)
            {
               if(this.§%!%§ != null)
               {
                  this.§%!%§.stop();
               }
               this.§%!%§ = §4N§.§!!L§.§5!N§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§%!%§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§%!%§)
         {
            this.§%!%§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§%!%§)
         {
            this.§%!%§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
