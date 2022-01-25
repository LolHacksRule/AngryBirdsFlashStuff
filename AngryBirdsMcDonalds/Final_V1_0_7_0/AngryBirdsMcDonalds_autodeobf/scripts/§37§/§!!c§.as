package §37§
{
   import §0i§.§@^§;
   import §3<§.§-2§;
   import §7! §.§3!<§;
   import §7! §.§4n§;
   
   public class §!!c§ extends §8!`§
   {
      
      protected static var §[!O§:Class = §8!G§;
      
      private static var §,1§:Array;
       
      
      public function §!!c§()
      {
         super();
      }
      
      private static function §<!R§(param1:String, param2:§-2§) : void
      {
         var tutorialPopup:§'!U§ = null;
         var powerUpName:String = param1;
         var currentUIView:§-2§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §'!U§(§@^§.§'K§(§[!O§),currentUIView,§3!<§.§'!p§(tutorialName,§4n§.§9$§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §>!`§.push(tutorialPopup);
         }
      }
      
      public static function §?C§(param1:§-2§, param2:String, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(§7!5§)
         {
            return;
         }
         var _loc5_:String = param2;
         §,1§ = [];
         switch(param2)
         {
            case "POWERUP1":
               _loc5_ = "POWERUP_TUTORIAL_SUPERSEED";
               §,1§.push(_loc5_);
               break;
            case "POWERUP2":
               _loc5_ = "POWERUP_TUTORIAL_KINGSLING";
               §,1§.push(_loc5_);
               break;
            case "POWERUP3":
               _loc5_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §,1§.push(_loc5_);
               break;
            case "POWERUP4":
               _loc5_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §,1§.push(_loc5_);
               break;
            case "ALL":
               §,1§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §,1§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §,1§.push("POWERUP_TUTORIAL_KINGSLING");
               §,1§.push("POWERUP_TUTORIAL_SUPERSEED");
         }
         var _loc6_:Array;
         var _loc7_:int = (_loc6_ = §,1§).length - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = _loc6_[_loc7_];
            if(!param3 && §9!_§.§1!?§.hasTutorialBeenSeen(_loc8_))
            {
               _loc6_.splice(_loc7_,1);
            }
            else
            {
               §9!_§.§1!?§.§!x§(_loc8_);
            }
            _loc7_--;
         }
         for each(_loc8_ in _loc6_)
         {
            §<!R§(_loc8_,param1);
         }
         if(param4)
         {
            _loc9_ = _loc6_.join(",");
            §9!_§.§1!?§.saveTutorialSeen(_loc9_);
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
   }
}
