package §^$1§
{
   import §&!v§.Sprite;
   
   public class §<"n§
   {
       
      
      private var §]Q§:Vector.<§2"^§>;
      
      private var §1"6§:Sprite;
      
      public function §<"n§()
      {
         this.§]Q§ = new Vector.<§2"^§>();
         this.§1"6§ = new Sprite();
         super();
         this.§1"6§.§ !$§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§1"6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2"^§ = null;
         while(this.§]Q§.length)
         {
            _loc1_ = this.§]Q§.pop();
            _loc1_.dispose();
         }
         this.§1"6§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§2"^§ = null;
         while(this.§]Q§.length)
         {
            _loc1_ = this.§]Q§.pop();
            this.§1"6§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§1"6§.§6<§();
      }
      
      public function addParticle(param1:§2"^§) : void
      {
         this.§]Q§.push(param1);
         this.§1"6§.addChild(param1.displayObject);
      }
      
      public function §8# §(param1:§2"^§) : void
      {
         var _loc3_:§2"^§ = null;
         var _loc2_:int = this.§]Q§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§]Q§[_loc2_];
            this.§1"6§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§]Q§.splice(_loc2_,1);
         }
      }
      
      public function §^#U§(param1:§<"n§) : void
      {
         var _loc2_:§2"^§ = null;
         while(this.§]Q§.length)
         {
            _loc2_ = this.§]Q§.pop();
            this.§1"6§.removeChild(_loc2_.displayObject);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§2"^§ = null;
         var _loc2_:int = this.§]Q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]Q§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§1"6§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§]Q§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §,!x§(param1:Number, param2:Number) : void
      {
         this.§1"6§.x = -param1;
         this.§1"6§.y = -param2;
      }
   }
}
