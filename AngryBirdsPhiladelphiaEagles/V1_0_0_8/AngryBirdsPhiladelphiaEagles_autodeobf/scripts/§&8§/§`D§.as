package §&8§
{
   import §-!'§.Sprite;
   
   public class §`D§
   {
       
      
      private var §&!2§:Vector.<§5Z§>;
      
      private var §0?§:Sprite;
      
      public function §`D§()
      {
         this.§&!2§ = new Vector.<§5Z§>();
         this.§0?§ = new Sprite();
         super();
         this.§0?§.§=!5§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0?§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§5Z§ = null;
         while(this.§&!2§.length)
         {
            _loc1_ = this.§&!2§.pop();
            _loc1_.dispose();
         }
         this.§0?§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§5Z§ = null;
         while(this.§&!2§.length)
         {
            _loc1_ = this.§&!2§.pop();
            this.§0?§.removeChild(_loc1_.§extends§);
            _loc1_.dispose();
         }
         this.§0?§.§@!N§();
      }
      
      public function addParticle(param1:§5Z§) : void
      {
         this.§&!2§.push(param1);
         this.§0?§.addChild(param1.§extends§);
      }
      
      public function §9c§(param1:§5Z§) : void
      {
         var _loc3_:§5Z§ = null;
         var _loc2_:int = this.§&!2§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§&!2§[_loc2_];
            this.§0?§.removeChild(_loc3_.§extends§);
            _loc3_.dispose();
            this.§&!2§.splice(_loc2_,1);
         }
      }
      
      public function §#!6§(param1:§`D§) : void
      {
         var _loc2_:§5Z§ = null;
         while(this.§&!2§.length)
         {
            _loc2_ = this.§&!2§.pop();
            this.§0?§.removeChild(_loc2_.§extends§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§5Z§ = null;
         var _loc2_:int = this.§&!2§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&!2§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§0?§.removeChild(_loc3_.§extends§);
               _loc3_.dispose();
               this.§&!2§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §-'§(param1:Number, param2:Number) : void
      {
         this.§0?§.x = -param1;
         this.§0?§.y = -param2;
      }
   }
}
