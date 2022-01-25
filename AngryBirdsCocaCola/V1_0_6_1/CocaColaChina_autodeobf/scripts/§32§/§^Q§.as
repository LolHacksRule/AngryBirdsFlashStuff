package §32§
{
   import § !b§.§'!%§;
   import §#B§.§ ! §;
   import §+N§.;
   import §+N§.§,A§;
   import §+N§.§1!G§;
   import §+N§.§``§;
   import §-V§.§]s§;
   import §2!G§.§2!V§;
   import §3U§.§ !M§;
   import §<!$§.Sprite;
   import §[+§.§?a§;
   import flash.display.Stage;
   
   public class §^Q§ extends §2!V§
   {
       
      
      private var §[V§:Stage;
      
      public function §^Q§(param1:Stage)
      {
         this.§[V§ = param1;
         super(param1);
         super.§^3§.simulateMultitouch = true;
      }
      
      override protected function initLevelObjectManager(param1:§ !M§) : § ! §
      {
         return new §8I§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§``§) : §,A§
      {
         return new §1!G§(param1);
      }
      
      override protected function initParticleManager(param1:§,A§, param2:§``§) : §]s§
      {
         return new §?a§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §#4§
      {
         return new §#4§(this.§[V§.loaderInfo.parameters.assetsUrl || "",this.§[V§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function postProcessEmptyEnvironment(param1:§ !M§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
         else
         {
            this.§7!7§(param1);
         }
      }
      
      override public function get backgroundTextureManager() : §``§
      {
         if(§76§)
         {
            return §76§.textureManager;
         }
         return null;
      }
      
      private function §7!7§(param1:§ !M§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§'!%§ = null;
         §!+§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 20)
         {
            _loc3_ = §`q§() * 5;
            (_loc4_ = new §'!%§()).x = _loc2_ * 20 + §`q§() * 100;
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
            param1.§5!$§(_loc4_);
            _loc2_++;
         }
      }
      
      override protected function addFallingBirds(param1:§ !M§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§'!%§ = null;
         §!+§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            _loc3_ = 0;
            while(_loc3_ < 10)
            {
               _loc4_ = §`q§() * 5;
               (_loc5_ = new §'!%§()).x = 30 + _loc3_ * 9 + §`q§() * 9;
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
                  _loc5_.y = -100 + _loc2_ * 6 - §`q§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = §`q§() * 360;
               }
               param1.§5!$§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
   }
}
