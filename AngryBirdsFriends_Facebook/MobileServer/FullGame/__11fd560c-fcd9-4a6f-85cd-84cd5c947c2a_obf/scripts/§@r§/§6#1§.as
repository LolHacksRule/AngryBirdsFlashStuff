package §@r§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §<h§.§%M§;
   import §<h§.§@N§;
   import §?P§.§]"$§;
   import flash.events.MouseEvent;
   
   public class §6#1§ extends AbstractPopup
   {
      
      public static const ID:String = "SlingshotRewardPopup";
      
      public static const §[[§:int = 0;
      
      public static const §3!G§:int = 1;
      
      public static const §3!>§:int = 0;
      
      public static const §=R§:int = 1;
      
      public static const §;!w§:int = 2;
      
      public static const §[#9§:Array = [["BouncySling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Gold League and unlocked the Bouncy Sling!"],["DiamondSling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Diamond League and unlocked the Diamond Sling!"]];
       
      
      private var §!#3§:String = "";
      
      private var §7!P§:int;
      
      public function §6#1§(param1:String, param2:int)
      {
         this.§!#3§ = param1;
         this.§7!P§ = param2;
         super(§]"$§.§[#=§,§^"U§.TOP,§1Q§.§5T§.Popups.Popup_SlingshotRewardPopup[0],ID + param1);
      }
      
      public static function §!!U§(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         for each(_loc2_ in §[#9§)
         {
            if(_loc2_[§3!>§] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§'#v§ = null;
         super.init();
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§-"F§);
         if(this.§7!P§ == §[[§)
         {
            _loc1_ = 0;
            while(_loc1_ < §[#9§.length)
            {
               if(§[#9§[_loc1_][§3!>§] == this.§!#3§)
               {
                  (§,#2§.getItemByName("TextField_Title") as §%M§).setText(§[#9§[_loc1_][§=R§]);
                  (§,#2§.getItemByName("TextField_Text") as §%M§).setText(§[#9§[_loc1_][§;!w§]);
               }
               _loc1_++;
            }
         }
         else
         {
            _loc2_ = §4"c§.§2;§(this.§!#3§);
            if(!_loc2_)
            {
               close();
               return;
            }
            (§,#2§.getItemByName("TextField_Title") as §%M§).setText(_loc2_.§9§);
            (§,#2§.getItemByName("TextField_Text") as §%M§).setText(_loc2_.description);
         }
         (§,#2§.getItemByName("MovieClip_ImageRef") as §@N§).mClip.gotoAndStop(this.§!#3§);
      }
      
      private function §-"F§(param1:MouseEvent) : void
      {
         super.close();
      }
   }
}
