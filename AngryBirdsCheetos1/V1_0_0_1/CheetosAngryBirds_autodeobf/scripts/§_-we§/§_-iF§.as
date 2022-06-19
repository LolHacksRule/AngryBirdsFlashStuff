package §_-we§
{
   import §_-Ls§.Sprite;
   
   public class §_-iF§
   {
       
      
      private var §_-pH§:Vector.<§_-yB§>;
      
      private var §_-ab§:Sprite;
      
      public function §_-iF§()
      {
         this.§_-pH§ = new Vector.<§_-yB§>();
         this.§_-ab§ = new Sprite();
         super();
         this.§_-ab§.§_-K2§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-ab§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-yB§ = null;
         while(this.§_-pH§.length)
         {
            _loc1_ = this.§_-pH§.pop();
            _loc1_.dispose();
         }
         this.§_-ab§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-yB§ = null;
         while(this.§_-pH§.length)
         {
            _loc1_ = this.§_-pH§.pop();
            this.§_-ab§.removeChild(_loc1_.§_-vW§);
            _loc1_.dispose();
         }
         this.§_-ab§.§_-On§();
      }
      
      public function addParticle(param1:§_-yB§) : void
      {
         this.§_-pH§.push(param1);
         this.§_-ab§.addChild(param1.§_-vW§);
      }
      
      public function §_-4j§(param1:§_-yB§) : void
      {
         var _loc3_:§_-yB§ = null;
         var _loc2_:int = this.§_-pH§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§_-pH§[_loc2_];
            this.§_-ab§.removeChild(_loc3_.§_-vW§);
            _loc3_.dispose();
            this.§_-pH§.splice(_loc2_,1);
         }
      }
      
      public function §_-AT§(param1:§_-iF§) : void
      {
         var _loc2_:§_-yB§ = null;
         while(this.§_-pH§.length)
         {
            _loc2_ = this.§_-pH§.pop();
            this.§_-ab§.removeChild(_loc2_.§_-vW§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-yB§ = null;
         var _loc2_:int = this.§_-pH§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-pH§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-ab§.removeChild(_loc3_.§_-vW§);
               _loc3_.dispose();
               this.§_-pH§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-As§(param1:Number, param2:Number) : void
      {
         this.§_-ab§.x = -param1;
         this.§_-ab§.y = -param2;
      }
   }
}
