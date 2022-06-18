package §0H§
{
   import §<k§.Sprite;
   
   public class §7i§
   {
       
      
      private var §`T§:Vector.<§-V§>;
      
      private var §?>§:Sprite;
      
      public function §7i§()
      {
         this.§`T§ = new Vector.<§-V§>();
         this.§?>§ = new Sprite();
         super();
         this.§?>§.§>!'§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§?>§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-V§ = null;
         while(this.§`T§.length)
         {
            _loc1_ = this.§`T§.pop();
            _loc1_.dispose();
         }
         this.§?>§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§-V§ = null;
         while(this.§`T§.length)
         {
            _loc1_ = this.§`T§.pop();
            this.§?>§.removeChild(_loc1_.§&%§);
            _loc1_.dispose();
         }
         this.§?>§.§,!;§();
      }
      
      public function §]1§(param1:§-V§) : void
      {
         this.§`T§.push(param1);
         this.§?>§.addChild(param1.§&%§);
      }
      
      public function §%3§(param1:§-V§) : void
      {
         var _loc3_:§-V§ = null;
         var _loc2_:int = this.§`T§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§`T§[_loc2_];
            this.§?>§.removeChild(_loc3_.§&%§);
            _loc3_.dispose();
            this.§`T§.splice(_loc2_,1);
         }
      }
      
      public function §5D§(param1:§7i§) : void
      {
         var _loc2_:§-V§ = null;
         while(this.§`T§.length)
         {
            _loc2_ = this.§`T§.pop();
            this.§?>§.removeChild(_loc2_.§&%§);
            param1.§]1§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§-V§ = null;
         var _loc2_:int = this.§`T§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§`T§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§?>§.removeChild(_loc3_.§&%§);
               _loc3_.dispose();
               this.§`T§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §'s§(param1:Number, param2:Number) : void
      {
         this.§?>§.x = -param1;
         this.§?>§.y = -param2;
      }
   }
}
