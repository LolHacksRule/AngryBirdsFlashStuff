package §20§
{
   import §"!I§.§94§;
   import §9b§.§"!S§;
   import §<u§.§]!Q§;
   import §=!<§.§>a§;
   import §=!<§.§`[§;
   import §@R§.set;
   
   public class §-Z§
   {
      
      private static var §>^§:Class = §^!T§;
      
      private static var §-!Q§:Array = [];
      
      private static var §>!0§:§3!$§ = null;
      
      private static var §4C§:Boolean = false;
       
      
      public function §-Z§()
      {
         super();
      }
      
      private static function §=V§(param1:String, param2:§]!Q§) : void
      {
         var tutorialPopup:§3!$§ = null;
         var birdName:String = param1;
         var currentUIView:§]!Q§ = param2;
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
            tutorialPopup = new §3!$§(set.§=!^§(§>^§),currentUIView,§`[§.§ !G§(tutorialName,§>a§.§ s§));
         }
         catch(e:Error)
         {
            return;
         }
         §-!Q§.push(tutorialPopup);
      }
      
      public static function §8G§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §>!f§())
         {
            §,L§.§8!F§.§&0§(_loc1_,false);
         }
      }
      
      private static function §>!f§() : Array
      {
         var _loc2_:§94§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §"!S§.§-!7§.slingshot.§2!A§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §0;§(param1:§]!Q§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §>!f§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§,L§.§8!F§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §,L§.§8!F§.§&0§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §=V§(_loc4_,param1);
         }
         if(param2)
         {
            if(§-!Q§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §,L§.§8!F§.saveTutorialSeen(_loc6_);
            }
         }
         §!!4§();
      }
      
      private static function §!!4§(param1:Boolean = true) : void
      {
         if(§ !6§ == false && §-!Q§.length > 0)
         {
            §4C§ = true;
            §>!0§ = §-!Q§.pop();
            §>!0§.open(param1);
            §>!0§.x = §,L§.§1'§ / 2;
            §>!0§.y = §,L§.§!!d§ / 2;
            §>!0§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §5P§() : void
      {
         if(§ !6§ == true)
         {
            if(§-!Q§.length > 0)
            {
               §>!0§.preClose(false);
               §4C§ = false;
               §!!4§(false);
            }
            else
            {
               §4C§ = false;
               §>!0§.preClose(true);
            }
         }
      }
      
      public static function get § !6§() : Boolean
      {
         return §4C§;
      }
   }
}
