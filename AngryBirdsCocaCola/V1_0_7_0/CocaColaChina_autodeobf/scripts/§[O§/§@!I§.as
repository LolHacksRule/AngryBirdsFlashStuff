package §[O§
{
   import §,!Q§.Sprite;
   import §,M§.§%C§;
   import §-X§.§5!F§;
   import §1v§.§+! §;
   import §2l§.§%i§;
   import §2l§.§&X§;
   import §2l§.§=y§;
   import §2l§.§]O§;
   import §2o§.§2!Z§;
   import §4A§.§&_§;
   import §9C§.§;,§;
   import flash.display.Stage;
   
   public class §@!I§ extends §&_§
   {
       
      
      private var §@c§:Stage;
      
      public function §@!I§(param1:Stage)
      {
         this.§@c§ = param1;
         super(param1);
         super.§+&§.simulateMultitouch = true;
      }
      
      override protected function initLevelObjectManager(param1:§5!F§) : §;,§
      {
         return new §=3§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§]O§) : §%i§
      {
         return new §=y§(param1);
      }
      
      override protected function initParticleManager(param1:§%i§, param2:§]O§) : §%C§
      {
         return new §+! §(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §&X§
      {
         return new §&X§(this.§@c§.loaderInfo.parameters.assetsUrl || "",this.§@c§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function postProcessEmptyEnvironment(param1:§5!F§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
         else
         {
            this.§"t§(param1);
         }
      }
      
      override public function get backgroundTextureManager() : §]O§
      {
         if(§@'§)
         {
            return §@'§.textureManager;
         }
         return null;
      }
      
      private function §"t§(param1:§5!F§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§2!Z§ = null;
         §9V§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 20)
         {
            _loc3_ = §;o§() * 5;
            (_loc4_ = new §2!Z§()).x = _loc2_ * 20 + §;o§() * 100;
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
            param1.§7o§(_loc4_);
            _loc2_++;
         }
      }
      
      override protected function addFallingBirds(param1:§5!F§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§2!Z§ = null;
         §9V§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            _loc3_ = 0;
            while(_loc3_ < 10)
            {
               _loc4_ = §;o§() * 5;
               (_loc5_ = new §2!Z§()).x = 30 + _loc3_ * 9 + §;o§() * 9;
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
                  _loc5_.y = -100 + _loc2_ * 6 - §;o§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = §;o§() * 360;
               }
               param1.§7o§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
   }
}
