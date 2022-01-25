package §37§
{
   import §%!5§.§7;§;
   import §0i§.§@^§;
   import §3<§.§-2§;
   import §55§.§7!B§;
   import §7! §.§3!<§;
   import §7! §.§4n§;
   
   public class §8!`§
   {
      
      private static var §%n§:Class = §!!&§;
      
      protected static var §>!`§:Array = [];
      
      protected static var §@!p§:Popup = null;
      
      protected static var §0!&§:Boolean = false;
       
      
      public function §8!`§()
      {
         super();
      }
      
      protected static function §=p§(param1:String, param2:§-2§) : void
      {
         var tutorialPopup:§@!N§ = null;
         var birdName:String = param1;
         var currentUIView:§-2§ = param2;
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
            tutorialPopup = new §@!N§(§@^§.§'K§(§%n§),currentUIView,§3!<§.§'!p§(tutorialName,§4n§.§9$§));
         }
         catch(e:Error)
         {
            return;
         }
         §>!`§.push(tutorialPopup);
      }
      
      public static function §]!L§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §-=§())
         {
            §9!_§.§1!?§.§!x§(_loc1_,false);
         }
      }
      
      protected static function §-=§() : Array
      {
         var _loc2_:§7!B§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §7;§.§1h§.slingshot.§!!e§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §<Z§(param1:§-2§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §-=§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§9!_§.§1!?§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §9!_§.§1!?§.§!x§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §=p§(_loc4_,param1);
         }
         if(param2)
         {
            if(§>!`§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §9!_§.§1!?§.saveTutorialSeen(_loc6_);
            }
         }
         §&!k§();
      }
      
      protected static function §&!k§(param1:Boolean = true) : void
      {
         if(§7!5§ == false && §>!`§.length > 0)
         {
            §0!&§ = true;
            §@!p§ = §>!`§.pop();
            §@!p§.open(param1);
            §@!p§.x = §9!_§.§;!+§ / 2;
            §@!p§.y = §9!_§.§]!n§ / 2;
            §@!p§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §2Q§() : void
      {
         if(§7!5§ == true)
         {
            if(§>!`§.length > 0)
            {
               §@!p§.preClose(false);
               §0!&§ = false;
               §&!k§(false);
            }
            else
            {
               §0!&§ = false;
               §@!p§.preClose(true);
            }
         }
      }
      
      public static function get §7!5§() : Boolean
      {
         return §0!&§;
      }
   }
}
