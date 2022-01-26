package §98§
{
   import §null §.Sprite;
   
   public class §^G§
   {
       
      
      private var §&`§:Vector.<§=!F§>;
      
      private var §5X§:Sprite;
      
      public function §^G§()
      {
         this.§&`§ = new Vector.<§=!F§>();
         this.§5X§ = new Sprite();
         super();
         this.§5X§.§[;§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§5X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!F§ = null;
         while(this.§&`§.length)
         {
            _loc1_ = this.§&`§.pop();
            _loc1_.dispose();
         }
         this.§5X§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§=!F§ = null;
         while(this.§&`§.length)
         {
            _loc1_ = this.§&`§.pop();
            this.§5X§.removeChild(_loc1_.§;h§);
            _loc1_.dispose();
         }
         this.§5X§.§1c§();
      }
      
      public function addParticle(param1:§=!F§) : void
      {
         this.§&`§.push(param1);
         this.§5X§.addChild(param1.§;h§);
      }
      
      public function §0J§(param1:§=!F§) : void
      {
         var _loc3_:§=!F§ = null;
         var _loc2_:int = this.§&`§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§&`§[_loc2_];
            this.§5X§.removeChild(_loc3_.§;h§);
            _loc3_.dispose();
            this.§&`§.splice(_loc2_,1);
         }
      }
      
      public function §<z§(param1:§^G§) : void
      {
         var _loc2_:§=!F§ = null;
         while(this.§&`§.length)
         {
            _loc2_ = this.§&`§.pop();
            this.§5X§.removeChild(_loc2_.§;h§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§=!F§ = null;
         var _loc2_:int = this.§&`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&`§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§5X§.removeChild(_loc3_.§;h§);
               _loc3_.dispose();
               this.§&`§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §0R§(param1:Number, param2:Number) : void
      {
         this.§5X§.x = -param1;
         this.§5X§.y = -param2;
      }
   }
}
