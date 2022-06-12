package §<f§
{
   import §^I§.Sprite;
   
   public class §%!'§
   {
       
      
      private var §9&§:Vector.<§7!0§>;
      
      private var §7I§:Sprite;
      
      public function §%!'§()
      {
         this.§9&§ = new Vector.<§7!0§>();
         this.§7I§ = new Sprite();
         super();
         this.§7I§.§<"!§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§7I§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7!0§ = null;
         while(this.§9&§.length)
         {
            _loc1_ = this.§9&§.pop();
            _loc1_.dispose();
         }
         this.§7I§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§7!0§ = null;
         while(this.§9&§.length)
         {
            _loc1_ = this.§9&§.pop();
            this.§7I§.removeChild(_loc1_.§9!T§);
            _loc1_.dispose();
         }
         this.§7I§.§-!=§();
      }
      
      public function §`!N§(param1:§7!0§) : void
      {
         this.§9&§.push(param1);
         this.§7I§.addChild(param1.§9!T§);
      }
      
      public function §2!B§(param1:§7!0§) : void
      {
         var _loc3_:§7!0§ = null;
         var _loc2_:int = this.§9&§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§9&§[_loc2_];
            this.§7I§.removeChild(_loc3_.§9!T§);
            _loc3_.dispose();
            this.§9&§.splice(_loc2_,1);
         }
      }
      
      public function §0!]§(param1:§%!'§) : void
      {
         var _loc2_:§7!0§ = null;
         while(this.§9&§.length)
         {
            _loc2_ = this.§9&§.pop();
            this.§7I§.removeChild(_loc2_.§9!T§);
            param1.§`!N§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§7!0§ = null;
         var _loc2_:int = this.§9&§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9&§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§7I§.removeChild(_loc3_.§9!T§);
               _loc3_.dispose();
               this.§9&§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §9!>§(param1:Number, param2:Number) : void
      {
         this.§7I§.x = -param1;
         this.§7I§.y = -param2;
      }
   }
}
