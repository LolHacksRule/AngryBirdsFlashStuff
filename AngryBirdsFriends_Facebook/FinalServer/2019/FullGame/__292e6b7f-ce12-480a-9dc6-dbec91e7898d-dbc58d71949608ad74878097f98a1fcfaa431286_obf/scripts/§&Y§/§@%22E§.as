package §&Y§
{
   import § "L§.§"!A§;
   import § "L§.§7`§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §+!Y§.§3!B§;
   import §+!Y§.§[@§;
   import §?Q§.§@#D§;
   import flash.events.MouseEvent;
   
   public class §@"E§ extends AbstractPopup
   {
      
      public static const ID:String = "SlingshotRewardPopup";
      
      public static const §!!?§:int = 0;
      
      public static const §>J§:int = 1;
      
      public static const §&"`§:int = 0;
      
      public static const §]A§:int = 1;
      
      public static const §#F§:int = 2;
      
      public static const §]e§:Array = [["BouncySling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Gold League and unlocked the Bouncy Sling!"],["DiamondSling","Slingshot Unlocked!","Congratulations!\n\nYou have reached Diamond League and unlocked the Diamond Sling!"]];
       
      
      private var §+1§:String = "";
      
      private var §1#C§:int;
      
      public function §@"E§(param1:String, param2:int)
      {
         this.§+1§ = param1;
         this.§1#C§ = param2;
         super(§@#D§.§,"4§,§5R§.TOP,§false§.§4#;§.Popups.Popup_SlingshotRewardPopup[0],ID + param1);
      }
      
      public static function §4k§(param1:String) : Boolean
      {
         var _loc2_:Array = null;
         for each(_loc2_ in §]e§)
         {
            if(_loc2_[§&"`§] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§3!B§ = null;
         super.init();
         §;#'§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§+"O§);
         if(this.§1#C§ == §!!?§)
         {
            _loc1_ = 0;
            while(_loc1_ < §]e§.length)
            {
               if(§]e§[_loc1_][§&"`§] == this.§+1§)
               {
                  (§;#'§.getItemByName("TextField_Title") as §7`§).setText(§]e§[_loc1_][§]A§]);
                  (§;#'§.getItemByName("TextField_Text") as §7`§).setText(§]e§[_loc1_][§#F§]);
               }
               _loc1_++;
            }
         }
         else
         {
            _loc2_ = §[@§.§[#P§(this.§+1§);
            if(!_loc2_)
            {
               close();
               return;
            }
            (§;#'§.getItemByName("TextField_Title") as §7`§).setText(_loc2_.§"l§);
            (§;#'§.getItemByName("TextField_Text") as §7`§).setText(_loc2_.description);
         }
         (§;#'§.getItemByName("MovieClip_ImageRef") as §"!A§).mClip.gotoAndStop(this.§+1§);
      }
      
      private function §+"O§(param1:MouseEvent) : void
      {
         super.close();
      }
   }
}
