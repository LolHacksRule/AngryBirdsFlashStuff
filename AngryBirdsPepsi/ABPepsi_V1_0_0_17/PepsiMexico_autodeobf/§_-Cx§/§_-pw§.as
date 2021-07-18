package §_-Cx§
{
   import §_-LP§.Sprite;
   
   public class §_-pw§
   {
       
      
      private var §_-ja§:Vector.<§_-UW§>;
      
      private var §_-gH§:Sprite;
      
      public function §_-pw§()
      {
         this.§_-ja§ = new Vector.<§_-UW§>();
         this.§_-gH§ = new Sprite();
         super();
         this.§_-gH§.§_-pE§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-gH§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-UW§ = null;
         while(this.§_-ja§.length)
         {
            _loc1_ = this.§_-ja§.pop();
            _loc1_.dispose();
         }
         this.§_-gH§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-UW§ = null;
         while(this.§_-ja§.length)
         {
            _loc1_ = this.§_-ja§.pop();
            this.§_-gH§.removeChild(_loc1_.§_-tY§);
            _loc1_.dispose();
         }
      }
      
      public function §_-JY§(param1:§_-UW§) : void
      {
         this.§_-ja§.push(param1);
         this.§_-gH§.addChild(param1.§_-tY§);
      }
      
      public function §_-63§(param1:§_-pw§) : void
      {
         var _loc2_:§_-UW§ = null;
         while(this.§_-ja§.length)
         {
            _loc2_ = this.§_-ja§.pop();
            this.§_-gH§.removeChild(_loc2_.§_-tY§);
            param1.§_-JY§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-UW§ = null;
         var _loc2_:int = this.§_-ja§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-ja§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-gH§.removeChild(_loc3_.§_-tY§);
               _loc3_.dispose();
               this.§_-ja§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-8v§(param1:Number, param2:Number) : void
      {
         this.§_-gH§.x = -param1;
         this.§_-gH§.y = -param2;
      }
   }
}
