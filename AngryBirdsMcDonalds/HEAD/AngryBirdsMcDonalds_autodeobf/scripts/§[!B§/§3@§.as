package §[!B§
{
   import §`!n§.Sprite;
   
   public class §3@§
   {
       
      
      private var §-^§:Vector.<§,]§>;
      
      private var §=d§:Sprite;
      
      public function §3@§()
      {
         this.§-^§ = new Vector.<§,]§>();
         this.§=d§ = new Sprite();
         super();
         this.§=d§.§77§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§=d§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,]§ = null;
         while(this.§-^§.length)
         {
            _loc1_ = this.§-^§.pop();
            _loc1_.dispose();
         }
         this.§=d§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§,]§ = null;
         while(this.§-^§.length)
         {
            _loc1_ = this.§-^§.pop();
            this.§=d§.removeChild(_loc1_.§&r§);
            _loc1_.dispose();
         }
         this.§=d§.§+e§();
      }
      
      public function §3X§(param1:§,]§) : void
      {
         this.§-^§.push(param1);
         this.§=d§.addChild(param1.§&r§);
      }
      
      public function §'u§(param1:§,]§) : void
      {
         var _loc3_:§,]§ = null;
         var _loc2_:int = this.§-^§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§-^§[_loc2_];
            this.§=d§.removeChild(_loc3_.§&r§);
            _loc3_.dispose();
            this.§-^§.splice(_loc2_,1);
         }
      }
      
      public function §-!d§(param1:§3@§) : void
      {
         var _loc2_:§,]§ = null;
         while(this.§-^§.length)
         {
            _loc2_ = this.§-^§.pop();
            this.§=d§.removeChild(_loc2_.§&r§);
            param1.§3X§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§,]§ = null;
         var _loc2_:int = this.§-^§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§-^§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§=d§.removeChild(_loc3_.§&r§);
               _loc3_.dispose();
               this.§-^§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §!D§(param1:Number, param2:Number) : void
      {
         this.§=d§.x = -param1;
         this.§=d§.y = -param2;
      }
   }
}
