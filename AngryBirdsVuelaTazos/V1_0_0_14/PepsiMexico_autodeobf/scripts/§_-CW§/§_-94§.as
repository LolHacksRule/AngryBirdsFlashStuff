package §_-CW§
{
   import §_-b5§.Sprite;
   
   public class §_-94§
   {
       
      
      private var §_-lf§:Vector.<§_-C-§>;
      
      private var §_-tQ§:Sprite;
      
      public function §_-94§()
      {
         this.§_-lf§ = new Vector.<§_-C-§>();
         this.§_-tQ§ = new Sprite();
         super();
         this.§_-tQ§.§_-3V§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-tQ§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-C-§ = null;
         while(this.§_-lf§.length)
         {
            _loc1_ = this.§_-lf§.pop();
            _loc1_.dispose();
         }
         this.§_-tQ§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-C-§ = null;
         while(this.§_-lf§.length)
         {
            _loc1_ = this.§_-lf§.pop();
            this.§_-tQ§.removeChild(_loc1_.§_-wq§);
            _loc1_.dispose();
         }
      }
      
      public function §_-pB§(param1:§_-C-§) : void
      {
         this.§_-lf§.push(param1);
         this.§_-tQ§.addChild(param1.§_-wq§);
      }
      
      public function §_-Vz§(param1:§_-94§) : void
      {
         var _loc2_:§_-C-§ = null;
         while(this.§_-lf§.length)
         {
            _loc2_ = this.§_-lf§.pop();
            this.§_-tQ§.removeChild(_loc2_.§_-wq§);
            param1.§_-pB§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-C-§ = null;
         var _loc2_:int = this.§_-lf§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-lf§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-tQ§.removeChild(_loc3_.§_-wq§);
               _loc3_.dispose();
               this.§_-lf§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-q5§(param1:Number, param2:Number) : void
      {
         this.§_-tQ§.x = -param1;
         this.§_-tQ§.y = -param2;
      }
   }
}
