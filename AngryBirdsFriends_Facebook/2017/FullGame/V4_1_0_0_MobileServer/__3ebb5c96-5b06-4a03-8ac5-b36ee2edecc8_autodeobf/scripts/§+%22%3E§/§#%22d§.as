package §+">§
{
   import § o§.§%"!§;
   import §%#A§.§'=§;
   import §%#A§.§^!4§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import flash.events.MouseEvent;
   
   public class §#"d§ extends AbstractPopup
   {
      
      public static const ID:String = "SlingshotRewardPopup";
      
      public static const §#@§:int = 0;
      
      public static const §^!,§:int = 1;
      
      public static const §9#F§:int = 0;
      
      public static const §0#6§:int = 1;
      
      public static const §`V§:int = 2;
      
      public static const §@"M§:Array = [["BouncySling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Gold League and unlocked the Bouncy Sling!"],["DiamondSling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Diamond League and unlocked the Diamond Sling!"]];
       
      
      private var §+"'§:String = "";
      
      private var §2#_§:int;
      
      public function §#"d§(param1:String, param2:int)
      {
         this.§+"'§ = param1;
         this.§2#_§ = param2;
         super(§%"!§.§4!P§,§^#o§.TOP,§=>§.§%" §.Popups.Popup_SlingshotRewardPopup[0],ID + param1);
      }
      
      public static function §7""§(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         for each(_loc2_ in §@"M§)
         {
            if(_loc2_[§9#F§] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§6!u§ = null;
         super.init();
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§]2§);
         if(this.§2#_§ == §#@§)
         {
            _loc1_ = 0;
            while(_loc1_ < §@"M§.length)
            {
               if(§@"M§[_loc1_][§9#F§] == this.§+"'§)
               {
                  (§1"6§.getItemByName("TextField_Title") as §^!4§).setText(§@"M§[_loc1_][§0#6§]);
                  (§1"6§.getItemByName("TextField_Text") as §^!4§).setText(§@"M§[_loc1_][§`V§]);
               }
               _loc1_++;
            }
         }
         else
         {
            _loc2_ = §7"G§.§-o§(this.§+"'§);
            if(!_loc2_)
            {
               close();
               return;
            }
            (§1"6§.getItemByName("TextField_Title") as §^!4§).setText(_loc2_.§,!&§);
            (§1"6§.getItemByName("TextField_Text") as §^!4§).setText(_loc2_.description);
         }
         (§1"6§.getItemByName("MovieClip_ImageRef") as §'=§).mClip.gotoAndStop(this.§+"'§);
      }
      
      private function §]2§(param1:MouseEvent) : void
      {
         super.close();
      }
   }
}
