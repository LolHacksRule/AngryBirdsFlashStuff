package §["r§
{
   import §#"H§.§6#T§;
   import §1#W§.§!#&§;
   import §4$<§.§?§;
   import §5"?§.§4"-§;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<#m§.AbstractPopup;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §^"y§ extends AbstractPopup
   {
      
      public static const ID:String = "TutorialPopup";
       
      
      protected var §#§:MovieClip;
      
      protected var §%"2§:String;
      
      protected var §'#s§:§6#T§;
      
      protected var §6#Z§:Boolean;
      
      public function §^"y§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§6#T§, param6:Boolean = true)
      {
         super(param1,param2,§=>§.§%" §.Popups.Popup_Tutorial[0],ID);
         this.§%"2§ = param4;
         this.§'#s§ = param5;
         this.§6#Z§ = param6;
         this.§#§ = param3;
         this.§#§.name = "MovieClip_TutorialClip";
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:DisplayObjectContainer = §1"6§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.addChildAt(this.§#§,_loc1_.numChildren - 1);
         this.§#§.gotoAndPlay(1);
         if(this.§#§.ButtonEasterEgg5)
         {
            if(userProgress.§#!V§("1000-5"))
            {
               this.§#§.ButtonEasterEgg5.visible = false;
            }
            else
            {
               this.§#§.ButtonEasterEgg5.visible = true;
               this.§#§.ButtonEasterEgg5.buttonMode = true;
               this.§#§.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§,#'§);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §1"6§.mClip.getChildByName("Container_Tutorial").visible = true;
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = §1"6§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc3_.removeChild(this.§#§);
         §1"6§.mClip.getChildByName("Container_Tutorial").visible = false;
         super.hide(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "CLOSE_TUTORIAL":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               dispatchEvent(new §?#7§(§?#7§.CLOSE,this));
         }
      }
      
      private function §,#'§(param1:MouseEvent) : void
      {
         userProgress.§%#k§("1000-5");
         this.§#§.ButtonEasterEgg5.visible = false;
      }
   }
}
