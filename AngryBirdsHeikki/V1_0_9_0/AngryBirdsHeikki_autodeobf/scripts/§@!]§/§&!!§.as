package §@!]§
{
   import §1Q§.§4p§;
   import §8!-§.§1R§;
   import §8!-§.§2!B§;
   import flash.display.MovieClip;
   
   public class §&!!§ extends §4p§
   {
       
      
      private var §2!0§:§1R§;
      
      public function §&!!§(param1:XML, param2:§'!9§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §1!W§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §1!W§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §1!W§(§[Y§,param1.@MouseOver);
         §1!W§(§ !Y§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §9L§)
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
         if(§#"§)
         {
            if(param1 == §93§)
            {
               if(this.§2!0§ != null)
               {
                  this.§2!0§.stop();
               }
               this.§2!0§ = §2!B§.§,!U§.§%!K§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§2!0§.play();
            }
            else if(param1 == §2p§)
            {
               if(this.§2!0§ != null)
               {
                  this.§2!0§.stop();
               }
               this.§2!0§ = §2!B§.§,!U§.§%!K§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§2!0§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§2!0§)
         {
            this.§2!0§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§2!0§)
         {
            this.§2!0§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
