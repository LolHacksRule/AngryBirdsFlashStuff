package §2!G§
{
   import § !J§.§5u§;
   import §'+§.§<@§;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §9`§.§#U§;
   import §9`§.§^p§;
   
   public class §[!M§
   {
      
      private static var §?!k§:Class = §6! §;
      
      protected static var §%!U§:Array = [];
      
      protected static var §0^§:Popup = null;
      
      protected static var §?@§:Boolean = false;
       
      
      public function §[!M§()
      {
         super();
      }
      
      protected static function §>!8§(param1:String, param2:§%g§) : void
      {
         var tutorialPopup:§["§ = null;
         var birdName:String = param1;
         var currentUIView:§%g§ = param2;
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
            tutorialPopup = new §["§(§<@§.§,'§(§?!k§),currentUIView,§^p§.§%!p§(tutorialName,§#U§.§5!!§));
         }
         catch(e:Error)
         {
            return;
         }
         §%!U§.push(tutorialPopup);
      }
      
      public static function §`p§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §`5§())
         {
            §3![§.§5!6§.§8!D§(_loc1_,false);
         }
      }
      
      protected static function §`5§() : Array
      {
         var _loc2_:§5u§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §2M§.§1?§.slingshot.§<!f§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §!!g§(param1:§%g§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §`5§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§3![§.§5!6§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §3![§.§5!6§.§8!D§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §>!8§(_loc4_,param1);
         }
         if(param2)
         {
            if(§%!U§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §3![§.§5!6§.saveTutorialSeen(_loc6_);
            }
         }
         §@u§();
      }
      
      protected static function §@u§(param1:Boolean = true) : void
      {
         if(§8!o§ == false && §%!U§.length > 0)
         {
            §?@§ = true;
            §0^§ = §%!U§.pop();
            §0^§.open(param1);
            §0^§.x = §3![§.§^e§ / 2;
            §0^§.y = §3![§.§0Z§ / 2;
            §0^§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §!!-§() : void
      {
         if(§8!o§ == true)
         {
            if(§%!U§.length > 0)
            {
               §0^§.preClose(false);
               §?@§ = false;
               §@u§(false);
            }
            else
            {
               §?@§ = false;
               §0^§.preClose(true);
            }
         }
      }
      
      public static function get §8!o§() : Boolean
      {
         return §?@§;
      }
   }
}
