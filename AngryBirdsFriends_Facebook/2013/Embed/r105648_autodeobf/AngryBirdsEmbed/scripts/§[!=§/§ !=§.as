package §[!=§
{
   import §;^§.Sprite;
   
   public class § !=§
   {
       
      
      private var §[p§:Vector.<§>Z§>;
      
      private var §%!4§:Sprite;
      
      public function § !=§()
      {
         this.§[p§ = new Vector.<§>Z§>();
         this.§%!4§ = new Sprite();
         super();
         this.§%!4§.§3_§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!4§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>Z§ = null;
         while(this.§[p§.length)
         {
            _loc1_ = this.§[p§.pop();
            _loc1_.dispose();
         }
         this.§%!4§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§>Z§ = null;
         while(this.§[p§.length)
         {
            _loc1_ = this.§[p§.pop();
            this.§%!4§.removeChild(_loc1_.§]d§);
            _loc1_.dispose();
         }
         this.§%!4§.§?m§();
      }
      
      public function §48§(param1:§>Z§) : void
      {
         this.§[p§.push(param1);
         this.§%!4§.addChild(param1.§]d§);
      }
      
      public function §`!4§(param1:§>Z§) : void
      {
         var _loc3_:§>Z§ = null;
         var _loc2_:int = this.§[p§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§[p§[_loc2_];
            this.§%!4§.removeChild(_loc3_.§]d§);
            _loc3_.dispose();
            this.§[p§.splice(_loc2_,1);
         }
      }
      
      public function § !M§(param1:§ !=§) : void
      {
         var _loc2_:§>Z§ = null;
         while(this.§[p§.length)
         {
            _loc2_ = this.§[p§.pop();
            this.§%!4§.removeChild(_loc2_.§]d§);
            param1.§48§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§>Z§ = null;
         var _loc2_:int = this.§[p§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[p§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§%!4§.removeChild(_loc3_.§]d§);
               _loc3_.dispose();
               this.§[p§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §9b§(param1:Number, param2:Number) : void
      {
         this.§%!4§.x = -param1;
         this.§%!4§.y = -param2;
      }
   }
}
