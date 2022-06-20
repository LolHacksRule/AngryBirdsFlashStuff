package §'"6§
{
   import §%!-§.§?l§;
   import §'M§.§"Z§;
   import §,!Q§.§6"n§;
   import §0!s§.AbstractPopup;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §<#o§.§3"3§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §1D§ extends AbstractPopup
   {
      
      public static const ID:String = "TutorialPopup";
       
      
      protected var §&s§:MovieClip;
      
      protected var §0e§:String;
      
      protected var §%#]§:§3"3§;
      
      protected var §4!M§:Boolean;
      
      public function §1D§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§3"3§, param6:Boolean = true)
      {
         super(param1,param2,§?l§.§3m§.Popups.Popup_Tutorial[0],ID);
         this.§0e§ = param4;
         this.§%#]§ = param5;
         this.§4!M§ = param6;
         this.§&s§ = param3;
         this.§&s§.name = "MovieClip_TutorialClip";
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:DisplayObjectContainer = §&!M§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.addChildAt(this.§&s§,_loc1_.numChildren - 1);
         this.§&s§.gotoAndPlay(1);
         if(this.§&s§.ButtonEasterEgg5)
         {
            if(userProgress.§^!^§("1000-5"))
            {
               this.§&s§.ButtonEasterEgg5.visible = false;
            }
            else
            {
               this.§&s§.ButtonEasterEgg5.visible = true;
               this.§&s§.ButtonEasterEgg5.buttonMode = true;
               this.§&s§.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§?"-§);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §&!M§.mClip.getChildByName("Container_Tutorial").visible = true;
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = §&!M§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc3_.removeChild(this.§&s§);
         §&!M§.mClip.getChildByName("Container_Tutorial").visible = false;
         super.hide(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "CLOSE_TUTORIAL":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               dispatchEvent(new §"Z§(§"Z§.CLOSE,this));
         }
      }
      
      private function §?"-§(param1:MouseEvent) : void
      {
         userProgress.§#y§("1000-5");
         this.§&s§.ButtonEasterEgg5.visible = false;
      }
   }
}
