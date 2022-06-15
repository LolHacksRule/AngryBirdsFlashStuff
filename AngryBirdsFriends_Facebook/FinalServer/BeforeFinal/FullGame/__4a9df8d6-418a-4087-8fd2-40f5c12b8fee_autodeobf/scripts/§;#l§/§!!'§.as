package §;#l§
{
   import §#,§.§'!`§;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §>z§.§#"l§;
   import flash.events.MouseEvent;
   
   public class §!!'§ extends AbstractPopup
   {
      
      public static const ID:String = "SlingshotRewardPopup";
      
      public static const §@"V§:int = 0;
      
      public static const §!w§:int = 1;
      
      public static const §]$1§:int = 0;
      
      public static const §`!§:int = 1;
      
      public static const §;#V§:int = 2;
      
      public static const §1"c§:Array = [["BouncySling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Gold League and unlocked the Bouncy Sling!"],["DiamondSling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Diamond League and unlocked the Diamond Sling!"]];
       
      
      private var §="F§:String = "";
      
      private var §<H§:int;
      
      public function §!!'§(param1:String, param2:int)
      {
         this.§="F§ = param1;
         this.§<H§ = param2;
         super(§#"l§.§?!b§,§]"Y§.TOP,§?l§.§3m§.Popups.Popup_SlingshotRewardPopup[0],ID + param1);
      }
      
      public static function §#!?§(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         for each(_loc2_ in §1"c§)
         {
            if(_loc2_[§]$1§] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§ $<§ = null;
         super.init();
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§-!b§);
         if(this.§<H§ == §@"V§)
         {
            _loc1_ = 0;
            while(_loc1_ < §1"c§.length)
            {
               if(§1"c§[_loc1_][§]$1§] == this.§="F§)
               {
                  (§&!M§.getItemByName("TextField_Title") as §`"$§).setText(§1"c§[_loc1_][§`!§]);
                  (§&!M§.getItemByName("TextField_Text") as §`"$§).setText(§1"c§[_loc1_][§;#V§]);
               }
               _loc1_++;
            }
         }
         else
         {
            _loc2_ = §0$@§.§"P§(this.§="F§);
            if(!_loc2_)
            {
               close();
               return;
            }
            (§&!M§.getItemByName("TextField_Title") as §`"$§).setText(_loc2_.§ #=§);
            (§&!M§.getItemByName("TextField_Text") as §`"$§).setText(_loc2_.description);
         }
         (§&!M§.getItemByName("MovieClip_ImageRef") as §'!`§).mClip.gotoAndStop(this.§="F§);
      }
      
      private function §-!b§(param1:MouseEvent) : void
      {
         super.close();
      }
   }
}
