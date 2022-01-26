package §_-DS§
{
   import §_-pF§.Sprite;
   
   public class §_-oo§
   {
       
      
      private var §_-4x§:Vector.<§_-Aa§>;
      
      private var §_-wB§:Sprite;
      
      public function §_-oo§()
      {
         this.§_-4x§ = new Vector.<§_-Aa§>();
         this.§_-wB§ = new Sprite();
         super();
         this.§_-wB§.§_-7e§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-wB§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-Aa§ = null;
         while(this.§_-4x§.length)
         {
            _loc1_ = this.§_-4x§.pop();
            _loc1_.dispose();
         }
         this.§_-wB§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-Aa§ = null;
         while(this.§_-4x§.length)
         {
            _loc1_ = this.§_-4x§.pop();
            this.§_-wB§.removeChild(_loc1_.§_-Yp§);
            _loc1_.dispose();
         }
      }
      
      public function §_-RE§(param1:§_-Aa§) : void
      {
         this.§_-4x§.push(param1);
         this.§_-wB§.addChild(param1.§_-Yp§);
      }
      
      public function §_-JD§(param1:§_-oo§) : void
      {
         var _loc2_:§_-Aa§ = null;
         while(this.§_-4x§.length)
         {
            _loc2_ = this.§_-4x§.pop();
            this.§_-wB§.removeChild(_loc2_.§_-Yp§);
            param1.§_-RE§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-Aa§ = null;
         var _loc2_:int = this.§_-4x§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-4x§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-wB§.removeChild(_loc3_.§_-Yp§);
               _loc3_.dispose();
               this.§_-4x§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-uE§(param1:Number, param2:Number) : void
      {
         this.§_-wB§.x = -param1;
         this.§_-wB§.y = -param2;
      }
   }
}
