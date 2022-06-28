package §_-7§
{
   import §_-0BH§.§_-ZE§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-mB§;
   import §_-TG§.§_-pR§;
   import §_-Yl§.§_-5q§;
   import §_-gU§.Popup;
   import §_-gU§.§_-02s§;
   import §_-gU§.§_-hf§;
   import §_-gU§.§_-wZ§;
   import §_-qO§.§ in§;
   
   public class §_-on§ extends §_-02s§
   {
      
      private static var §_-0FG§:Array = [];
      
      private static var §_-4j§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §_-E-§:Array;
       
      
      public function §_-on§()
      {
         super();
      }
      
      private static function §_-w9§(param1:String, param2:§_-5q§) : void
      {
         var tutorialPopup:§_-wZ§ = null;
         var birdName:String = param1;
         var currentUIView:§_-5q§ = param2;
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
            tutorialPopup = new §_-wZ§(§_-ZE§.§_-ve§(§_-lV§),currentUIView,§_-mB§.§_-E3§(tutorialName,§_-0FF§.§_-3S§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §_-0FG§.push(tutorialPopup);
         }
      }
      
      private static function §_-XH§(param1:String, param2:§_-5q§) : void
      {
         var tutorialPopup:§_-hf§ = null;
         var powerUpName:String = param1;
         var currentUIView:§_-5q§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §_-hf§(§_-ZE§.§_-ve§(§_-HH§),currentUIView,§_-mB§.§_-E3§(tutorialName,§_-0FF§.§_-3S§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §_-0FG§.push(tutorialPopup);
         }
      }
      
      private static function §_-06X§() : Array
      {
         var _loc2_:§_-pR§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in § in§.§_-Dc§.slingshot.§_-j9§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §_-5a§(param1:§_-5q§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         §_-E-§ = [];
         switch(param2)
         {
            case "POWERUP4":
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §_-E-§.push(_loc4_);
               break;
            case "POWERUP1":
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               §_-E-§.push(_loc4_);
               break;
            case "POWERUP2":
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               §_-E-§.push(_loc4_);
               break;
            case "POWERUP3":
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §_-E-§.push(_loc4_);
               break;
            case "ALL":
               §_-E-§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §_-E-§.push("POWERUP_TUTORIAL_SUPERSEED");
               §_-E-§.push("POWERUP_TUTORIAL_KINGSLING");
               §_-E-§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var _loc5_:Array = §_-E-§;
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
            §_-XH§(param2,param1);
         }
      }
      
      public static function §_-09P§(param1:§_-5q§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc3_:Array = §_-06X§();
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
            §_-w9§(_loc4_,param1);
         }
         §_-xQ§();
      }
      
      private static function §_-xQ§(param1:Boolean = true) : void
      {
         if(!isOpen && §_-0FG§.length > 0)
         {
            isOpen = true;
            §_-4j§ = §_-0FG§.pop();
            §_-4j§.open(param1);
         }
      }
      
      public static function §_-fl§() : void
      {
         if(isOpen == true)
         {
            if(§_-0FG§.length > 0)
            {
               §_-4j§.preClose(false);
               isOpen = false;
               §_-xQ§(false);
            }
            else
            {
               isOpen = false;
               §_-4j§.preClose(true);
            }
         }
      }
   }
}
