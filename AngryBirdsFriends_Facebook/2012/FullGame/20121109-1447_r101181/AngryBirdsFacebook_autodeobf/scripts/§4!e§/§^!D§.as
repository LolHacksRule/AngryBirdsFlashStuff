package §4!e§
{
   import §2!i§.§=!&§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import flash.display.MovieClip;
   
   public class §^!D§ extends §=!&§
   {
       
      
      private var §,<§:§"m§;
      
      public function §^!D§(param1:XML, param2:§08§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §@!L§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §@!L§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §@!L§(§'!f§,param1.@MouseOver);
         §@!L§(§`!k§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §-N§)
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
         if(§,7§)
         {
            if(param1 == §+4§)
            {
               if(this.§,<§ != null)
               {
                  this.§,<§.stop();
               }
               this.§,<§ = §>!+§.§;"§.§^!K§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§,<§.play();
            }
            else if(param1 == §="?§)
            {
               if(this.§,<§ != null)
               {
                  this.§,<§.stop();
               }
               this.§,<§ = §>!+§.§;"§.§^!K§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§,<§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§,<§)
         {
            this.§,<§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§,<§)
         {
            this.§,<§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
