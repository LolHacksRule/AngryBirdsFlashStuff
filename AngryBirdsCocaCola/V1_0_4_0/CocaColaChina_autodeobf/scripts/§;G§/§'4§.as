package §;G§
{
   import § !K§.Sprite;
   
   public class §'4§
   {
       
      
      private var §0!D§:Vector.<§;Z§>;
      
      private var §,L§:Sprite;
      
      public function §'4§()
      {
         this.§0!D§ = new Vector.<§;Z§>();
         this.§,L§ = new Sprite();
         super();
         this.§,L§.§^Y§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§,L§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;Z§ = null;
         while(this.§0!D§.length)
         {
            _loc1_ = this.§0!D§.pop();
            _loc1_.dispose();
         }
         this.§,L§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§;Z§ = null;
         while(this.§0!D§.length)
         {
            _loc1_ = this.§0!D§.pop();
            this.§,L§.removeChild(_loc1_.§4!P§);
            _loc1_.dispose();
         }
         this.§,L§.§8!L§();
      }
      
      public function §#!Q§(param1:§;Z§) : void
      {
         this.§0!D§.push(param1);
         this.§,L§.addChild(param1.§4!P§);
      }
      
      public function §3!V§(param1:§;Z§) : void
      {
         var _loc3_:§;Z§ = null;
         var _loc2_:int = this.§0!D§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§0!D§[_loc2_];
            this.§,L§.removeChild(_loc3_.§4!P§);
            _loc3_.dispose();
            this.§0!D§.splice(_loc2_,1);
         }
      }
      
      public function §,l§(param1:§'4§) : void
      {
         var _loc2_:§;Z§ = null;
         while(this.§0!D§.length)
         {
            _loc2_ = this.§0!D§.pop();
            this.§,L§.removeChild(_loc2_.§4!P§);
            param1.§#!Q§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§;Z§ = null;
         var _loc2_:int = this.§0!D§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0!D§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§,L§.removeChild(_loc3_.§4!P§);
               _loc3_.dispose();
               this.§0!D§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §8!Y§(param1:Number, param2:Number) : void
      {
         this.§,L§.x = -param1;
         this.§,L§.y = -param2;
      }
   }
}
