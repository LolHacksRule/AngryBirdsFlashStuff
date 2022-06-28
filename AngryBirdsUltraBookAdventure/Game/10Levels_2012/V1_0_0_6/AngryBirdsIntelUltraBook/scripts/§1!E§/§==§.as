package §1!E§
{
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §>7§.§4+§;
   import flash.display.MovieClip;
   
   public class §==§ extends §4+§
   {
       
      
      private var §,a§:§!q§;
      
      public function §==§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §-?§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §-?§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §-?§(§"!n§,param1.@MouseOver);
         §-?§(§^v§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == § !M§)
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
         if(§3x§)
         {
            if(param1 == §9!C§)
            {
               if(this.§,a§ != null)
               {
                  this.§,a§.stop();
               }
               this.§,a§ = §-!,§.§7!j§.§,!`§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§,a§.play();
            }
            else if(param1 == §>&§)
            {
               if(this.§,a§ != null)
               {
                  this.§,a§.stop();
               }
               this.§,a§ = §-!,§.§7!j§.§,!`§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§,a§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§,a§)
         {
            this.§,a§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§,a§)
         {
            this.§,a§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
