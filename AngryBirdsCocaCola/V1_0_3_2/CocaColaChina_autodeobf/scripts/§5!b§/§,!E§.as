package §5!b§
{
   import §!!a§.§8=§;
   import §,N§.§@! §;
   import §4!O§.§+K§;
   import §43§.§`!8§;
   import §5!?§.§>"§;
   import §8r§.§ "§;
   import §8r§.§+!8§;
   import §8r§.§<p§;
   import §8r§.§@V§;
   import §;t§.Sprite;
   import §@!>§.§=!R§;
   import flash.display.Stage;
   
   public class §,!E§ extends §>"§
   {
       
      
      private var §7>§:Stage;
      
      public function §,!E§(param1:Stage)
      {
         this.§7>§ = param1;
         super(param1);
         super.§2!Z§.simulateMultitouch = true;
      }
      
      override protected function initLevelObjectManager(param1:§8=§) : §+K§
      {
         return new §4!!§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§@V§) : § "§
      {
         return new §<p§(param1);
      }
      
      override protected function initParticleManager(param1:§ "§, param2:§@V§) : §=!R§
      {
         return new §`!8§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §+!8§
      {
         return new §+!8§(this.§7>§.loaderInfo.parameters.assetsUrl || "",this.§7>§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function postProcessEmptyEnvironment(param1:§8=§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
         else
         {
            this.§@!A§(param1);
         }
      }
      
      override public function get backgroundTextureManager() : §@V§
      {
         if(§3!I§)
         {
            return §3!I§.textureManager;
         }
         return null;
      }
      
      private function §@!A§(param1:§8=§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§@! § = null;
         §2![§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 20)
         {
            _loc3_ = §;7§() * 5;
            (_loc4_ = new §@! §()).x = _loc2_ * 20 + §;7§() * 100;
            _loc4_.y = 0;
            if(_loc2_ % 5 == 0)
            {
               _loc4_.id = "BLOCK_BOTTLE_COKE";
            }
            else
            {
               _loc4_.id = "BLOCK_COLLECT_DRUM_" + (_loc2_ % 4 + 1);
               _loc4_.id = "BLOCK_COLLECT_DRUM_" + (_loc2_ % 4 + 1);
               _loc4_.id = "BLOCK_COLLECT_DRUM_" + (_loc2_ % 4 + 1);
               _loc4_.id = "BLOCK_COLLECT_DRUM_" + (_loc2_ % 4 + 1);
            }
            param1.§4§(_loc4_);
            _loc2_++;
         }
      }
      
      override protected function addFallingBirds(param1:§8=§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§@! § = null;
         §2![§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            _loc3_ = 0;
            while(_loc3_ < 10)
            {
               _loc4_ = §;7§() * 5;
               (_loc5_ = new §@! §()).x = 30 + _loc3_ * 9 + §;7§() * 9;
               if(_loc2_ == 0)
               {
                  _loc5_.y = 0;
                  if(_loc3_ == 1 || _loc3_ == 2)
                  {
                     _loc5_.id = "PIG_MUSTACHE";
                  }
                  else if(_loc3_ == 3 || _loc3_ == 4)
                  {
                     _loc5_.id = "PIG_HELMET";
                  }
                  else
                  {
                     _loc5_.id = "BLOCK_BOTTLE_COKE";
                  }
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - §;7§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = §;7§() * 360;
               }
               param1.§4§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
   }
}
