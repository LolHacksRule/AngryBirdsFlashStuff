package §=!7§
{
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   
   public class §9"8§ extends §>!D§
   {
       
      
      private var §[!>§:§=!r§;
      
      public function §9"8§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §7"'§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §7"'§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §7"'§(§2!-§,param1.@MouseOver);
         §7"'§(§6!;§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §&!j§)
         {
            targetSprite.useHandCursor = false;
            targetSprite.buttonMode = false;
         }
         else
         {
            targetSprite.useHandCursor = true;
            targetSprite.buttonMode = true;
            targetSprite.mouseChildren = false;
         }
         super.setComponentState(param1);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         if(§&!%§)
         {
            if(param1 == §64§)
            {
               if(this.§[!>§ != null)
               {
                  this.§[!>§.stop();
               }
               this.§[!>§ = §7I§.§[E§.§ ";§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§[!>§.play();
            }
            else if(param1 == §3!"§)
            {
               if(this.§[!>§ != null)
               {
                  this.§[!>§.stop();
               }
               this.§[!>§ = §7I§.§[E§.§ ";§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§[!>§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§[!>§)
         {
            this.§[!>§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§[!>§)
         {
            this.§[!>§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
