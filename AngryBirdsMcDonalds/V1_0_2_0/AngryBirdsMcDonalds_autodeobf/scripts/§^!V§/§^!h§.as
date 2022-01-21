package §^!V§
{
   import §'a§.§use §;
   import §5!l§.§ !D§;
   import §5!l§.§=!;§;
   import §9!W§.§=!@§;
   import §=<§.§ !Y§;
   import §@`§.§>!S§;
   
   public class §^!h§
   {
      
      private static var §#![§:Class = §9!_§;
      
      protected static var §+E§:Array = [];
      
      protected static var §'"§:Popup = null;
      
      protected static var §"!,§:Boolean = false;
       
      
      public function §^!h§()
      {
         super();
      }
      
      protected static function §'!P§(param1:String, param2:§>!S§) : void
      {
         var tutorialPopup:§9x§ = null;
         var birdName:String = param1;
         var currentUIView:§>!S§ = param2;
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
            tutorialPopup = new §9x§(§ !Y§.§^t§(§#![§),currentUIView,§=!;§.§65§(tutorialName,§ !D§.§'!S§));
         }
         catch(e:Error)
         {
            return;
         }
         §+E§.push(tutorialPopup);
      }
      
      public static function §+O§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §<!+§())
         {
            §'j§.§%g§.§?g§(_loc1_,false);
         }
      }
      
      protected static function §<!+§() : Array
      {
         var _loc2_:§use § = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §=!@§.§>!T§.slingshot.§^!@§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §=D§(param1:§>!S§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §<!+§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§'j§.§%g§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §'j§.§%g§.§?g§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §'!P§(_loc4_,param1);
         }
         if(param2)
         {
            if(§+E§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §'j§.§%g§.saveTutorialSeen(_loc6_);
            }
         }
         §-J§();
      }
      
      protected static function §-J§(param1:Boolean = true) : void
      {
         if(§=!R§ == false && §+E§.length > 0)
         {
            §"!,§ = true;
            §'"§ = §+E§.pop();
            §'"§.open(param1);
            §'"§.x = §'j§.§7&§ / 2;
            §'"§.y = §'j§.§+! § / 2;
            §'"§.mClip.getChildByName("Container_Tutorial").visible = true;
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
      
      public static function get §=!R§() : Boolean
      {
         return §"!,§;
      }
   }
}
