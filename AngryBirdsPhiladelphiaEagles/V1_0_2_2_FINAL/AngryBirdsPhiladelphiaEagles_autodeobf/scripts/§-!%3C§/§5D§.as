package §-!<§
{
   import § N§.Sprite;
   
   public class §5D§
   {
       
      
      private var §6l§:Vector.<§8R§>;
      
      private var §"F§:Sprite;
      
      public function §5D§()
      {
         this.§6l§ = new Vector.<§8R§>();
         this.§"F§ = new Sprite();
         super();
         this.§"F§.§!!"§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§"F§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8R§ = null;
         while(this.§6l§.length)
         {
            _loc1_ = this.§6l§.pop();
            _loc1_.dispose();
         }
         this.§"F§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§8R§ = null;
         while(this.§6l§.length)
         {
            _loc1_ = this.§6l§.pop();
            this.§"F§.removeChild(_loc1_.§-!-§);
            _loc1_.dispose();
         }
         this.§"F§.§1j§();
      }
      
      public function addParticle(param1:§8R§) : void
      {
         this.§6l§.push(param1);
         this.§"F§.addChild(param1.§-!-§);
      }
      
      public function § use§(param1:§8R§) : void
      {
         var _loc3_:§8R§ = null;
         var _loc2_:int = this.§6l§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§6l§[_loc2_];
            this.§"F§.removeChild(_loc3_.§-!-§);
            _loc3_.dispose();
            this.§6l§.splice(_loc2_,1);
         }
      }
      
      public function §1!0§(param1:§5D§) : void
      {
         var _loc2_:§8R§ = null;
         while(this.§6l§.length)
         {
            _loc2_ = this.§6l§.pop();
            this.§"F§.removeChild(_loc2_.§-!-§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§8R§ = null;
         var _loc2_:int = this.§6l§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§6l§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§"F§.removeChild(_loc3_.§-!-§);
               _loc3_.dispose();
               this.§6l§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §0!0§(param1:Number, param2:Number) : void
      {
         this.§"F§.x = -param1;
         this.§"F§.y = -param2;
      }
   }
}
