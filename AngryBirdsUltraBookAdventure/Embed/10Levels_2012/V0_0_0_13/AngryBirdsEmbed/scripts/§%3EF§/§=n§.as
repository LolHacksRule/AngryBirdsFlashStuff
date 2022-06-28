package §>F§
{
   import §?^§.Sprite;
   
   public class §=n§
   {
       
      
      private var §[r§:Vector.<§2S§>;
      
      private var § !6§:Sprite;
      
      public function §=n§()
      {
         this.§[r§ = new Vector.<§2S§>();
         this.§ !6§ = new Sprite();
         super();
         this.§ !6§.§-j§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ !6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2S§ = null;
         while(this.§[r§.length)
         {
            _loc1_ = this.§[r§.pop();
            _loc1_.dispose();
         }
         this.§ !6§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§2S§ = null;
         while(this.§[r§.length)
         {
            _loc1_ = this.§[r§.pop();
            this.§ !6§.removeChild(_loc1_.§5F§);
            _loc1_.dispose();
         }
         this.§ !6§.§9!B§();
      }
      
      public function § t§(param1:§2S§) : void
      {
         this.§[r§.push(param1);
         this.§ !6§.addChild(param1.§5F§);
      }
      
      public function §6f§(param1:§2S§) : void
      {
         var _loc3_:§2S§ = null;
         var _loc2_:int = this.§[r§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§[r§[_loc2_];
            this.§ !6§.removeChild(_loc3_.§5F§);
            _loc3_.dispose();
            this.§[r§.splice(_loc2_,1);
         }
      }
      
      public function §;q§(param1:§=n§) : void
      {
         var _loc2_:§2S§ = null;
         while(this.§[r§.length)
         {
            _loc2_ = this.§[r§.pop();
            this.§ !6§.removeChild(_loc2_.§5F§);
            param1.§ t§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§2S§ = null;
         var _loc2_:int = this.§[r§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[r§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§ !6§.removeChild(_loc3_.§5F§);
               _loc3_.dispose();
               this.§[r§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §>8§(param1:Number, param2:Number) : void
      {
         this.§ !6§.x = -param1;
         this.§ !6§.y = -param2;
      }
   }
}
