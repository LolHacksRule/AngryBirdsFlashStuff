package §7r§
{
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.Popup;
   import com.rovio.assets.§8B§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §@M§ extends Popup
   {
       
      
      private var §8"7§:Sprite;
      
      private var §=!O§:String;
      
      public function §@M§(param1:XML, param2:§7!A§, param3:String)
      {
         super(param1,param2);
         this.§=!O§ = param3;
         var _loc4_:Class;
         var _loc5_:Sprite = new (_loc4_ = §8B§.§6"C§(param3))();
         this.setVisibility(false);
         this.§8"7§ = _loc5_;
         this.§8"7§.mouseChildren = false;
         this.§8"7§.mouseEnabled = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         _loc3_.addChild(this.§8"7§);
         if(this.§=!O§ == "POWERUP_TUTORIAL_SLINGSCOPE")
         {
            if((AngryBirdsFP11.sUserProgress as §[<§).§6M§("1000-5"))
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               mClip.ButtonEasterEgg5.visible = true;
               mClip.ButtonEasterEgg5.buttonMode = true;
               mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§,"D§);
            }
         }
         else if(mClip.ButtonEasterEgg5)
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      private function §,"D§(param1:MouseEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §[<§).§`"3§("1000-5");
         mClip.ButtonEasterEgg5.visible = false;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         _loc3_.removeChild(this.§8"7§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
