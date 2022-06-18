package §>X§
{
   import §3§.Sprite;
   
   public class §@!L§
   {
       
      
      private var § !I§:Vector.<§7!%§>;
      
      private var §"!P§:Sprite;
      
      public function §@!L§()
      {
         this.§ !I§ = new Vector.<§7!%§>();
         this.§"!P§ = new Sprite();
         super();
         this.§"!P§.§#U§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!P§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7!%§ = null;
         while(this.§ !I§.length)
         {
            _loc1_ = this.§ !I§.pop();
            _loc1_.dispose();
         }
         this.§"!P§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§7!%§ = null;
         while(this.§ !I§.length)
         {
            _loc1_ = this.§ !I§.pop();
            this.§"!P§.removeChild(_loc1_.§`!P§);
            _loc1_.dispose();
         }
         this.§"!P§.§%!-§();
      }
      
      public function addParticle(param1:§7!%§) : void
      {
         this.§ !I§.push(param1);
         this.§"!P§.addChild(param1.§`!P§);
      }
      
      public function §2u§(param1:§7!%§) : void
      {
         var _loc3_:§7!%§ = null;
         var _loc2_:int = this.§ !I§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§ !I§[_loc2_];
            this.§"!P§.removeChild(_loc3_.§`!P§);
            _loc3_.dispose();
            this.§ !I§.splice(_loc2_,1);
         }
      }
      
      public function § !H§(param1:§@!L§) : void
      {
         var _loc2_:§7!%§ = null;
         while(this.§ !I§.length)
         {
            _loc2_ = this.§ !I§.pop();
            this.§"!P§.removeChild(_loc2_.§`!P§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§7!%§ = null;
         var _loc2_:int = this.§ !I§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ !I§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§"!P§.removeChild(_loc3_.§`!P§);
               _loc3_.dispose();
               this.§ !I§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §-!6§(param1:Number, param2:Number) : void
      {
         this.§"!P§.x = -param1;
         this.§"!P§.y = -param2;
      }
   }
}
