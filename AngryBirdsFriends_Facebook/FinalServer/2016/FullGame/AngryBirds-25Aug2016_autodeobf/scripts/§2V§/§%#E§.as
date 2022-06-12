package §2V§
{
   import §+!d§.§&b§;
   import §+!d§.§3§;
   import §6"r§.§="T§;
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §?"R§.§[W§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class §%#E§ extends AbstractPopup
   {
      
      public static const ID:String = "SlingshotRewardPopup";
      
      public static const § !F§:int = 0;
      
      public static const §'!r§:int = 1;
      
      public static const §-!E§:int = 0;
      
      public static const §2#8§:int = 1;
      
      public static const §8!b§:int = 2;
      
      public static const § !B§:Array = [["BouncySling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Gold League and unlocked the Bouncy Sling!"],["DiamondSling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Diamond League and unlocked the Diamond Sling!"]];
       
      
      private var §8"<§:String = "";
      
      private var §,6§:int;
      
      public function §%#E§(param1:String, param2:int)
      {
         this.§8"<§ = param1;
         this.§,6§ = param2;
         super(§[W§.§5Z§,§<d§.TOP,§@#`§.§#!c§.Popups.Popup_SlingshotRewardPopup[0],ID + param1);
      }
      
      public static function §[F§(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         for each(_loc2_ in § !B§)
         {
            if(_loc2_[§-!E§] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§&b§ = null;
         super.init();
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="R§);
         if(this.§,6§ == § !F§)
         {
            _loc1_ = 0;
            while(_loc1_ < § !B§.length)
            {
               if(§ !B§[_loc1_][§-!E§] == this.§8"<§)
               {
                  (§7!j§.getItemByName("TextField_Title") as §]$!§).setText(§ !B§[_loc1_][§2#8§]);
                  (§7!j§.getItemByName("TextField_Text") as §]$!§).setText(§ !B§[_loc1_][§8!b§]);
               }
               _loc1_++;
            }
         }
         else
         {
            _loc2_ = §3#8§.§6#o§(this.§8"<§);
            if(!_loc2_)
            {
               close();
               return;
            }
            (§7!j§.getItemByName("TextField_Title") as §]$!§).setText(_loc2_.§["u§);
            (§7!j§.getItemByName("TextField_Text") as §]$!§).setText(_loc2_.description);
         }
         (§7!j§.getItemByName("MovieClip_ImageRef") as §="T§).mClip.gotoAndStop(this.§8"<§);
      }
      
      private function §="R§(param1:MouseEvent) : void
      {
         super.close();
      }
   }
}
