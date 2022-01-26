package §_-Vq§
{
   import §_-vO§.Sprite;
   
   public class §_-ff§
   {
       
      
      private var §_-FA§:Vector.<§_-gu§>;
      
      private var §_-EU§:Sprite;
      
      public function §_-ff§()
      {
         this.§_-FA§ = new Vector.<§_-gu§>();
         this.§_-EU§ = new Sprite();
         super();
         this.§_-EU§.§_-wV§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-EU§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-gu§ = null;
         while(this.§_-FA§.length)
         {
            _loc1_ = this.§_-FA§.pop();
            _loc1_.dispose();
         }
         this.§_-EU§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-gu§ = null;
         while(this.§_-FA§.length)
         {
            _loc1_ = this.§_-FA§.pop();
            this.§_-EU§.removeChild(_loc1_.§_-iV§);
            _loc1_.dispose();
         }
      }
      
      public function §_-2b§(param1:§_-gu§) : void
      {
         this.§_-FA§.push(param1);
         this.§_-EU§.addChild(param1.§_-iV§);
      }
      
      public function §_-mc§(param1:§_-ff§) : void
      {
         var _loc2_:§_-gu§ = null;
         while(this.§_-FA§.length)
         {
            _loc2_ = this.§_-FA§.pop();
            this.§_-EU§.removeChild(_loc2_.§_-iV§);
            param1.§_-2b§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-gu§ = null;
         var _loc2_:int = this.§_-FA§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-FA§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-EU§.removeChild(_loc3_.§_-iV§);
               _loc3_.dispose();
               this.§_-FA§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-up§(param1:Number, param2:Number) : void
      {
         this.§_-EU§.x = -param1;
         this.§_-EU§.y = -param2;
      }
   }
}
