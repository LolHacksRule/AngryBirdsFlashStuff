package §82§
{
   import §0!Y§.Sprite;
   
   public class §-!5§
   {
       
      
      private var § each§:Vector.<§%v§>;
      
      private var §#t§:Sprite;
      
      public function §-!5§()
      {
         this.§ each§ = new Vector.<§%v§>();
         this.§#t§ = new Sprite();
         super();
         this.§#t§.§9"$§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§#t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%v§ = null;
         while(this.§ each§.length)
         {
            _loc1_ = this.§ each§.pop();
            _loc1_.dispose();
         }
         this.§#t§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§%v§ = null;
         while(this.§ each§.length)
         {
            _loc1_ = this.§ each§.pop();
            this.§#t§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§#t§.§<!7§();
      }
      
      public function §;!9§(param1:§%v§) : void
      {
         this.§ each§.push(param1);
         this.§#t§.addChild(param1.displayObject);
      }
      
      public function §;!i§(param1:§%v§) : void
      {
         var _loc3_:§%v§ = null;
         var _loc2_:int = this.§ each§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§ each§[_loc2_];
            this.§#t§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§ each§.splice(_loc2_,1);
         }
      }
      
      public function §5X§(param1:§-!5§) : void
      {
         var _loc2_:§%v§ = null;
         while(this.§ each§.length)
         {
            _loc2_ = this.§ each§.pop();
            this.§#t§.removeChild(_loc2_.displayObject);
            param1.§;!9§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§%v§ = null;
         var _loc2_:int = this.§ each§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§ each§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§#t§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§ each§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §>§(param1:Number, param2:Number) : void
      {
         this.§#t§.x = -param1;
         this.§#t§.y = -param2;
      }
   }
}
