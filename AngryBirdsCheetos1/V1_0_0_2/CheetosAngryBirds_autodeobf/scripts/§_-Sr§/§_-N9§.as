package §_-Sr§
{
   import §_-GY§.Sprite;
   
   public class §_-N9§
   {
       
      
      private var §_-5Q§:Vector.<§_-K-§>;
      
      private var §_-4T§:Sprite;
      
      public function §_-N9§()
      {
         this.§_-5Q§ = new Vector.<§_-K-§>();
         this.§_-4T§ = new Sprite();
         super();
         this.§_-4T§.§_-6q§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-4T§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-K-§ = null;
         while(this.§_-5Q§.length)
         {
            _loc1_ = this.§_-5Q§.pop();
            _loc1_.dispose();
         }
         this.§_-4T§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-K-§ = null;
         while(this.§_-5Q§.length)
         {
            _loc1_ = this.§_-5Q§.pop();
            this.§_-4T§.removeChild(_loc1_.§_-XI§);
            _loc1_.dispose();
         }
         this.§_-4T§.§_-B2§();
      }
      
      public function addParticle(param1:§_-K-§) : void
      {
         this.§_-5Q§.push(param1);
         this.§_-4T§.addChild(param1.§_-XI§);
      }
      
      public function §_-cI§(param1:§_-K-§) : void
      {
         var _loc3_:§_-K-§ = null;
         var _loc2_:int = this.§_-5Q§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§_-5Q§[_loc2_];
            this.§_-4T§.removeChild(_loc3_.§_-XI§);
            _loc3_.dispose();
            this.§_-5Q§.splice(_loc2_,1);
         }
      }
      
      public function §_-CW§(param1:§_-N9§) : void
      {
         var _loc2_:§_-K-§ = null;
         while(this.§_-5Q§.length)
         {
            _loc2_ = this.§_-5Q§.pop();
            this.§_-4T§.removeChild(_loc2_.§_-XI§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-K-§ = null;
         var _loc2_:int = this.§_-5Q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-5Q§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-4T§.removeChild(_loc3_.§_-XI§);
               _loc3_.dispose();
               this.§_-5Q§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-4r§(param1:Number, param2:Number) : void
      {
         this.§_-4T§.x = -param1;
         this.§_-4T§.y = -param2;
      }
   }
}
