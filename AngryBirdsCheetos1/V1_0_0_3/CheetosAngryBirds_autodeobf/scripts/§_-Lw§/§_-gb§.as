package §_-Lw§
{
   import §case §.Sprite;
   
   public class §_-gb§
   {
       
      
      private var §_-45§:Vector.<§_-hQ§>;
      
      private var §_-3B§:Sprite;
      
      public function §_-gb§()
      {
         this.§_-45§ = new Vector.<§_-hQ§>();
         this.§_-3B§ = new Sprite();
         super();
         this.§_-3B§.§_-IX§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-3B§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-hQ§ = null;
         while(this.§_-45§.length)
         {
            _loc1_ = this.§_-45§.pop();
            _loc1_.dispose();
         }
         this.§_-3B§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-hQ§ = null;
         while(this.§_-45§.length)
         {
            _loc1_ = this.§_-45§.pop();
            this.§_-3B§.removeChild(_loc1_.§_-Sp§);
            _loc1_.dispose();
         }
         this.§_-3B§.§_-S0§();
      }
      
      public function addParticle(param1:§_-hQ§) : void
      {
         this.§_-45§.push(param1);
         this.§_-3B§.addChild(param1.§_-Sp§);
      }
      
      public function §_-HR§(param1:§_-hQ§) : void
      {
         var _loc3_:§_-hQ§ = null;
         var _loc2_:int = this.§_-45§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§_-45§[_loc2_];
            this.§_-3B§.removeChild(_loc3_.§_-Sp§);
            _loc3_.dispose();
            this.§_-45§.splice(_loc2_,1);
         }
      }
      
      public function §_-EX§(param1:§_-gb§) : void
      {
         var _loc2_:§_-hQ§ = null;
         while(this.§_-45§.length)
         {
            _loc2_ = this.§_-45§.pop();
            this.§_-3B§.removeChild(_loc2_.§_-Sp§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-hQ§ = null;
         var _loc2_:int = this.§_-45§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-45§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-3B§.removeChild(_loc3_.§_-Sp§);
               _loc3_.dispose();
               this.§_-45§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-B2§(param1:Number, param2:Number) : void
      {
         this.§_-3B§.x = -param1;
         this.§_-3B§.y = -param2;
      }
   }
}
