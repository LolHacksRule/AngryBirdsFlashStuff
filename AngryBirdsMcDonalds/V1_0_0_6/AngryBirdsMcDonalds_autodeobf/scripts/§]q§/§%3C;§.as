package §]q§
{
   import §&!!§.§<!'§;
   import §&!!§.§@!E§;
   import §0;§.§3=§;
   import §8<§.§with§;
   
   public class §<;§ extends §+$§
   {
      
      protected static var §]!B§:Class = §]"§;
      
      private static var §4!j§:Array;
       
      
      public function §<;§()
      {
         super();
      }
      
      private static function §7!a§(param1:String, param2:§3=§) : void
      {
         var tutorialPopup:§&!"§ = null;
         var powerUpName:String = param1;
         var currentUIView:§3=§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §&!"§(§with§.§ !0§(§]!B§),currentUIView,§@!E§.§]!`§(tutorialName,§<!'§.§+j§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §<N§.push(tutorialPopup);
         }
      }
      
      public static function §7!m§(param1:§3=§, param2:String, param3:Boolean = false, param4:Boolean = false) : void
      {
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(§+!l§)
         {
            return;
         }
         var _loc5_:String = param2;
         §4!j§ = [];
         switch(param2)
         {
            case "POWERUP1":
               _loc5_ = "POWERUP_TUTORIAL_SUPERSEED";
               §4!j§.push(_loc5_);
               break;
            case "POWERUP2":
               _loc5_ = "POWERUP_TUTORIAL_KINGSLING";
               §4!j§.push(_loc5_);
               break;
            case "POWERUP3":
               _loc5_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §4!j§.push(_loc5_);
               break;
            case "POWERUP4":
               _loc5_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §4!j§.push(_loc5_);
               break;
            case "ALL":
               §4!j§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §4!j§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §4!j§.push("POWERUP_TUTORIAL_KINGSLING");
               §4!j§.push("POWERUP_TUTORIAL_SUPERSEED");
         }
         var _loc6_:Array;
         var _loc7_:int = (_loc6_ = §4!j§).length - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = _loc6_[_loc7_];
            if(!param3 && § 4§.§?H§.hasTutorialBeenSeen(_loc8_))
            {
               _loc6_.splice(_loc7_,1);
            }
            else
            {
               § 4§.§?H§.§-! §(_loc8_);
            }
            _loc7_--;
         }
         for each(_loc8_ in _loc6_)
         {
            §7!a§(_loc8_,param1);
         }
         if(param4)
         {
            _loc9_ = _loc6_.join(",");
            § 4§.§?H§.saveTutorialSeen(_loc9_);
         }
      }
      
      public static function §[2§() : void
      {
         if(§+!l§ == true)
         {
            if(§<N§.length > 0)
            {
               §4!m§.preClose(false);
               §<]§ = false;
               §<!A§(false);
            }
            else
            {
               §<]§ = false;
               §4!m§.preClose(true);
            }
         }
      }
   }
}
