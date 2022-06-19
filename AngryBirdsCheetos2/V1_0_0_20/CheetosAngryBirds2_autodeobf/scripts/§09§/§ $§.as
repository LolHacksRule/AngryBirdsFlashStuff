package §09§
{
   import §&!8§.§+!6§;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §4&§.§",§;
   import §6H§.§^5§;
   import §9t§.§&!W§;
   import §9t§.§=!>§;
   import §;A§.§]!A§;
   import §=!&§.§>L§;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   import §`![§.§@;§;
   import flash.display.Stage;
   
   public class § $§ extends § p§
   {
      
      public static var §8#§:String = "";
       
      
      public function § $§(param1:Stage)
      {
         super(param1);
      }
      
      override public function init(param1:§!!K§) : void
      {
         super.init(param1);
      }
      
      override protected function initReplay() : void
      {
         §96§ = new §>L§(§@;§.§6!K§);
      }
      
      override protected function loadPreviousReplayData() : void
      {
         if(§8#§)
         {
            §1N§ = §8#§;
         }
         if(§1N§)
         {
            §@D§ = §>L§.§,a§(§1N§);
            §@D§.speed = 1;
            §@D§.play();
            §`!e§ = -1000;
            §1N§ = null;
         }
      }
      
      override protected function initLevelSlingshot(param1:§!!K§) : §7!N§
      {
         return new §4!7§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§=!>§) : §&!W§
      {
         return new §",§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§!!K§) : §+!6§
      {
         return new §^5§(this,param1,new Sprite());
      }
      
      public function §&§() : void
      {
         if(§96§)
         {
            (§96§ as §>L§).§7$§(mLevelEngine.currentStep);
         }
      }
      
      public function §,!e§() : Boolean
      {
         return §@;§.§6!K§ != "1-1" && §@;§.§6!K§ != "1-2" && §@;§.§6!K§ != "1-3";
      }
      
      override protected function addFallingBirds(param1:§!!K§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§]!A§ = null;
         §0v§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = §>C§() * 5;
               (_loc5_ = new §]!A§()).x = 30 + _loc3_ * 10 + §>C§() * 9;
               if(_loc2_ == 0)
               {
                  _loc5_.y = -2;
                  if(_loc3_ == 1 || _loc3_ == 2 || _loc3_ == 4)
                  {
                     _loc5_.id = "PIG_MUSTACHE";
                  }
                  else
                  {
                     _loc5_.id = "PIG_HELMET";
                  }
                  _loc5_.angle = 45 - §>C§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 12 - §>C§() * 3 - _loc3_ * 8;
                  if((_loc4_ = (_loc3_ * _loc3_ + _loc2_ * _loc3_ + _loc2_) % 5) < 2)
                  {
                     _loc5_.id = "BIRD_RED";
                  }
                  else if(_loc4_ == 3)
                  {
                     _loc5_.id = "BIRD_YELLOW";
                  }
                  else
                  {
                     _loc5_.id = "BIRD_BLUE";
                  }
                  _loc5_.angle = §>C§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
   }
}
