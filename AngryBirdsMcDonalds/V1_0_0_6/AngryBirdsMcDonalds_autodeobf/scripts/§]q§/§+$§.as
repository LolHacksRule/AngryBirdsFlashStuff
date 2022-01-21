package §]q§
{
   import §#M§.§+!Z§;
   import §&!!§.§<!'§;
   import §&!!§.§@!E§;
   import §0;§.§3=§;
   import §8<§.§with§;
   import §<L§.§&E§;
   
   public class §+$§
   {
      
      private static var §5!E§:Class = §&;§;
      
      protected static var §<N§:Array = [];
      
      protected static var §4!m§:Popup = null;
      
      protected static var §<]§:Boolean = false;
       
      
      public function §+$§()
      {
         super();
      }
      
      protected static function §?w§(param1:String, param2:§3=§) : void
      {
         var tutorialPopup:§`!A§ = null;
         var birdName:String = param1;
         var currentUIView:§3=§ = param2;
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
            tutorialPopup = new §`!A§(§with§.§ !0§(§5!E§),currentUIView,§@!E§.§]!`§(tutorialName,§<!'§.§+j§));
         }
         catch(e:Error)
         {
            return;
         }
         §<N§.push(tutorialPopup);
      }
      
      public static function §<!G§() : void
      {
         var _loc1_:String = null;
         for each(_loc1_ in §2e§())
         {
            § 4§.§?H§.§-! §(_loc1_,false);
         }
      }
      
      protected static function §2e§() : Array
      {
         var _loc2_:§&E§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §+!Z§.§?!<§.slingshot.§ &§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §9Q§(param1:§3=§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc3_:Array = §2e§();
         var _loc5_:int = _loc3_.length - 1;
         while(_loc5_ >= 0)
         {
            _loc4_ = _loc3_[_loc5_];
            if(§ 4§.§?H§.hasTutorialBeenSeen(_loc4_))
            {
               _loc3_.splice(_loc5_,1);
            }
            else
            {
               § 4§.§?H§.§-! §(_loc4_);
            }
            _loc5_--;
         }
         for each(_loc4_ in _loc3_)
         {
            §?w§(_loc4_,param1);
         }
         if(param2)
         {
            if(§<N§.length > 0)
            {
               _loc6_ = _loc3_.join(",");
               § 4§.§?H§.saveTutorialSeen(_loc6_);
            }
         }
         §<!A§();
      }
      
      protected static function §<!A§(param1:Boolean = true) : void
      {
         if(§+!l§ == false && §<N§.length > 0)
         {
            §<]§ = true;
            §4!m§ = §<N§.pop();
            §4!m§.open(param1);
            §4!m§.x = § 4§.§#!<§ / 2;
            §4!m§.y = § 4§.§@+§ / 2;
            §4!m§.mClip.getChildByName("Container_Tutorial").visible = true;
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
      
      public static function get §+!l§() : Boolean
      {
         return §<]§;
      }
   }
}
