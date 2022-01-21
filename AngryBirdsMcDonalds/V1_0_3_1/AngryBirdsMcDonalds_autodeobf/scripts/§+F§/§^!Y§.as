package §+F§
{
   import § !%§.§6%§;
   import § !%§.§7!>§;
   import § !Y§.§2#§;
   import §3!@§.§^!c§;
   import §3g§.§"!n§;
   import §5K§.§1[§;
   
   public class §^!Y§
   {
      
      private static var §@2§:Class = §8!6§;
      
      protected static var §5!J§:Array = [];
      
      protected static var §4$§:Popup = null;
      
      protected static var §"!L§:Boolean = false;
       
      
      public function §^!Y§()
      {
         super();
      }
      
      protected static function §<!6§(param1:String, param2:§"!n§) : void
      {
         var tutorialPopup:§>!h§ = null;
         var birdName:String = param1;
         var currentUIView:§"!n§ = param2;
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
            case "BIRD_REDBIG":
               tutorialName = "TUTORIAL_BIG_BROTHER";
               break;
            case "BIRD_SARDINE":
               tutorialName = "TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               return;
         }
         try
         {
            tutorialPopup = new §>!h§(§1[§.§4L§(§@2§),currentUIView,§6%§.§7A§(tutorialName,§7!>§.§@!7§));
         }
         catch(e:Error)
         {
            return;
         }
         §5!J§.push(tutorialPopup);
      }
      
      public static function §-`§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §[!"§())
         {
            §2!M§.§&!#§.§"c§(_loc1_,false);
         }
      }
      
      protected static function §[!"§() : Array
      {
         var _loc2_:§^!c§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §2#§.§"@§.slingshot.§0n§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §'!h§(param1:§"!n§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §[!"§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§2!M§.§&!#§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §2!M§.§&!#§.§"c§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §<!6§(_loc4_,param1);
         }
         if(param2)
         {
            if(§5!J§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §2!M§.§&!#§.saveTutorialSeen(_loc6_);
            }
         }
         §`"§();
      }
      
      protected static function §`"§(param1:Boolean = true) : void
      {
         if(§,!=§ == false && §5!J§.length > 0)
         {
            §"!L§ = true;
            §4$§ = §5!J§.pop();
            §4$§.open(param1);
            §4$§.x = §2!M§.§[!V§ / 2;
            §4$§.y = §2!M§.§#k§ / 2;
            §4$§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §^!g§() : void
      {
         if(§,!=§ == true)
         {
            if(§5!J§.length > 0)
            {
               §4$§.preClose(false);
               §"!L§ = false;
               §`"§(false);
            }
            else
            {
               §"!L§ = false;
               §4$§.preClose(true);
            }
         }
      }
      
      public static function get §,!=§() : Boolean
      {
         return §"!L§;
      }
   }
}
