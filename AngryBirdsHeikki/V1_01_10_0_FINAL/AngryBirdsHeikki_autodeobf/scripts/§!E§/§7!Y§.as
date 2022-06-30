package §!E§
{
   import §2Y§.Sprite;
   
   public class §7!Y§
   {
       
      
      private var §@!f§:Vector.<§!U§>;
      
      private var §6!"§:Sprite;
      
      public function §7!Y§()
      {
         this.§@!f§ = new Vector.<§!U§>();
         this.§6!"§ = new Sprite();
         super();
         this.§6!"§.§0!3§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§6!"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!U§ = null;
         while(this.§@!f§.length)
         {
            _loc1_ = this.§@!f§.pop();
            _loc1_.dispose();
         }
         this.§6!"§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§!U§ = null;
         while(this.§@!f§.length)
         {
            _loc1_ = this.§@!f§.pop();
            this.§6!"§.removeChild(_loc1_.§-L§);
            _loc1_.dispose();
         }
         this.§6!"§.§3!0§();
      }
      
      public function addParticle(param1:§!U§) : void
      {
         this.§@!f§.push(param1);
         this.§6!"§.addChild(param1.§-L§);
      }
      
      public function § ^§(param1:§!U§) : void
      {
         var _loc3_:§!U§ = null;
         var _loc2_:int = this.§@!f§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§@!f§[_loc2_];
            this.§6!"§.removeChild(_loc3_.§-L§);
            _loc3_.dispose();
            this.§@!f§.splice(_loc2_,1);
         }
      }
      
      public function §=!D§(param1:§7!Y§) : void
      {
         var _loc2_:§!U§ = null;
         while(this.§@!f§.length)
         {
            _loc2_ = this.§@!f§.pop();
            this.§6!"§.removeChild(_loc2_.§-L§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§!U§ = null;
         var _loc2_:int = this.§@!f§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!f§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§6!"§.removeChild(_loc3_.§-L§);
               _loc3_.dispose();
               this.§@!f§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §51§(param1:Number, param2:Number) : void
      {
         this.§6!"§.x = -param1;
         this.§6!"§.y = -param2;
      }
   }
}
