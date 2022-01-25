package § !$§
{
   import § !K§.Sprite;
   import §1v§.§+! §;
   import §4A§.§&_§;
   import §86§.§9]§;
   import §9!Y§.§!![§;
   import §9!Y§.§!q§;
   import §9!Y§.§0!6§;
   import §9!Y§.§3!0§;
   import §;+§.§+!?§;
   import §;G§.§1D§;
   import §`!C§.§8!9§;
   import flash.display.Stage;
   
   public class §3!K§ extends §&_§
   {
       
      
      private var §@c§:Stage;
      
      public function §3!K§(param1:Stage)
      {
         this.§@c§ = param1;
         super(param1);
         super.§+&§.simulateMultitouch = true;
      }
      
      override protected function initLevelObjectManager(param1:§9]§) : §+!?§
      {
         return new §]!-§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§!q§) : §!![§
      {
         return new §0!6§(param1);
      }
      
      override protected function initParticleManager(param1:§!![§, param2:§!q§) : §1D§
      {
         return new §+! §(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §3!0§
      {
         return new §3!0§(this.§@c§.loaderInfo.parameters.assetsUrl || "",this.§@c§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function postProcessEmptyEnvironment(param1:§9]§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
         else
         {
            this.§"! §(param1);
         }
      }
      
      override public function get backgroundTextureManager() : §!q§
      {
         if(§@'§)
         {
            return §@'§.textureManager;
         }
         return null;
      }
      
      private function §"! §(param1:§9]§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§8!9§ = null;
         §9V§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 20)
         {
            _loc3_ = §;o§() * 5;
            (_loc4_ = new §8!9§()).x = _loc2_ * 20 + §;o§() * 100;
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
            param1.§,j§(_loc4_);
            _loc2_++;
         }
      }
      
      override protected function addFallingBirds(param1:§9]§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§8!9§ = null;
         §9V§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            _loc3_ = 0;
            while(_loc3_ < 10)
            {
               _loc4_ = §;o§() * 5;
               (_loc5_ = new §8!9§()).x = 30 + _loc3_ * 9 + §;o§() * 9;
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
               param1.§,j§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
   }
}
