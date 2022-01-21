package §9!C§
{
   import §0@§.Sprite;
   
   public class §"!D§
   {
       
      
      private var §&$§:Vector.<§3!f§>;
      
      private var §in§:Sprite;
      
      public function §"!D§()
      {
         this.§&$§ = new Vector.<§3!f§>();
         this.§in§ = new Sprite();
         super();
         this.§in§.§;Y§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§in§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3!f§ = null;
         while(this.§&$§.length)
         {
            _loc1_ = this.§&$§.pop();
            _loc1_.dispose();
         }
         this.§in§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§3!f§ = null;
         while(this.§&$§.length)
         {
            _loc1_ = this.§&$§.pop();
            this.§in§.removeChild(_loc1_.§<K§);
            _loc1_.dispose();
         }
         this.§in§.§=Z§();
      }
      
      public function §4!2§(param1:§3!f§) : void
      {
         this.§&$§.push(param1);
         this.§in§.addChild(param1.§<K§);
      }
      
      public function §@!=§(param1:§3!f§) : void
      {
         var _loc3_:§3!f§ = null;
         var _loc2_:int = this.§&$§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§&$§[_loc2_];
            this.§in§.removeChild(_loc3_.§<K§);
            _loc3_.dispose();
            this.§&$§.splice(_loc2_,1);
         }
      }
      
      public function §%b§(param1:§"!D§) : void
      {
         var _loc2_:§3!f§ = null;
         while(this.§&$§.length)
         {
            _loc2_ = this.§&$§.pop();
            this.§in§.removeChild(_loc2_.§<K§);
            param1.§4!2§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§3!f§ = null;
         var _loc2_:int = this.§&$§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&$§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§in§.removeChild(_loc3_.§<K§);
               _loc3_.dispose();
               this.§&$§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §51§(param1:Number, param2:Number) : void
      {
         this.§in§.x = -param1;
         this.§in§.y = -param2;
      }
   }
}
