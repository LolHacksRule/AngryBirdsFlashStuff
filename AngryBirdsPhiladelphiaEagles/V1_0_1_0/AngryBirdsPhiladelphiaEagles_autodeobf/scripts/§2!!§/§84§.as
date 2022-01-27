package §2!!§
{
   import §]!O§.§+[§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §84§ extends Popup
   {
       
      
      private var §9h§:Sprite;
      
      private var §`!P§:String;
      
      public function §84§(param1:XML, param2:§+[§, param3:Sprite, param4:String)
      {
         super(param1,param2);
         this.§`!P§ = param4;
         this.setVisibility(false);
         this.§9h§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§9h§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§9h§.height >> 1;
         var _loc5_:Rectangle = this.§9h§.getBounds(this.§9h§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§9h§);
         if(this.§`!P§ == "POWERUP_TUTORIAL_SLINGSCOPE")
         {
            if((AngryBirdsFP11.§ ;§ as Object).isEggUnlocked("1000-5"))
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               mClip.ButtonEasterEgg5.visible = true;
               mClip.ButtonEasterEgg5.buttonMode = true;
               mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§'P§);
            }
         }
         else if(mClip.ButtonEasterEgg5)
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         this.§9h§.x = _loc3_;
         this.§9h§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      private function §'P§(param1:MouseEvent) : void
      {
         (AngryBirdsFP11.§ ;§ as Object).setEggUnlocked("1000-5");
         mClip.ButtonEasterEgg5.visible = false;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§9h§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
