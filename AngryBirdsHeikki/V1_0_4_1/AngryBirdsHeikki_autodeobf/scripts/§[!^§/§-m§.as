package §[!^§
{
   import §%!$§.§2!I§;
   import §%O§.§ !§;
   import §%O§.§,!R§;
   import §7!X§.§7g§;
   import §?!P§.§@@§;
   import §^!7§.§]!N§;
   
   public class §-m§
   {
      
      private static var §@!V§:Class = §8!M§;
      
      private static var §5%§:Array = [];
      
      private static var §-u§:§4!&§ = null;
      
      private static var §5g§:Boolean = false;
       
      
      public function §-m§()
      {
         super();
      }
      
      private static function §%0§(param1:String, param2:§7g§) : void
      {
         var tutorialPopup:§4!&§ = null;
         var birdName:String = param1;
         var currentUIView:§7g§ = param2;
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
            case "BIRD_SARDINE":
               tutorialName = "TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               return;
         }
         try
         {
            tutorialPopup = new §4!&§(§2!I§.§;n§(§@!V§),currentUIView,§,!R§.§9!1§(tutorialName,§ !§.§'![§));
         }
         catch(e:Error)
         {
            return;
         }
         §5%§.push(tutorialPopup);
      }
      
      public static function §#c§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §0!G§())
         {
            §1F§.§=l§.§ !4§(_loc1_,false);
         }
      }
      
      private static function §0!G§() : Array
      {
         var _loc2_:§]!N§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §@@§.§ !8§.slingshot.§&!9§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §[e§(param1:§7g§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §0!G§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§1F§.§=l§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               §1F§.§=l§.§ !4§(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §%0§(_loc4_,param1);
         }
         if(param2)
         {
            if(§5%§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               §1F§.§=l§.saveTutorialSeen(_loc6_);
            }
         }
         §%!-§();
      }
      
      private static function §%!-§(param1:Boolean = true) : void
      {
         if(§'!E§ == false && §5%§.length > 0)
         {
            §5g§ = true;
            §-u§ = §5%§.pop();
            §-u§.open(param1);
            §-u§.x = §1F§.§-!I§ / 2;
            §-u§.y = §1F§.§9!8§ / 2;
            §-u§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §,Q§() : void
      {
         if(§'!E§ == true)
         {
            if(§5%§.length > 0)
            {
               §-u§.preClose(false);
               §5g§ = false;
               §%!-§(false);
            }
            else
            {
               §5g§ = false;
               §-u§.preClose(true);
            }
         }
      }
      
      public static function get §'!E§() : Boolean
      {
         return §5g§;
      }
   }
}
