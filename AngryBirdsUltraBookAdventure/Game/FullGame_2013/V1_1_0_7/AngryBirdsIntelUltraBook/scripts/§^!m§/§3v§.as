package §^!m§
{
   import §!!j§.§!!9§;
   import §!!j§.§4U§;
   import §!!j§.§?H§;
   import §!!j§.Popup;
   import §1!B§.§>!s§;
   import §40§.§<!P§;
   import §;!y§.§,!s§;
   import §=`§.§4s§;
   import §=`§.§6!I§;
   import §>f§.§&!G§;
   
   public class §3v§ extends §!!9§
   {
      
      private static var §8!K§:Array = [];
      
      private static var §9!§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §,""§:Array;
       
      
      public function §3v§()
      {
         super();
      }
      
      private static function §2$§(param1:String, param2:§&!G§) : void
      {
         var _loc4_:§?H§ = null;
         var _loc3_:String = "";
         switch(param1)
         {
            case "BIRD_BLACK":
               _loc3_ = "TUTORIAL_BLACK";
               break;
            case "BIRD_BLUE":
               _loc3_ = "TUTORIAL_BLUE";
               break;
            case "BIRD_RED":
               _loc3_ = "TUTORIAL_RED";
               break;
            case "BIRD_WHITE":
               _loc3_ = "TUTORIAL_WHITE";
               break;
            case "BIRD_YELLOW":
               _loc3_ = "TUTORIAL_YELLOW";
               break;
            case "BIRD_GREEN":
               _loc3_ = "TUTORIAL_BOOMERANG";
               break;
            case "BIRD_REDBIG":
               _loc3_ = "TUTORIAL_BIG_BROTHER";
               break;
            case "BIRD_SARDINE":
               _loc3_ = "TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               return;
         }
         try
         {
            _loc4_ = new §?H§(§>!s§.§;§(§'!+§),param2,§4s§.§4!8§(_loc3_,§6!I§.§[U§));
         }
         catch(e:Error)
         {
         }
         if(_loc4_)
         {
            §8!K§.push(_loc4_);
         }
      }
      
      private static function §;!h§(param1:String, param2:§&!G§) : void
      {
         var _loc4_:§4U§ = null;
         var _loc3_:String = param1;
         try
         {
            _loc4_ = new §4U§(§>!s§.§;§(§"?§),param2,§4s§.§4!8§(_loc3_,§6!I§.§[U§),_loc3_);
         }
         catch(e:Error)
         {
         }
         if(_loc4_)
         {
            §8!K§.push(_loc4_);
         }
      }
      
      private static function §?q§() : Array
      {
         var _loc2_:§<!P§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §,!s§.§=!I§.slingshot.§ Y§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §;-§(param1:§&!G§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         §,""§ = [];
         switch(param2)
         {
            case "POWERUP4":
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §,""§.push(_loc4_);
               break;
            case "POWERUP1":
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               §,""§.push(_loc4_);
               break;
            case "POWERUP2":
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               §,""§.push(_loc4_);
               break;
            case "POWERUP3":
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §,""§.push(_loc4_);
               break;
            case "ALL":
               §,""§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §,""§.push("POWERUP_TUTORIAL_SUPERSEED");
               §,""§.push("POWERUP_TUTORIAL_KINGSLING");
               §,""§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var _loc5_:Array = §,""§;
         if(!param3)
         {
            _loc6_ = _loc5_.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc7_ = AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(_loc5_[_loc6_]))
               {
                  _loc5_.splice(_loc6_,1);
               }
               _loc6_--;
            }
            if(_loc5_.length > 0)
            {
               AngryBirdsFP11.sUserProgress.saveTutorialSeen(_loc5_.toString());
            }
         }
         for each(param2 in _loc5_)
         {
            §;!h§(param2,param1);
         }
      }
      
      public static function §'%§(param1:§&!G§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc3_:Array = §?q§();
         if(!param2)
         {
            _loc5_ = _loc3_.length - 1;
            while(_loc5_ >= 0)
            {
               if(_loc6_ = AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(_loc3_[_loc5_]))
               {
                  _loc3_.splice(_loc5_,1);
               }
               _loc5_--;
            }
            if(_loc3_.length > 0)
            {
               AngryBirdsFP11.sUserProgress.saveTutorialSeen(_loc3_.toString());
            }
         }
         for each(_loc4_ in _loc3_)
         {
            §2$§(_loc4_,param1);
         }
         §%!I§();
      }
      
      private static function §%!I§(param1:Boolean = true) : void
      {
         if(!isOpen && §8!K§.length > 0)
         {
            isOpen = true;
            §9!§ = §8!K§.pop();
            §9!§.open(param1);
         }
      }
      
      public static function §6S§() : void
      {
         if(isOpen == true)
         {
            if(§8!K§.length > 0)
            {
               §9!§.preClose(false);
               isOpen = false;
               §%!I§(false);
            }
            else
            {
               isOpen = false;
               §9!§.preClose(true);
            }
         }
      }
   }
}
