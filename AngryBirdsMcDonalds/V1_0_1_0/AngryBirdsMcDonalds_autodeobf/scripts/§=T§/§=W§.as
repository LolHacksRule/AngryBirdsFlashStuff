package §=T§
{
   import §&[§.§&!m§;
   import §&[§.§3!I§;
   import §2o§.§<H§;
   import §9!8§.§0!7§;
   import §@!b§.§^j§;
   import §`!W§.§^!e§;
   
   public class §=W§
   {
      
      private static var §5! §:Class = §""§;
      
      protected static var §4!Z§:Array = [];
      
      protected static var §-0§:Popup = null;
      
      protected static var §9O§:Boolean = false;
       
      
      public function §=W§()
      {
         super();
      }
      
      protected static function §+X§(param1:String, param2:§0!7§) : void
      {
         var tutorialPopup:§6!9§ = null;
         var birdName:String = param1;
         var currentUIView:§0!7§ = param2;
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
            tutorialPopup = new §6!9§(§^!e§.§=j§(§5! §),currentUIView,§3!I§.§-!0§(tutorialName,§&!m§.§>E§));
         }
         catch(e:Error)
         {
            return;
         }
         §4!Z§.push(tutorialPopup);
      }
      
      public static function §5!H§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §&!!§())
         {
            §;!4§.§8'§.§#!8§(_loc1_,false);
         }
      }
      
      protected static function §&!!§() : Array
      {
         var _loc2_:§^j§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §<H§.§=3§.slingshot.§ N§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §'I§(param1:§0!7§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §&!!§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§;!4§.§8'§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §;!4§.§8'§.§#!8§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §+X§(_loc4_,param1);
         }
         if(param2)
         {
            if(§4!Z§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §;!4§.§8'§.saveTutorialSeen(_loc6_);
            }
         }
         §#v§();
      }
      
      protected static function §#v§(param1:Boolean = true) : void
      {
         if(§,s§ == false && §4!Z§.length > 0)
         {
            §9O§ = true;
            §-0§ = §4!Z§.pop();
            §-0§.open(param1);
            §-0§.x = §;!4§.§9!L§ / 2;
            §-0§.y = §;!4§.§<!T§ / 2;
            §-0§.mClip.getChildByName("Container_Tutorial").visible = true;
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
      
      public static function get §,s§() : Boolean
      {
         return §9O§;
      }
   }
}
