package §27§
{
   import §7u§.Sprite;
   
   public class §3Y§
   {
       
      
      private var §2V§:Vector.<§4+§>;
      
      private var §3]§:Sprite;
      
      public function §3Y§()
      {
         this.§2V§ = new Vector.<§4+§>();
         this.§3]§ = new Sprite();
         super();
         this.§3]§.§^!Y§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§3]§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4+§ = null;
         while(this.§2V§.length)
         {
            _loc1_ = this.§2V§.pop();
            _loc1_.dispose();
         }
         this.§3]§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§4+§ = null;
         while(this.§2V§.length)
         {
            _loc1_ = this.§2V§.pop();
            this.§3]§.removeChild(_loc1_.§^z§);
            _loc1_.dispose();
         }
         this.§3]§.§+H§();
      }
      
      public function addParticle(param1:§4+§) : void
      {
         this.§2V§.push(param1);
         this.§3]§.addChild(param1.§^z§);
      }
      
      public function §%G§(param1:§4+§) : void
      {
         var _loc3_:§4+§ = null;
         var _loc2_:int = this.§2V§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§2V§[_loc2_];
            this.§3]§.removeChild(_loc3_.§^z§);
            _loc3_.dispose();
            this.§2V§.splice(_loc2_,1);
         }
      }
      
      public function §-!T§(param1:§3Y§) : void
      {
         var _loc2_:§4+§ = null;
         while(this.§2V§.length)
         {
            _loc2_ = this.§2V§.pop();
            this.§3]§.removeChild(_loc2_.§^z§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§4+§ = null;
         var _loc2_:int = this.§2V§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2V§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§3]§.removeChild(_loc3_.§^z§);
               _loc3_.dispose();
               this.§2V§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §=J§(param1:Number, param2:Number) : void
      {
         this.§3]§.x = -param1;
         this.§3]§.y = -param2;
      }
   }
}
