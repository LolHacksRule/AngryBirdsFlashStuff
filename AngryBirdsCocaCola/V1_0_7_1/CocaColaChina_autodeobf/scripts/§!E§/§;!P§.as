package §!E§
{
   import §2!$§.§#!K§;
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   import flash.display.MovieClip;
   
   public class §;!P§ extends §#!K§
   {
       
      
      private var §`;§:§3!2§;
      
      public function §;!P§(param1:XML, param2:§-!%§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         if(mClip)
         {
            mClip.buttonMode = true;
            mClip.mouseChildren = false;
            mClip.tabEnabled = false;
         }
         §7]§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §7]§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7]§(§+!0§,param1.@MouseOver);
         §7]§(§"!4§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §3H§)
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
         if(§7!A§)
         {
            if(param1 == §@!W§)
            {
               if(this.§`;§ != null)
               {
                  this.§`;§.stop();
               }
               this.§`;§ = §!!K§.§'!C§.§'!H§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§`;§.play();
            }
            else if(param1 == §-![§)
            {
               if(this.§`;§ != null)
               {
                  this.§`;§.stop();
               }
               this.§`;§ = §!!K§.§'!C§.§'!H§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§`;§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§`;§)
         {
            this.§`;§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§`;§)
         {
            this.§`;§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
