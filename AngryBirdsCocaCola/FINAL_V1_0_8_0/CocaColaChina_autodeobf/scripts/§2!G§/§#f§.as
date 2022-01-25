package §2!G§
{
   import §%!^§.§"!7§;
   import §%i§.§%!_§;
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §48§.§#i§;
   import §48§.§4a§;
   import §48§.§9!R§;
   import §48§.§^!!§;
   import §9y§.§^!I§;
   import §?=§.§&j§;
   import §^!$§.§;!D§;
   import flash.display.Stage;
   
   public class §#f§ extends §>!2§
   {
       
      
      private var §@!c§:Stage;
      
      public function §#f§(param1:Stage)
      {
         this.§@!c§ = param1;
         super(param1);
         super.§&R§.simulateMultitouch = true;
      }
      
      override protected function initLevelObjectManager(param1:§"!7§) : §;!D§
      {
         return new §true§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§4a§) : §#i§
      {
         return new §9!R§(param1);
      }
      
      override protected function initParticleManager(param1:§#i§, param2:§4a§) : §&j§
      {
         return new §^!I§(param1,param2);
      }
      
      override protected function initThemeGraphicsManager() : §^!!§
      {
         return new §^!!§(this.§@!c§.loaderInfo.parameters.assetsUrl || "",this.§@!c§.loaderInfo.parameters.buildNumber || "",true,3);
      }
      
      override protected function postProcessEmptyEnvironment(param1:§"!7§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
         else
         {
            this.§8!b§(param1);
         }
      }
      
      override public function get backgroundTextureManager() : §4a§
      {
         if(§7i§)
         {
            return §7i§.textureManager;
         }
         return null;
      }
      
      private function §8!b§(param1:§"!7§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§%!_§ = null;
         §=!Z§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 20)
         {
            _loc3_ = §>R§() * 5;
            (_loc4_ = new §%!_§()).x = _loc2_ * 20 + §>R§() * 100;
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
            param1.§^!3§(_loc4_);
            _loc2_++;
         }
      }
      
      override protected function addFallingBirds(param1:§"!7§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§%!_§ = null;
         §=!Z§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            _loc3_ = 0;
            while(_loc3_ < 10)
            {
               _loc4_ = §>R§() * 5;
               (_loc5_ = new §%!_§()).x = 30 + _loc3_ * 9 + §>R§() * 9;
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
                  _loc5_.y = -100 + _loc2_ * 6 - §>R§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = §>R§() * 360;
               }
               param1.§^!3§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
   }
}
