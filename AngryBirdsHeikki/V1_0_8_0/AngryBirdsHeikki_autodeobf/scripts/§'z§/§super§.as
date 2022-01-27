package §'z§
{
   import § !3§.§[a§;
   import §#!+§.§"$§;
   import §#!T§.§&2§;
   import §2z§.§]'§;
   import §]!C§.§0!d§;
   import §]!C§.§@!0§;
   
   public class §super§
   {
      
      private static var §?!_§:Class = §?!I§;
      
      private static var §9V§:Array = [];
      
      private static var §%H§:§&!a§ = null;
      
      private static var §^2§:Boolean = false;
       
      
      public function §super§()
      {
         super();
      }
      
      private static function §1E§(param1:String, param2:§"$§) : void
      {
         var tutorialPopup:§&!a§ = null;
         var birdName:String = param1;
         var currentUIView:§"$§ = param2;
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
            tutorialPopup = new §&!a§(§[a§.§`l§(§?!_§),currentUIView,§@!0§.§with§(tutorialName,§0!d§.§=,§));
         }
         catch(e:Error)
         {
            return;
         }
         §9V§.push(tutorialPopup);
      }
      
      public static function §"!-§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §@!]§())
         {
            §2!S§.§<P§.§<!e§(_loc1_,false);
         }
      }
      
      private static function §@!]§() : Array
      {
         var _loc2_:§]'§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §&2§.§4!1§.slingshot.§6E§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §3!N§(param1:§"$§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §@!]§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§2!S§.§<P§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §2!S§.§<P§.§<!e§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §1E§(_loc4_,param1);
         }
         if(param2)
         {
            if(§9V§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §2!S§.§<P§.saveTutorialSeen(_loc6_);
            }
         }
         §"!7§();
      }
      
      private static function §"!7§(param1:Boolean = true) : void
      {
         if(§6!U§ == false && §9V§.length > 0)
         {
            §^2§ = true;
            §%H§ = §9V§.pop();
            §%H§.open(param1);
            §%H§.x = §2!S§.§0!+§ / 2;
            §%H§.y = §2!S§.§>!?§ / 2;
            §%H§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §<1§() : void
      {
         if(§6!U§ == true)
         {
            if(§9V§.length > 0)
            {
               §%H§.preClose(false);
               §^2§ = false;
               §"!7§(false);
            }
            else
            {
               §^2§ = false;
               §%H§.preClose(true);
            }
         }
      }
      
      public static function get §6!U§() : Boolean
      {
         return §^2§;
      }
   }
}
