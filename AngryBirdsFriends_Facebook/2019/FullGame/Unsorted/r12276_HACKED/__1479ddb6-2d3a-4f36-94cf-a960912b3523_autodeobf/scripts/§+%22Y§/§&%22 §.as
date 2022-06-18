package §+"Y§
{
   import § "v§.§4$4§;
   import §-"S§.§>#G§;
   import §5"l§.§0!b§;
   import §9!6§.AbstractPopup;
   import §<8§.§8!g§;
   import §[#A§.§&n§;
   import §`!u§.§-"w§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §&" § extends AbstractPopup
   {
      
      public static const ID:String = "TutorialPopup";
       
      
      protected var §!#p§:MovieClip;
      
      protected var §3! §:String;
      
      protected var §!"c§:§-"w§;
      
      protected var §#R§:Boolean;
      
      public function §&" §(param1:int, param2:int, param3:MovieClip, param4:String, param5:§-"w§, param6:Boolean = true)
      {
         super(param1,param2,§&n§.§7a§.Popups.Popup_Tutorial[0],ID);
         this.§3! § = param4;
         this.§!"c§ = param5;
         this.§#R§ = param6;
         this.§!#p§ = param3;
         this.§!#p§.name = "MovieClip_TutorialClip";
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:DisplayObjectContainer = §'o§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.addChildAt(this.§!#p§,_loc1_.numChildren - 1);
         this.§!#p§.gotoAndPlay(1);
         if(this.§!#p§.ButtonEasterEgg5)
         {
            if(userProgress.§3"^§("1000-5"))
            {
               this.§!#p§.ButtonEasterEgg5.visible = false;
            }
            else
            {
               this.§!#p§.ButtonEasterEgg5.visible = true;
               this.§!#p§.ButtonEasterEgg5.buttonMode = true;
               this.§!#p§.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§=#H§);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §'o§.mClip.getChildByName("Container_Tutorial").visible = true;
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = §'o§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc3_.removeChild(this.§!#p§);
         §'o§.mClip.getChildByName("Container_Tutorial").visible = false;
         super.hide(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "CLOSE_TUTORIAL":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               dispatchEvent(new §0!b§(§0!b§.CLOSE,this));
         }
      }
      
      private function §=#H§(param1:MouseEvent) : void
      {
         userProgress.§9#0§("1000-5");
         this.§!#p§.ButtonEasterEgg5.visible = false;
      }
   }
}
