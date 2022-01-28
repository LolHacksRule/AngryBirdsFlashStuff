package §_-dH§
{
   import §_-SE§.Sprite;
   
   public class §_-Sx§
   {
       
      
      private var §_-FD§:Vector.<§_-ds§>;
      
      private var §_-Sb§:Sprite;
      
      public function §_-Sx§()
      {
         this.§_-FD§ = new Vector.<§_-ds§>();
         this.§_-Sb§ = new Sprite();
         super();
         this.§_-Sb§.§_-54§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Sb§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-ds§ = null;
         while(this.§_-FD§.length)
         {
            _loc1_ = this.§_-FD§.pop();
            _loc1_.dispose();
         }
         this.§_-Sb§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-ds§ = null;
         while(this.§_-FD§.length)
         {
            _loc1_ = this.§_-FD§.pop();
            this.§_-Sb§.removeChild(_loc1_.§_-H3§);
            _loc1_.dispose();
         }
         this.§_-Sb§.§_-Vm§();
      }
      
      public function §_-Kw§(param1:§_-ds§) : void
      {
         this.§_-FD§.push(param1);
         this.§_-Sb§.addChild(param1.§_-H3§);
      }
      
      public function §_-Si§(param1:§_-ds§) : void
      {
         var _loc3_:§_-ds§ = null;
         var _loc2_:int = this.§_-FD§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§_-FD§[_loc2_];
            this.§_-Sb§.removeChild(_loc3_.§_-H3§);
            _loc3_.dispose();
            this.§_-FD§.splice(_loc2_,1);
         }
      }
      
      public function §_-Ml§(param1:§_-Sx§) : void
      {
         var _loc2_:§_-ds§ = null;
         while(this.§_-FD§.length)
         {
            _loc2_ = this.§_-FD§.pop();
            this.§_-Sb§.removeChild(_loc2_.§_-H3§);
            param1.§_-Kw§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-ds§ = null;
         var _loc2_:int = this.§_-FD§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-FD§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-Sb§.removeChild(_loc3_.§_-H3§);
               _loc3_.dispose();
               this.§_-FD§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-ty§(param1:Number, param2:Number) : void
      {
         this.§_-Sb§.x = -param1;
         this.§_-Sb§.y = -param2;
      }
   }
}
