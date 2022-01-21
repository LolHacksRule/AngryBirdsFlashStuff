package §+F§
{
   import § !%§.§6%§;
   import § !%§.§7!>§;
   import §3g§.§"!n§;
   import §5K§.§1[§;
   
   public class §<!g§ extends §^!Y§
   {
      
      protected static var §&Z§:Class = §;[§;
      
      private static var §0w§:Array;
       
      
      public function §<!g§()
      {
         super();
      }
      
      private static function §`W§(param1:String, param2:§"!n§) : void
      {
         var tutorialPopup:§2!`§ = null;
         var powerUpName:String = param1;
         var currentUIView:§"!n§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §2!`§(§1[§.§4L§(§&Z§),currentUIView,§6%§.§7A§(tutorialName,§7!>§.§@!7§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §5!J§.push(tutorialPopup);
         }
      }
      
      public static function §9!J§(param1:§"!n§, param2:String, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(§,!=§)
         {
            return;
         }
         var _loc5_:String = param2;
         §0w§ = [];
         switch(param2)
         {
            case "POWERUP1":
               _loc5_ = "POWERUP_TUTORIAL_SUPERSEED";
               §0w§.push(_loc5_);
               break;
            case "POWERUP2":
               _loc5_ = "POWERUP_TUTORIAL_KINGSLING";
               §0w§.push(_loc5_);
               break;
            case "POWERUP3":
               _loc5_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §0w§.push(_loc5_);
               break;
            case "POWERUP4":
               _loc5_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §0w§.push(_loc5_);
               break;
            case "ALL":
               §0w§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §0w§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §0w§.push("POWERUP_TUTORIAL_KINGSLING");
               §0w§.push("POWERUP_TUTORIAL_SUPERSEED");
         }
         var _loc6_:Array;
         var _loc7_:int = (_loc6_ = §0w§).length - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = _loc6_[_loc7_];
            if(!param3 && §2!M§.§&!#§.hasTutorialBeenSeen(_loc8_))
            {
               _loc6_.splice(_loc7_,1);
            }
            else
            {
               §2!M§.§&!#§.§"c§(_loc8_);
            }
            _loc7_--;
         }
         for each(_loc8_ in _loc6_)
         {
            §`W§(_loc8_,param1);
         }
         if(param4)
         {
            _loc9_ = _loc6_.join(",");
            §2!M§.§&!#§.saveTutorialSeen(_loc9_);
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
   }
}
