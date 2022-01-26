package §_-PP§
{
   import §_-UX§.Sprite;
   
   public class §_-No§
   {
       
      
      private var §_-Am§:Vector.<§_-qC§>;
      
      private var §_-LK§:Sprite;
      
      public function §_-No§()
      {
         this.§_-Am§ = new Vector.<§_-qC§>();
         this.§_-LK§ = new Sprite();
         super();
         this.§_-LK§.§_-SS§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-LK§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-qC§ = null;
         while(this.§_-Am§.length)
         {
            _loc1_ = this.§_-Am§.pop();
            _loc1_.dispose();
         }
         this.§_-LK§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§_-qC§ = null;
         while(this.§_-Am§.length)
         {
            _loc1_ = this.§_-Am§.pop();
            this.§_-LK§.removeChild(_loc1_.§_-RJ§);
            _loc1_.dispose();
         }
      }
      
      public function §_-Eo§(param1:§_-qC§) : void
      {
         this.§_-Am§.push(param1);
         this.§_-LK§.addChild(param1.§_-RJ§);
      }
      
      public function §_-xv§(param1:§_-No§) : void
      {
         var _loc2_:§_-qC§ = null;
         while(this.§_-Am§.length)
         {
            _loc2_ = this.§_-Am§.pop();
            this.§_-LK§.removeChild(_loc2_.§_-RJ§);
            param1.§_-Eo§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§_-qC§ = null;
         var _loc2_:int = this.§_-Am§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§_-Am§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§_-LK§.removeChild(_loc3_.§_-RJ§);
               _loc3_.dispose();
               this.§_-Am§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §_-w6§(param1:Number, param2:Number) : void
      {
         this.§_-LK§.x = -param1;
         this.§_-LK§.y = -param2;
      }
   }
}
