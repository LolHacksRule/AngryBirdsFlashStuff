package §#N§
{
   import §-!`§.Sprite;
   
   public class §>M§
   {
       
      
      private var §%4§:Vector.<§!r§>;
      
      private var §7f§:Sprite;
      
      public function §>M§()
      {
         this.§%4§ = new Vector.<§!r§>();
         this.§7f§ = new Sprite();
         super();
         this.§7f§.§[,§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§7f§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!r§ = null;
         while(this.§%4§.length)
         {
            _loc1_ = this.§%4§.pop();
            _loc1_.dispose();
         }
         this.§7f§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§!r§ = null;
         while(this.§%4§.length)
         {
            _loc1_ = this.§%4§.pop();
            this.§7f§.removeChild(_loc1_.§>[§);
            _loc1_.dispose();
         }
         this.§7f§.§!u§();
      }
      
      public function §1&§(param1:§!r§) : void
      {
         this.§%4§.push(param1);
         this.§7f§.addChild(param1.§>[§);
      }
      
      public function §0W§(param1:§!r§) : void
      {
         var _loc3_:§!r§ = null;
         var _loc2_:int = this.§%4§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§%4§[_loc2_];
            this.§7f§.removeChild(_loc3_.§>[§);
            _loc3_.dispose();
            this.§%4§.splice(_loc2_,1);
         }
      }
      
      public function §,!J§(param1:§>M§) : void
      {
         var _loc2_:§!r§ = null;
         while(this.§%4§.length)
         {
            _loc2_ = this.§%4§.pop();
            this.§7f§.removeChild(_loc2_.§>[§);
            param1.§1&§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§!r§ = null;
         var _loc2_:int = this.§%4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§%4§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§7f§.removeChild(_loc3_.§>[§);
               _loc3_.dispose();
               this.§%4§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §4O§(param1:Number, param2:Number) : void
      {
         this.§7f§.x = -param1;
         this.§7f§.y = -param2;
      }
   }
}
