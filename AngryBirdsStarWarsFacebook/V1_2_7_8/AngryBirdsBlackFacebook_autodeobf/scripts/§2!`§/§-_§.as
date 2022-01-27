package §2!`§
{
   import §1"s§.Sprite;
   
   public class §-_§
   {
       
      
      private var §7#7§:Vector.<§;6§>;
      
      private var §,r§:Sprite;
      
      public function §-_§()
      {
         this.§7#7§ = new Vector.<§;6§>();
         this.§,r§ = new Sprite();
         super();
         this.§,r§.§#C§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§,r§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;6§ = null;
         while(this.§7#7§.length)
         {
            _loc1_ = this.§7#7§.pop();
            _loc1_.dispose();
         }
         this.§,r§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§;6§ = null;
         while(this.§7#7§.length)
         {
            _loc1_ = this.§7#7§.pop();
            this.§,r§.removeChild(_loc1_.§^1§);
            _loc1_.dispose();
         }
         this.§,r§.§;7§();
      }
      
      public function §[#$§(param1:§;6§) : void
      {
         this.§7#7§.push(param1);
         this.§,r§.addChild(param1.§^1§);
      }
      
      public function §;"u§(param1:§;6§) : void
      {
         var _loc3_:§;6§ = null;
         var _loc2_:int = this.§7#7§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§7#7§[_loc2_];
            this.§,r§.removeChild(_loc3_.§^1§);
            _loc3_.dispose();
            this.§7#7§.splice(_loc2_,1);
         }
      }
      
      public function §1L§(param1:§-_§) : void
      {
         var _loc2_:§;6§ = null;
         while(this.§7#7§.length)
         {
            _loc2_ = this.§7#7§.pop();
            this.§,r§.removeChild(_loc2_.§^1§);
            param1.§[#$§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§;6§ = null;
         var _loc2_:int = this.§7#7§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7#7§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§,r§.removeChild(_loc3_.§^1§);
               _loc3_.dispose();
               this.§7#7§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §!E§(param1:Number, param2:Number) : void
      {
         this.§,r§.x = -param1;
         this.§,r§.y = -param2;
      }
   }
}
