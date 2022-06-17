package §]$<§
{
   import § O§.§6f§;
   import § O§.§7!S§;
   import §%#v§.§0"j§;
   import §5!$§.§-#j§;
   import §5!$§.§>§;
   import §;$5§.§9§;
   import §;$5§.AbstractPopup;
   import §?!N§.§%#§;
   import flash.events.MouseEvent;
   
   public class §9g§ extends AbstractPopup
   {
      
      public static const ID:String = "SlingshotRewardPopup";
      
      public static const §1"N§:int = 0;
      
      public static const §'H§:int = 1;
      
      public static const §-!J§:int = 0;
      
      public static const §;"Y§:int = 1;
      
      public static const §else§:int = 2;
      
      public static const §,"#§:Array = [["BouncySling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Gold League and unlocked the Bouncy Sling!"],["DiamondSling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Diamond League and unlocked the Diamond Sling!"]];
       
      
      private var §<#G§:String = "";
      
      private var §!!R§:int;
      
      public function §9g§(param1:String, param2:int)
      {
         this.§<#G§ = param1;
         this.§!!R§ = param2;
         super(§%#§.§3t§,§9#5§.TOP,§0"j§.§-i§.Popups.Popup_SlingshotRewardPopup[0],ID + param1);
      }
      
      public static function §9"+§(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         for each(_loc2_ in §,"#§)
         {
            if(_loc2_[§-!J§] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§6f§ = null;
         super.init();
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§>"J§);
         if(this.§!!R§ == §1"N§)
         {
            _loc1_ = 0;
            while(_loc1_ < §,"#§.length)
            {
               if(§,"#§[_loc1_][§-!J§] == this.§<#G§)
               {
                  (§8#Y§.getItemByName("TextField_Title") as §-#j§).setText(§,"#§[_loc1_][§;"Y§]);
                  (§8#Y§.getItemByName("TextField_Text") as §-#j§).setText(§,"#§[_loc1_][§else§]);
               }
               _loc1_++;
            }
         }
         else
         {
            _loc2_ = §7!S§.§%$<§(this.§<#G§);
            if(!_loc2_)
            {
               close();
               return;
            }
            (§8#Y§.getItemByName("TextField_Title") as §-#j§).setText(_loc2_.§[L§);
            (§8#Y§.getItemByName("TextField_Text") as §-#j§).setText(_loc2_.description);
         }
         (§8#Y§.getItemByName("MovieClip_ImageRef") as §>#8§).mClip.gotoAndStop(this.§<#G§);
      }
      
      private function §>"J§(param1:MouseEvent) : void
      {
         super.close();
      }
   }
}
