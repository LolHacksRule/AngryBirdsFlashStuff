package §`;§
{
   import §;!Q§.Sprite;
   
   public class §?9§
   {
       
      
      private var §0J§:Vector.<§[E§>;
      
      private var §4A§:Sprite;
      
      public function §?9§()
      {
         this.§0J§ = new Vector.<§[E§>();
         this.§4A§ = new Sprite();
         super();
         this.§4A§.§+!T§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§4A§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[E§ = null;
         while(this.§0J§.length)
         {
            _loc1_ = this.§0J§.pop();
            _loc1_.dispose();
         }
         this.§4A§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§[E§ = null;
         while(this.§0J§.length)
         {
            _loc1_ = this.§0J§.pop();
            this.§4A§.removeChild(_loc1_.§=!;§);
            _loc1_.dispose();
         }
         this.§4A§.§^j§();
      }
      
      public function addParticle(param1:§[E§) : void
      {
         this.§0J§.push(param1);
         this.§4A§.addChild(param1.§=!;§);
      }
      
      public function §8t§(param1:§[E§) : void
      {
         var _loc3_:§[E§ = null;
         var _loc2_:int = this.§0J§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§0J§[_loc2_];
            this.§4A§.removeChild(_loc3_.§=!;§);
            _loc3_.dispose();
            this.§0J§.splice(_loc2_,1);
         }
      }
      
      public function §^!2§(param1:§?9§) : void
      {
         var _loc2_:§[E§ = null;
         while(this.§0J§.length)
         {
            _loc2_ = this.§0J§.pop();
            this.§4A§.removeChild(_loc2_.§=!;§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§[E§ = null;
         var _loc2_:int = this.§0J§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0J§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§4A§.removeChild(_loc3_.§=!;§);
               _loc3_.dispose();
               this.§0J§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §0! §(param1:Number, param2:Number) : void
      {
         this.§4A§.x = -param1;
         this.§4A§.y = -param2;
      }
   }
}
