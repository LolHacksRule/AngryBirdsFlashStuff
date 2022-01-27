package §^t§
{
   import §=!E§.Sprite;
   
   public class §>4§
   {
       
      
      private var §6B§:Vector.<§[I§>;
      
      private var §5!P§:Sprite;
      
      public function §>4§()
      {
         this.§6B§ = new Vector.<§[I§>();
         this.§5!P§ = new Sprite();
         super();
         this.§5!P§.§@N§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§5!P§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[I§ = null;
         while(this.§6B§.length)
         {
            _loc1_ = this.§6B§.pop();
            _loc1_.dispose();
         }
         this.§5!P§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§[I§ = null;
         while(this.§6B§.length)
         {
            _loc1_ = this.§6B§.pop();
            this.§5!P§.removeChild(_loc1_.§+M§);
            _loc1_.dispose();
         }
         this.§5!P§.§&!"§();
      }
      
      public function addParticle(param1:§[I§) : void
      {
         this.§6B§.push(param1);
         this.§5!P§.addChild(param1.§+M§);
      }
      
      public function §+_§(param1:§[I§) : void
      {
         var _loc3_:§[I§ = null;
         var _loc2_:int = this.§6B§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§6B§[_loc2_];
            this.§5!P§.removeChild(_loc3_.§+M§);
            _loc3_.dispose();
            this.§6B§.splice(_loc2_,1);
         }
      }
      
      public function §?!6§(param1:§>4§) : void
      {
         var _loc2_:§[I§ = null;
         while(this.§6B§.length)
         {
            _loc2_ = this.§6B§.pop();
            this.§5!P§.removeChild(_loc2_.§+M§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§[I§ = null;
         var _loc2_:int = this.§6B§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§6B§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§5!P§.removeChild(_loc3_.§+M§);
               _loc3_.dispose();
               this.§6B§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §^!#§(param1:Number, param2:Number) : void
      {
         this.§5!P§.x = -param1;
         this.§5!P§.y = -param2;
      }
   }
}
