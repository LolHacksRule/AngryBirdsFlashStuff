package §7E§
{
   import §3H§.Sprite;
   
   public class §+!<§
   {
       
      
      private var §0!!§:Vector.<§^A§>;
      
      private var §2>§:Sprite;
      
      public function §+!<§()
      {
         this.§0!!§ = new Vector.<§^A§>();
         this.§2>§ = new Sprite();
         super();
         this.§2>§.§6c§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§2>§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^A§ = null;
         while(this.§0!!§.length)
         {
            _loc1_ = this.§0!!§.pop();
            _loc1_.dispose();
         }
         this.§2>§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§^A§ = null;
         while(this.§0!!§.length)
         {
            _loc1_ = this.§0!!§.pop();
            this.§2>§.removeChild(_loc1_.§'"§);
            _loc1_.dispose();
         }
         this.§2>§.§0!J§();
      }
      
      public function addParticle(param1:§^A§) : void
      {
         this.§0!!§.push(param1);
         this.§2>§.addChild(param1.§'"§);
      }
      
      public function §-m§(param1:§^A§) : void
      {
         var _loc3_:§^A§ = null;
         var _loc2_:int = this.§0!!§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§0!!§[_loc2_];
            this.§2>§.removeChild(_loc3_.§'"§);
            _loc3_.dispose();
            this.§0!!§.splice(_loc2_,1);
         }
      }
      
      public function §9!0§(param1:§+!<§) : void
      {
         var _loc2_:§^A§ = null;
         while(this.§0!!§.length)
         {
            _loc2_ = this.§0!!§.pop();
            this.§2>§.removeChild(_loc2_.§'"§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§^A§ = null;
         var _loc2_:int = this.§0!!§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0!!§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§2>§.removeChild(_loc3_.§'"§);
               _loc3_.dispose();
               this.§0!!§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §'T§(param1:Number, param2:Number) : void
      {
         this.§2>§.x = -param1;
         this.§2>§.y = -param2;
      }
   }
}
