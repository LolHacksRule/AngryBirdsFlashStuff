package §2!G§
{
   import §'+§.§<@§;
   import §7p§.§%g§;
   import §9`§.§#U§;
   import §9`§.§^p§;
   
   public class §!!5§ extends §[!M§
   {
      
      protected static var §03§:Class = §[A§;
      
      private static var native:Array;
       
      
      public function §!!5§()
      {
         super();
      }
      
      private static function §=e§(param1:String, param2:§%g§) : void
      {
         var tutorialPopup:§0!9§ = null;
         var powerUpName:String = param1;
         var currentUIView:§%g§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §0!9§(§<@§.§,'§(§03§),currentUIView,§^p§.§%!p§(tutorialName,§#U§.§5!!§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §%!U§.push(tutorialPopup);
         }
      }
      
      public static function §^=§(param1:§%g§, param2:String, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(§8!o§)
         {
            return;
         }
         var _loc5_:String = param2;
         native = [];
         switch(param2)
         {
            case "POWERUP1":
               _loc5_ = "POWERUP_TUTORIAL_SUPERSEED";
               native.push(_loc5_);
               break;
            case "POWERUP2":
               _loc5_ = "POWERUP_TUTORIAL_KINGSLING";
               native.push(_loc5_);
               break;
            case "POWERUP3":
               _loc5_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               native.push(_loc5_);
               break;
            case "POWERUP4":
               _loc5_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               native.push(_loc5_);
               break;
            case "ALL":
               native.push("POWERUP_TUTORIAL_BIRDQUAKE");
               native.push("POWERUP_TUTORIAL_SLINGSCOPE");
               native.push("POWERUP_TUTORIAL_KINGSLING");
               native.push("POWERUP_TUTORIAL_SUPERSEED");
         }
         var _loc6_:Array;
         var _loc7_:int = (_loc6_ = native).length - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = _loc6_[_loc7_];
            if(!param3 && §3![§.§5!6§.hasTutorialBeenSeen(_loc8_))
            {
               _loc6_.splice(_loc7_,1);
            }
            else
            {
               §3![§.§5!6§.§8!D§(_loc8_);
            }
            _loc7_--;
         }
         for each(_loc8_ in _loc6_)
         {
            §=e§(_loc8_,param1);
         }
         if(param4)
         {
            _loc9_ = _loc6_.join(",");
            §3![§.§5!6§.saveTutorialSeen(_loc9_);
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
   }
}
