package §^!V§
{
   import §5!l§.§ !D§;
   import §5!l§.§=!;§;
   import §=<§.§ !Y§;
   import §@`§.§>!S§;
   
   public class §%K§ extends §^!h§
   {
      
      protected static var §2C§:Class = §@@§;
      
      private static var §`m§:Array;
       
      
      public function §%K§()
      {
         super();
      }
      
      private static function §&^§(param1:String, param2:§>!S§) : void
      {
         var tutorialPopup:§@!,§ = null;
         var powerUpName:String = param1;
         var currentUIView:§>!S§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §@!,§(§ !Y§.§^t§(§2C§),currentUIView,§=!;§.§65§(tutorialName,§ !D§.§'!S§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §+E§.push(tutorialPopup);
         }
      }
      
      public static function §1!J§(param1:§>!S§, param2:String, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(§=!R§)
         {
            return;
         }
         var _loc5_:String = param2;
         §`m§ = [];
         switch(param2)
         {
            case "POWERUP1":
               _loc5_ = "POWERUP_TUTORIAL_SUPERSEED";
               §`m§.push(_loc5_);
               break;
            case "POWERUP2":
               _loc5_ = "POWERUP_TUTORIAL_KINGSLING";
               §`m§.push(_loc5_);
               break;
            case "POWERUP3":
               _loc5_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §`m§.push(_loc5_);
               break;
            case "POWERUP4":
               _loc5_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §`m§.push(_loc5_);
               break;
            case "ALL":
               §`m§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §`m§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §`m§.push("POWERUP_TUTORIAL_KINGSLING");
               §`m§.push("POWERUP_TUTORIAL_SUPERSEED");
         }
         var _loc6_:Array;
         var _loc7_:int = (_loc6_ = §`m§).length - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = _loc6_[_loc7_];
            if(!param3 && §'j§.§%g§.hasTutorialBeenSeen(_loc8_))
            {
               _loc6_.splice(_loc7_,1);
            }
            else
            {
               §'j§.§%g§.§?g§(_loc8_);
            }
            _loc7_--;
         }
         for each(_loc8_ in _loc6_)
         {
            §&^§(_loc8_,param1);
         }
         if(param4)
         {
            _loc9_ = _loc6_.join(",");
            §'j§.§%g§.saveTutorialSeen(_loc9_);
         }
      }
      
      public static function §9!e§() : void
      {
         if(§=!R§ == true)
         {
            if(§+E§.length > 0)
            {
               §'"§.preClose(false);
               §"!,§ = false;
               §-J§(false);
            }
            else
            {
               §"!,§ = false;
               §'"§.preClose(true);
            }
         }
      }
   }
}
