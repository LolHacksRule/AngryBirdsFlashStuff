package §_-7o§
{
   import §_-se§.Sprite;
   
   public class §_-c-§
   {
       
      
      private var §_-BK§:Vector.<§_-w7§>;
      
      private var §_-K4§:Sprite;
      
      public function §_-c-§()
      {
         this.§_-BK§ = new Vector.<§_-w7§>();
         this.§_-K4§ = new Sprite();
         super();
         this.§_-K4§.§_-kU§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-K4§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-w7§ = null;
         while(this.§_-BK§.length)
         {
            _loc1_ = this.§_-BK§.pop();
            _loc1_.dispose();
         }
         this.§_-K4§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-w7§ = null;
         while(this.§_-BK§.length)
         {
            _loc1_ = this.§_-BK§.pop();
            this.§_-K4§.removeChild(_loc1_.§_-gi§);
            _loc1_.dispose();
         }
      }
      
      public function §_-4V§(param1:§_-w7§) : void
      {
         this.§_-BK§.push(param1);
         this.§_-K4§.addChild(param1.§_-gi§);
      }
      
      public function §_-jP§(param1:§_-c-§) : void
      {
         var _loc2_:§_-w7§ = null;
         while(this.§_-BK§.length)
         {
            _loc2_ = this.§_-BK§.pop();
            this.§_-K4§.removeChild(_loc2_.§_-gi§);
            param1.§_-4V§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-w7§ = null;
         var _loc2_:int = this.§_-BK§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-BK§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-K4§.removeChild(_loc3_.§_-gi§);
               _loc3_.dispose();
               this.§_-BK§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-3m§(param1:Number, param2:Number) : void
      {
         this.§_-K4§.x = -param1;
         this.§_-K4§.y = -param2;
      }
   }
}
