package § ""§
{
   import § h§.§-!S§;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import §2$;§.§-$5§;
   import §2$;§.§=!Z§;
   import §9!6§.§## §;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.events.MouseEvent;
   
   public class §-&§ extends AbstractPopup
   {
      
      public static const ID:String = "SlingshotRewardPopup";
      
      public static const §<`§:int = 0;
      
      public static const §if §:int = 1;
      
      public static const §7#9§:int = 0;
      
      public static const §-!-§:int = 1;
      
      public static const §!#y§:int = 2;
      
      public static const §=!C§:Array = [["BouncySling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Gold League and unlocked the Bouncy Sling!"],["DiamondSling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Diamond League and unlocked the Diamond Sling!"]];
       
      
      private var §'!M§:String = "";
      
      private var §8"d§:int;
      
      public function §-&§(param1:String, param2:int)
      {
         this.§'!M§ = param1;
         this.§8"d§ = param2;
         super(§-!S§.§ !^§,§## §.TOP,§&n§.§7a§.Popups.Popup_SlingshotRewardPopup[0],ID + param1);
      }
      
      public static function §%#c§(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         for each(_loc2_ in §=!C§)
         {
            if(_loc2_[§7#9§] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§^#i§ = null;
         super.init();
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§-"D§);
         if(this.§8"d§ == §<`§)
         {
            _loc1_ = 0;
            while(_loc1_ < §=!C§.length)
            {
               if(§=!C§[_loc1_][§7#9§] == this.§'!M§)
               {
                  (§'o§.getItemByName("TextField_Title") as §-$5§).setText(§=!C§[_loc1_][§-!-§]);
                  (§'o§.getItemByName("TextField_Text") as §-$5§).setText(§=!C§[_loc1_][§!#y§]);
               }
               _loc1_++;
            }
         }
         else
         {
            _loc2_ = §[9§.§%"%§(this.§'!M§);
            if(!_loc2_)
            {
               close();
               return;
            }
            (§'o§.getItemByName("TextField_Title") as §-$5§).setText(_loc2_.§[E§);
            (§'o§.getItemByName("TextField_Text") as §-$5§).setText(_loc2_.description);
         }
         (§'o§.getItemByName("MovieClip_ImageRef") as §=!Z§).mClip.gotoAndStop(this.§'!M§);
      }
      
      private function §-"D§(param1:MouseEvent) : void
      {
         super.close();
      }
   }
}
