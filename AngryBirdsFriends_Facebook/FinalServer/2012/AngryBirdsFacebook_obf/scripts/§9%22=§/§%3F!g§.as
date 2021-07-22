package §9"=§
{
   import §]!v§.Sprite;
   
   public class §?!g§
   {
       
      
      private var §0!i§:Vector.<§4! §>;
      
      private var §+<§:Sprite;
      
      public function §?!g§()
      {
         this.§0!i§ = new Vector.<§4! §>();
         this.§+<§ = new Sprite();
         super();
         this.§+<§.§5! § = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§+<§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4! § = null;
         while(this.§0!i§.length)
         {
            _loc1_ = this.§0!i§.pop();
            _loc1_.dispose();
         }
         this.§+<§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§4! § = null;
         while(this.§0!i§.length)
         {
            _loc1_ = this.§0!i§.pop();
            this.§+<§.removeChild(_loc1_.§"!+§);
            _loc1_.dispose();
         }
         this.§+<§.§ 9§();
      }
      
      public function §`"6§(param1:§4! §) : void
      {
         this.§0!i§.push(param1);
         this.§+<§.addChild(param1.§"!+§);
      }
      
      public function §,;§(param1:§4! §) : void
      {
         var _loc3_:§4! § = null;
         var _loc2_:int = this.§0!i§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§0!i§[_loc2_];
            this.§+<§.removeChild(_loc3_.§"!+§);
            _loc3_.dispose();
            this.§0!i§.splice(_loc2_,1);
         }
      }
      
      public function §-"&§(param1:§?!g§) : void
      {
         var _loc2_:§4! § = null;
         while(this.§0!i§.length)
         {
            _loc2_ = this.§0!i§.pop();
            this.§+<§.removeChild(_loc2_.§"!+§);
            param1.§`"6§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§4! § = null;
         var _loc2_:int = this.§0!i§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0!i§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§+<§.removeChild(_loc3_.§"!+§);
               _loc3_.dispose();
               this.§0!i§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §9!Y§(param1:Number, param2:Number) : void
      {
         this.§+<§.x = -param1;
         this.§+<§.y = -param2;
      }
   }
}
