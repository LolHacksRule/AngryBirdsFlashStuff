package §!!%§
{
   import §!!R§.Sprite;
   
   public class §!!E§
   {
       
      
      private var §@!F§:Vector.<§?f§>;
      
      private var §8!B§:Sprite;
      
      public function §!!E§()
      {
         this.§@!F§ = new Vector.<§?f§>();
         this.§8!B§ = new Sprite();
         super();
         this.§8!B§.§],§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!B§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?f§ = null;
         while(this.§@!F§.length)
         {
            _loc1_ = this.§@!F§.pop();
            _loc1_.dispose();
         }
         this.§8!B§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§?f§ = null;
         while(this.§@!F§.length)
         {
            _loc1_ = this.§@!F§.pop();
            this.§8!B§.removeChild(_loc1_.§ 7§);
            _loc1_.dispose();
         }
         this.§8!B§.§5!;§();
      }
      
      public function addParticle(param1:§?f§) : void
      {
         this.§@!F§.push(param1);
         this.§8!B§.addChild(param1.§ 7§);
      }
      
      public function §08§(param1:§?f§) : void
      {
         var _loc3_:§?f§ = null;
         var _loc2_:int = this.§@!F§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§@!F§[_loc2_];
            this.§8!B§.removeChild(_loc3_.§ 7§);
            _loc3_.dispose();
            this.§@!F§.splice(_loc2_,1);
         }
      }
      
      public function §`]§(param1:§!!E§) : void
      {
         var _loc2_:§?f§ = null;
         while(this.§@!F§.length)
         {
            _loc2_ = this.§@!F§.pop();
            this.§8!B§.removeChild(_loc2_.§ 7§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§?f§ = null;
         var _loc2_:int = this.§@!F§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!F§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§8!B§.removeChild(_loc3_.§ 7§);
               _loc3_.dispose();
               this.§@!F§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §[W§(param1:Number, param2:Number) : void
      {
         this.§8!B§.x = -param1;
         this.§8!B§.y = -param2;
      }
   }
}
