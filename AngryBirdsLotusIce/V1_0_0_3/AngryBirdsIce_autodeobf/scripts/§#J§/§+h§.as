package §#J§
{
   import §^V§.Sprite;
   
   public class §+h§
   {
       
      
      private var §;!4§:Vector.<§'b§>;
      
      private var §%C§:Sprite;
      
      public function §+h§()
      {
         this.§;!4§ = new Vector.<§'b§>();
         this.§%C§ = new Sprite();
         super();
         this.§%C§.§<!<§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§%C§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'b§ = null;
         while(this.§;!4§.length)
         {
            _loc1_ = this.§;!4§.pop();
            _loc1_.dispose();
         }
         this.§%C§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§'b§ = null;
         while(this.§;!4§.length)
         {
            _loc1_ = this.§;!4§.pop();
            this.§%C§.removeChild(_loc1_.§return§);
            _loc1_.dispose();
         }
         this.§%C§.§]P§();
      }
      
      public function §-X§(param1:§'b§) : void
      {
         this.§;!4§.push(param1);
         this.§%C§.addChild(param1.§return§);
      }
      
      public function §"!=§(param1:§'b§) : void
      {
         var _loc3_:§'b§ = null;
         var _loc2_:int = this.§;!4§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§;!4§[_loc2_];
            this.§%C§.removeChild(_loc3_.§return§);
            _loc3_.dispose();
            this.§;!4§.splice(_loc2_,1);
         }
      }
      
      public function §29§(param1:§+h§) : void
      {
         var _loc2_:§'b§ = null;
         while(this.§;!4§.length)
         {
            _loc2_ = this.§;!4§.pop();
            this.§%C§.removeChild(_loc2_.§return§);
            param1.§-X§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§'b§ = null;
         var _loc2_:int = this.§;!4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;!4§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§%C§.removeChild(_loc3_.§return§);
               _loc3_.dispose();
               this.§;!4§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §85§(param1:Number, param2:Number) : void
      {
         this.§%C§.x = -param1;
         this.§%C§.y = -param2;
      }
   }
}
