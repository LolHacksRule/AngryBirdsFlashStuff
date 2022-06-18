package §8e§
{
   import §&!5§.Sprite;
   
   public class §9$§
   {
       
      
      private var §default§:Vector.<§"!U§>;
      
      private var §`E§:Sprite;
      
      public function §9$§()
      {
         this.§default§ = new Vector.<§"!U§>();
         this.§`E§ = new Sprite();
         super();
         this.§`E§.§7!9§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"!U§ = null;
         while(this.§default§.length)
         {
            _loc1_ = this.§default§.pop();
            _loc1_.dispose();
         }
         this.§`E§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§"!U§ = null;
         while(this.§default§.length)
         {
            _loc1_ = this.§default§.pop();
            this.§`E§.removeChild(_loc1_.§3D§);
            _loc1_.dispose();
         }
         this.§`E§.§84§();
      }
      
      public function addParticle(param1:§"!U§) : void
      {
         this.§default§.push(param1);
         this.§`E§.addChild(param1.§3D§);
      }
      
      public function §6n§(param1:§"!U§) : void
      {
         var _loc3_:§"!U§ = null;
         var _loc2_:int = this.§default§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§default§[_loc2_];
            this.§`E§.removeChild(_loc3_.§3D§);
            _loc3_.dispose();
            this.§default§.splice(_loc2_,1);
         }
      }
      
      public function §`![§(param1:§9$§) : void
      {
         var _loc2_:§"!U§ = null;
         while(this.§default§.length)
         {
            _loc2_ = this.§default§.pop();
            this.§`E§.removeChild(_loc2_.§3D§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§"!U§ = null;
         var _loc2_:int = this.§default§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§default§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§`E§.removeChild(_loc3_.§3D§);
               _loc3_.dispose();
               this.§default§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §%!L§(param1:Number, param2:Number) : void
      {
         this.§`E§.x = -param1;
         this.§`E§.y = -param2;
      }
   }
}
