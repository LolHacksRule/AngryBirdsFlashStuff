package §'!F§
{
   import §&!b§.§2!L§;
   import §+!]§.§!,§;
   import §+!]§.§9+§;
   import §-!f§.§ else§;
   import §8O§.§&#§;
   import §9!'§.§91§;
   
   public class §6!_§
   {
      
      private static var §!!5§:Class = §"h§;
      
      private static var §2u§:Array = [];
      
      private static var §,I§:§',§ = null;
      
      private static var §#K§:Boolean = false;
       
      
      public function §6!_§()
      {
         super();
      }
      
      private static function §8]§(param1:String, param2:§ else§) : void
      {
         var tutorialPopup:§',§ = null;
         var birdName:String = param1;
         var currentUIView:§ else§ = param2;
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
            tutorialPopup = new §',§(§2!L§.§-!7§(§!!5§),currentUIView,§9+§.§-![§(tutorialName,§!,§.§?! §));
         }
         catch(e:Error)
         {
            return;
         }
         §2u§.push(tutorialPopup);
      }
      
      public static function §`!C§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §8!S§())
         {
            §"!R§.§0!P§.§&z§(_loc1_,false);
         }
      }
      
      private static function §8!S§() : Array
      {
         var _loc2_:§91§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §&#§.§3!D§.slingshot.§5&§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §with§(param1:§ else§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §8!S§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§"!R§.§0!P§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §"!R§.§0!P§.§&z§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §8]§(_loc4_,param1);
         }
         if(param2)
         {
            if(§2u§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §"!R§.§0!P§.saveTutorialSeen(_loc6_);
            }
         }
         §;H§();
      }
      
      private static function §;H§(param1:Boolean = true) : void
      {
         if(§3!G§ == false && §2u§.length > 0)
         {
            §#K§ = true;
            §,I§ = §2u§.pop();
            §,I§.open(param1);
            §,I§.x = §"!R§.§-m§ / 2;
            §,I§.y = §"!R§.§1l§ / 2;
            §,I§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §=y§() : void
      {
         if(§3!G§ == true)
         {
            if(§2u§.length > 0)
            {
               §,I§.preClose(false);
               §#K§ = false;
               §;H§(false);
            }
            else
            {
               §#K§ = false;
               §,I§.preClose(true);
            }
         }
      }
      
      public static function get §3!G§() : Boolean
      {
         return §#K§;
      }
   }
}
