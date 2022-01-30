package §!R§
{
   import §@!i§.Sprite;
   
   public class §=h§
   {
       
      
      private var §'Z§:Vector.<§8u§>;
      
      private var §;!f§:Sprite;
      
      public function §=h§()
      {
         this.§'Z§ = new Vector.<§8u§>();
         this.§;!f§ = new Sprite();
         super();
         this.§;!f§.§"!f§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!f§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8u§ = null;
         while(this.§'Z§.length)
         {
            _loc1_ = this.§'Z§.pop();
            _loc1_.dispose();
         }
         this.§;!f§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§8u§ = null;
         while(this.§'Z§.length)
         {
            _loc1_ = this.§'Z§.pop();
            this.§;!f§.removeChild(_loc1_.§@>§);
            _loc1_.dispose();
         }
         this.§;!f§.§0o§();
      }
      
      public function §""#§(param1:§8u§) : void
      {
         this.§'Z§.push(param1);
         this.§;!f§.addChild(param1.§@>§);
      }
      
      public function §'!7§(param1:§8u§) : void
      {
         var _loc3_:§8u§ = null;
         var _loc2_:int = this.§'Z§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§'Z§[_loc2_];
            this.§;!f§.removeChild(_loc3_.§@>§);
            _loc3_.dispose();
            this.§'Z§.splice(_loc2_,1);
         }
      }
      
      public function §+L§(param1:§=h§) : void
      {
         var _loc2_:§8u§ = null;
         while(this.§'Z§.length)
         {
            _loc2_ = this.§'Z§.pop();
            this.§;!f§.removeChild(_loc2_.§@>§);
            param1.§""#§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§8u§ = null;
         var _loc2_:int = this.§'Z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§'Z§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§;!f§.removeChild(_loc3_.§@>§);
               _loc3_.dispose();
               this.§'Z§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §,7§(param1:Number, param2:Number) : void
      {
         this.§;!f§.x = -param1;
         this.§;!f§.y = -param2;
      }
   }
}
