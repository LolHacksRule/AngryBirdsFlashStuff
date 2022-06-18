package §?>§
{
   import §"Z§.§-N§;
   import §"Z§.§5!2§;
   import §7'§.§'q§;
   import flash.display.MovieClip;
   
   public class §!&§ extends §'q§
   {
       
      
      private var §'p§:§5!2§;
      
      public function §!&§(param1:XML, param2:§ !V§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §,O§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §,O§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §,O§(§=4§,param1.@MouseOver);
         §,O§(§9!6§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §,%§)
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
         if(§2!?§)
         {
            if(param1 == §1"§)
            {
               if(this.§'p§ != null)
               {
                  this.§'p§.stop();
               }
               this.§'p§ = §-N§.§<?§.§,!D§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§'p§.play();
            }
            else if(param1 == §4!B§)
            {
               if(this.§'p§ != null)
               {
                  this.§'p§.stop();
               }
               this.§'p§ = §-N§.§<?§.§,!D§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§'p§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§'p§)
         {
            this.§'p§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§'p§)
         {
            this.§'p§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
