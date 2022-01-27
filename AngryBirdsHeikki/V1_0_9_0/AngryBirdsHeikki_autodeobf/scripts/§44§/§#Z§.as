package §44§
{
   import § d§.§=!,§;
   import §#Q§.§8Y§;
   import §0i§.§[K§;
   import §3!§.§-e§;
   import §3!§.§`!Z§;
   import §>!F§.§9!Z§;
   
   public class §#Z§
   {
      
      private static var §]V§:Class = §71§;
      
      private static var §67§:Array = [];
      
      private static var §!'§:§7B§ = null;
      
      private static var §3x§:Boolean = false;
       
      
      public function §#Z§()
      {
         super();
      }
      
      private static function §?!7§(param1:String, param2:§8Y§) : void
      {
         var tutorialPopup:§7B§ = null;
         var birdName:String = param1;
         var currentUIView:§8Y§ = param2;
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
            tutorialPopup = new §7B§(§[K§.§0T§(§]V§),currentUIView,§`!Z§.§6x§(tutorialName,§-e§.§,!U§));
         }
         catch(e:Error)
         {
            return;
         }
         §67§.push(tutorialPopup);
      }
      
      public static function §=!V§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §9!4§())
         {
            §"H§.§""§.§]!W§(_loc1_,false);
         }
      }
      
      private static function §9!4§() : Array
      {
         var _loc2_:§=!,§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §9!Z§.§5!$§.slingshot.§3!R§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §53§(param1:§8Y§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §9!4§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§"H§.§""§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §"H§.§""§.§]!W§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §?!7§(_loc4_,param1);
         }
         if(param2)
         {
            if(§67§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §"H§.§""§.saveTutorialSeen(_loc6_);
            }
         }
         § _§();
      }
      
      private static function § _§(param1:Boolean = true) : void
      {
         if(§+!>§ == false && §67§.length > 0)
         {
            §3x§ = true;
            §!'§ = §67§.pop();
            §!'§.open(param1);
            §!'§.x = §"H§.§38§ / 2;
            §!'§.y = §"H§.§5§ / 2;
            §!'§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §"!U§() : void
      {
         if(§+!>§ == true)
         {
            if(§67§.length > 0)
            {
               §!'§.preClose(false);
               §3x§ = false;
               § _§(false);
            }
            else
            {
               §3x§ = false;
               §!'§.preClose(true);
            }
         }
      }
      
      public static function get §+!>§() : Boolean
      {
         return §3x§;
      }
   }
}
