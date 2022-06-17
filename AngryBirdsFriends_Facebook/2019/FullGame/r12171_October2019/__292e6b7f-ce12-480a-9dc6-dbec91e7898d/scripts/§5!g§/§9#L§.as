package §5!g§
{
   import § #j§.§[#=§;
   import § $0§.AbstractPopup;
   import §!L§.§`#u§;
   import §";§.§false§;
   import §3"V§.§ b§;
   import §;#>§.§7!^§;
   import §^"3§.§`$4§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §9#L§ extends AbstractPopup
   {
      
      public static const ID:String = "TutorialPopup";
       
      
      protected var §;"e§:MovieClip;
      
      protected var §`$D§:String;
      
      protected var §-!K§:§[#=§;
      
      protected var §2V§:Boolean;
      
      public function §9#L§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§[#=§, param6:Boolean = true)
      {
         super(param1,param2,§false§.§4#;§.Popups.Popup_Tutorial[0],ID);
         this.§`$D§ = param4;
         this.§-!K§ = param5;
         this.§2V§ = param6;
         this.§;"e§ = param3;
         this.§;"e§.name = "MovieClip_TutorialClip";
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:DisplayObjectContainer = §;#'§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.addChildAt(this.§;"e§,_loc1_.numChildren - 1);
         this.§;"e§.gotoAndPlay(1);
         if(this.§;"e§.ButtonEasterEgg5)
         {
            if(userProgress.§`p§("1000-5"))
            {
               this.§;"e§.ButtonEasterEgg5.visible = false;
            }
            else
            {
               this.§;"e§.ButtonEasterEgg5.visible = true;
               this.§;"e§.ButtonEasterEgg5.buttonMode = true;
               this.§;"e§.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§%t§);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §;#'§.mClip.getChildByName("Container_Tutorial").visible = true;
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = §;#'§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc3_.removeChild(this.§;"e§);
         §;#'§.mClip.getChildByName("Container_Tutorial").visible = false;
         super.hide(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "CLOSE_TUTORIAL":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               dispatchEvent(new §7!^§(§7!^§.CLOSE,this));
         }
      }
      
      private function §%t§(param1:MouseEvent) : void
      {
         userProgress.§0a§("1000-5");
         this.§;"e§.ButtonEasterEgg5.visible = false;
      }
   }
}
