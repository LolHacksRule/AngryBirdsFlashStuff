package §=T§
{
   import §&[§.§&!m§;
   import §&[§.§3!I§;
   import §9!8§.§0!7§;
   import §`!W§.§^!e§;
   
   public class §0O§ extends §=W§
   {
      
      protected static var §;w§:Class = §&n§;
      
      private static var §]!m§:Array;
       
      
      public function §0O§()
      {
         super();
      }
      
      private static function §#?§(param1:String, param2:§0!7§) : void
      {
         var tutorialPopup:§[!7§ = null;
         var powerUpName:String = param1;
         var currentUIView:§0!7§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §[!7§(§^!e§.§=j§(§;w§),currentUIView,§3!I§.§-!0§(tutorialName,§&!m§.§>E§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §4!Z§.push(tutorialPopup);
         }
      }
      
      public static function §!!;§(param1:§0!7§, param2:String, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(§,s§)
         {
            return;
         }
         var _loc5_:String = param2;
         §]!m§ = [];
         switch(param2)
         {
            case "POWERUP1":
               _loc5_ = "POWERUP_TUTORIAL_SUPERSEED";
               §]!m§.push(_loc5_);
               break;
            case "POWERUP2":
               _loc5_ = "POWERUP_TUTORIAL_KINGSLING";
               §]!m§.push(_loc5_);
               break;
            case "POWERUP3":
               _loc5_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §]!m§.push(_loc5_);
               break;
            case "POWERUP4":
               _loc5_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §]!m§.push(_loc5_);
               break;
            case "ALL":
               §]!m§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §]!m§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §]!m§.push("POWERUP_TUTORIAL_KINGSLING");
               §]!m§.push("POWERUP_TUTORIAL_SUPERSEED");
         }
         var _loc6_:Array;
         var _loc7_:int = (_loc6_ = §]!m§).length - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = _loc6_[_loc7_];
            if(!param3 && §;!4§.§8'§.hasTutorialBeenSeen(_loc8_))
            {
               _loc6_.splice(_loc7_,1);
            }
            else
            {
               §;!4§.§8'§.§#!8§(_loc8_);
            }
            _loc7_--;
         }
         for each(_loc8_ in _loc6_)
         {
            §#?§(_loc8_,param1);
         }
         if(param4)
         {
            _loc9_ = _loc6_.join(",");
            §;!4§.§8'§.saveTutorialSeen(_loc9_);
         }
      }
      
      public static function § E§() : void
      {
         if(§,s§ == true)
         {
            if(§4!Z§.length > 0)
            {
               §-0§.preClose(false);
               §9O§ = false;
               §#v§(false);
            }
            else
            {
               §9O§ = false;
               §-0§.preClose(true);
            }
         }
      }
   }
}
