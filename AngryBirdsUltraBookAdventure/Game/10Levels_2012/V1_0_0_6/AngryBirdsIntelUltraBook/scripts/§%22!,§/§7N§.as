package §"!,§
{
   import §7!B§.Sprite;
   
   public class §7N§
   {
       
      
      private var §]=§:Vector.<§9!B§>;
      
      private var § t§:Sprite;
      
      public function §7N§()
      {
         this.§]=§ = new Vector.<§9!B§>();
         this.§ t§ = new Sprite();
         super();
         this.§ t§.§]!F§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!B§ = null;
         while(this.§]=§.length)
         {
            _loc1_ = this.§]=§.pop();
            _loc1_.dispose();
         }
         this.§ t§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§9!B§ = null;
         while(this.§]=§.length)
         {
            _loc1_ = this.§]=§.pop();
            this.§ t§.removeChild(_loc1_.§[!s§);
            _loc1_.dispose();
         }
         this.§ t§.§&-§();
      }
      
      public function §#Z§(param1:§9!B§) : void
      {
         this.§]=§.push(param1);
         this.§ t§.addChild(param1.§[!s§);
      }
      
      public function § !=§(param1:§9!B§) : void
      {
         var _loc3_:§9!B§ = null;
         var _loc2_:int = this.§]=§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§]=§[_loc2_];
            this.§ t§.removeChild(_loc3_.§[!s§);
            _loc3_.dispose();
            this.§]=§.splice(_loc2_,1);
         }
      }
      
      public function §,I§(param1:§7N§) : void
      {
         var _loc2_:§9!B§ = null;
         while(this.§]=§.length)
         {
            _loc2_ = this.§]=§.pop();
            this.§ t§.removeChild(_loc2_.§[!s§);
            param1.§#Z§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§9!B§ = null;
         var _loc2_:int = this.§]=§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]=§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§ t§.removeChild(_loc3_.§[!s§);
               _loc3_.dispose();
               this.§]=§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §!^§(param1:Number, param2:Number) : void
      {
         this.§ t§.x = -param1;
         this.§ t§.y = -param2;
      }
   }
}
