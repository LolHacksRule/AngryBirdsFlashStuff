package §]c§
{
   import § !Y§.§if§;
   import §+D§.§">§;
   import §1!K§.§=t§;
   import §3-§.§1L§;
   import §`!H§.§7!B§;
   import §`!H§.§@!E§;
   
   public class §>g§
   {
      
      private static var §4!Q§:Class = §4!<§;
      
      private static var §>Y§:Array = [];
      
      private static var §,<§:§[l§ = null;
      
      private static var §%;§:Boolean = false;
       
      
      public function §>g§()
      {
         super();
      }
      
      private static function §;$§(param1:String, param2:§if§) : void
      {
         var tutorialPopup:§[l§ = null;
         var birdName:String = param1;
         var currentUIView:§if§ = param2;
         var tutorialName:String = "";
         switch(birdName)
         {
            case "BIRD_BLACK":
               tutorialName = "TUTORIAL_BLACK";
               break;
            case "BIRD_BLUE":
               tutorialName = "TUTORIAL_BLUE";
               break;
            case "BIRD_RED":
               tutorialName = "TUTORIAL_RED";
               break;
            case "BIRD_WHITE":
               tutorialName = "TUTORIAL_WHITE";
               break;
            case "BIRD_YELLOW":
               tutorialName = "TUTORIAL_YELLOW";
               break;
            case "BIRD_GREEN":
               tutorialName = "TUTORIAL_BOOMERANG";
               break;
            case "BIRD_REDBIG_HEIKKI":
               tutorialName = "TUTORIAL_HEIKKI_POWER";
               break;
            case "BIRD_SARDINE":
               tutorialName = "TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               return;
         }
         try
         {
            tutorialPopup = new §[l§(§=t§.§1X§(§4!Q§),currentUIView,§7!B§.§81§(tutorialName,§@!E§.§;!F§));
         }
         catch(e:Error)
         {
            return;
         }
         §>Y§.push(tutorialPopup);
      }
      
      public static function §!;§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §4U§())
         {
            §,-§.§?+§.§!!7§(_loc1_,false);
         }
      }
      
      private static function §4U§() : Array
      {
         var _loc2_:§">§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §1L§.§"f§.slingshot.§>_§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §6i§(param1:§if§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §4U§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§,-§.§?+§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §,-§.§?+§.§!!7§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §;$§(_loc4_,param1);
         }
         if(param2)
         {
            if(§>Y§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §,-§.§?+§.saveTutorialSeen(_loc6_);
            }
         }
         §#>§();
      }
      
      private static function §#>§(param1:Boolean = true) : void
      {
         if(§]!$§ == false && §>Y§.length > 0)
         {
            §%;§ = true;
            §,<§ = §>Y§.pop();
            §,<§.open(param1);
            §,<§.x = §,-§.§ for§ / 2;
            §,<§.y = §,-§.§[S§ / 2;
            §,<§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §7!U§() : void
      {
         if(§]!$§ == true)
         {
            if(§>Y§.length > 0)
            {
               §,<§.preClose(false);
               §%;§ = false;
               §#>§(false);
            }
            else
            {
               §%;§ = false;
               §,<§.preClose(true);
            }
         }
      }
      
      public static function get §]!$§() : Boolean
      {
         return §%;§;
      }
   }
}
