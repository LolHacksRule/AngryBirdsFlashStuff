package §,!C§
{
   import §4!A§.§#b§;
   import §4!A§.§7#§;
   import §@-§.§ x§;
   import flash.display.MovieClip;
   
   public class §?!C§ extends § x§
   {
       
      
      private var §,!T§:§#b§;
      
      public function §?!C§(param1:XML, param2:§-6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §=!N§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §=!N§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §=!N§(§?-§,param1.@MouseOver);
         §=!N§(§5O§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §;g§)
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
         if(§7<§)
         {
            if(param1 == §#!F§)
            {
               if(this.§,!T§ != null)
               {
                  this.§,!T§.stop();
               }
               this.§,!T§ = §7#§.§5!!§.§30§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§,!T§.play();
            }
            else if(param1 == §10§)
            {
               if(this.§,!T§ != null)
               {
                  this.§,!T§.stop();
               }
               this.§,!T§ = §7#§.§5!!§.§30§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§,!T§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§,!T§)
         {
            this.§,!T§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§,!T§)
         {
            this.§,!T§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
