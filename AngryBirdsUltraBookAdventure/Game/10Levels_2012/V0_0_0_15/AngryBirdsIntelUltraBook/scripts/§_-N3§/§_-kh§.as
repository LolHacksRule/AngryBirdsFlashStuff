package §_-N3§
{
   import §_-uY§.Sprite;
   
   public class §_-kh§
   {
       
      
      private var §_-04Q§:Vector.<§_-Hv§>;
      
      private var §_-7c§:Sprite;
      
      public function §_-kh§()
      {
         this.§_-04Q§ = new Vector.<§_-Hv§>();
         this.§_-7c§ = new Sprite();
         super();
         this.§_-7c§.§_-xd§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-7c§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-Hv§ = null;
         while(this.§_-04Q§.length)
         {
            _loc1_ = this.§_-04Q§.pop();
            _loc1_.dispose();
         }
         this.§_-7c§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-Hv§ = null;
         while(this.§_-04Q§.length)
         {
            _loc1_ = this.§_-04Q§.pop();
            this.§_-7c§.removeChild(_loc1_.§_-IN§);
            _loc1_.dispose();
         }
         this.§_-7c§.§_-6e§();
      }
      
      public function §_-0EQ§(param1:§_-Hv§) : void
      {
         this.§_-04Q§.push(param1);
         this.§_-7c§.addChild(param1.§_-IN§);
      }
      
      public function §_-zZ§(param1:§_-Hv§) : void
      {
         var _loc3_:§_-Hv§ = null;
         var _loc2_:int = this.§_-04Q§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§_-04Q§[_loc2_];
            this.§_-7c§.removeChild(_loc3_.§_-IN§);
            _loc3_.dispose();
            this.§_-04Q§.splice(_loc2_,1);
         }
      }
      
      public function §_-5B§(param1:§_-kh§) : void
      {
         var _loc2_:§_-Hv§ = null;
         while(this.§_-04Q§.length)
         {
            _loc2_ = this.§_-04Q§.pop();
            this.§_-7c§.removeChild(_loc2_.§_-IN§);
            param1.§_-0EQ§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-Hv§ = null;
         var _loc2_:int = this.§_-04Q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-04Q§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-7c§.removeChild(_loc3_.§_-IN§);
               _loc3_.dispose();
               this.§_-04Q§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-PS§(param1:Number, param2:Number) : void
      {
         this.§_-7c§.x = -param1;
         this.§_-7c§.y = -param2;
      }
   }
}
