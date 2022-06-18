package §8g§
{
   import §;q§.Sprite;
   
   public class §?9§
   {
       
      
      private var §2Y§:Vector.<§<D§>;
      
      private var §0N§:Sprite;
      
      public function §?9§()
      {
         this.§2Y§ = new Vector.<§<D§>();
         this.§0N§ = new Sprite();
         super();
         this.§0N§.§9$§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0N§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<D§ = null;
         while(this.§2Y§.length)
         {
            _loc1_ = this.§2Y§.pop();
            _loc1_.dispose();
         }
         this.§0N§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§<D§ = null;
         while(this.§2Y§.length)
         {
            _loc1_ = this.§2Y§.pop();
            this.§0N§.removeChild(_loc1_.§!!>§);
            _loc1_.dispose();
         }
         this.§0N§.§"Z§();
      }
      
      public function §[!5§(param1:§<D§) : void
      {
         this.§2Y§.push(param1);
         this.§0N§.addChild(param1.§!!>§);
      }
      
      public function §'<§(param1:§<D§) : void
      {
         var _loc3_:§<D§ = null;
         var _loc2_:int = this.§2Y§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§2Y§[_loc2_];
            this.§0N§.removeChild(_loc3_.§!!>§);
            _loc3_.dispose();
            this.§2Y§.splice(_loc2_,1);
         }
      }
      
      public function §@I§(param1:§?9§) : void
      {
         var _loc2_:§<D§ = null;
         while(this.§2Y§.length)
         {
            _loc2_ = this.§2Y§.pop();
            this.§0N§.removeChild(_loc2_.§!!>§);
            param1.§[!5§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§<D§ = null;
         var _loc2_:int = this.§2Y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2Y§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§0N§.removeChild(_loc3_.§!!>§);
               _loc3_.dispose();
               this.§2Y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §3%§(param1:Number, param2:Number) : void
      {
         this.§0N§.x = -param1;
         this.§0N§.y = -param2;
      }
   }
}
