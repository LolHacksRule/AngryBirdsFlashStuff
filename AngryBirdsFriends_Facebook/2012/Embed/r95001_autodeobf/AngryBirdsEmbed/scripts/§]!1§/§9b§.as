package §]!1§
{
   import §6!,§.§[H§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §9b§ extends Popup
   {
       
      
      private var §]>§:Sprite;
      
      private var §-#§:String;
      
      public function §9b§(param1:XML, param2:§[H§, param3:Sprite, param4:String)
      {
         super(param1,param2);
         this.§-#§ = param4;
         this.setVisibility(false);
         this.§]>§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§]>§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§]>§.height >> 1;
         var _loc5_:Rectangle = this.§]>§.getBounds(this.§]>§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§]>§);
         if(this.§-#§ == "POWERUP_TUTORIAL_SLINGSCOPE")
         {
            if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               mClip.ButtonEasterEgg5.visible = true;
               mClip.ButtonEasterEgg5.buttonMode = true;
               mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§3x§);
            }
         }
         else if(mClip.ButtonEasterEgg5)
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         this.§]>§.x = _loc3_;
         this.§]>§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      private function §3x§(param1:MouseEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
         mClip.ButtonEasterEgg5.visible = false;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§]>§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
