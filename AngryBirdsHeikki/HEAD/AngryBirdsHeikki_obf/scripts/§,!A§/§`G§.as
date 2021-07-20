package §,!A§
{
   import §6!;§.Sprite;
   
   public class §`G§
   {
       
      
      private var §4O§:Vector.<§-q§>;
      
      private var §'v§:Sprite;
      
      public function §`G§()
      {
         this.§4O§ = new Vector.<§-q§>();
         this.§'v§ = new Sprite();
         super();
         this.§'v§.§`T§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'v§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-q§ = null;
         while(this.§4O§.length)
         {
            _loc1_ = this.§4O§.pop();
            _loc1_.dispose();
         }
         this.§'v§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§-q§ = null;
         while(this.§4O§.length)
         {
            _loc1_ = this.§4O§.pop();
            this.§'v§.removeChild(_loc1_.§`!Y§);
            _loc1_.dispose();
         }
         this.§'v§.§null §();
      }
      
      public function addParticle(param1:§-q§) : void
      {
         this.§4O§.push(param1);
         this.§'v§.addChild(param1.§`!Y§);
      }
      
      public function §&l§(param1:§-q§) : void
      {
         var _loc3_:§-q§ = null;
         var _loc2_:int = this.§4O§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§4O§[_loc2_];
            this.§'v§.removeChild(_loc3_.§`!Y§);
            _loc3_.dispose();
            this.§4O§.splice(_loc2_,1);
         }
      }
      
      public function §@!5§(param1:§`G§) : void
      {
         var _loc2_:§-q§ = null;
         while(this.§4O§.length)
         {
            _loc2_ = this.§4O§.pop();
            this.§'v§.removeChild(_loc2_.§`!Y§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§-q§ = null;
         var _loc2_:int = this.§4O§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4O§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§'v§.removeChild(_loc3_.§`!Y§);
               _loc3_.dispose();
               this.§4O§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §5Q§(param1:Number, param2:Number) : void
      {
         this.§'v§.x = -param1;
         this.§'v§.y = -param2;
      }
   }
}
