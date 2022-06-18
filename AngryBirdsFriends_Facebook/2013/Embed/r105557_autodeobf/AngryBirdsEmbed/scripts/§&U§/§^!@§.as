package §&U§
{
   import §1t§.§-!M§;
   import §@q§.§+!B§;
   import §@q§.§6;§;
   import flash.display.MovieClip;
   
   public class §^!@§ extends §-!M§
   {
       
      
      private var §`9§:§+!B§;
      
      public function §^!@§(param1:XML, param2:§05§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         targetSprite.buttonMode = true;
         targetSprite.mouseChildren = false;
         targetSprite.tabEnabled = false;
         §+m§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         §+m§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         §+m§(§0!>§,param1.@MouseOver);
         §+m§(§8!9§,param1.@MouseOut);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      override public function setComponentState(param1:String) : void
      {
         if(param1 == §,!-§)
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
         if(§#b§)
         {
            if(param1 == §-!K§)
            {
               if(this.§`9§ != null)
               {
                  this.§`9§.stop();
               }
               this.§`9§ = §6;§.§&e§.§42§(mClip,{
                  "scaleX":1.1,
                  "scaleY":1.1
               },null,0.1);
               this.§`9§.play();
            }
            else if(param1 == §5[§)
            {
               if(this.§`9§ != null)
               {
                  this.§`9§.stop();
               }
               this.§`9§ = §6;§.§&e§.§42§(mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.1);
               this.§`9§.play();
            }
         }
         super.setComponentVisualState(param1);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§`9§)
         {
            this.§`9§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§`9§)
         {
            this.§`9§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
