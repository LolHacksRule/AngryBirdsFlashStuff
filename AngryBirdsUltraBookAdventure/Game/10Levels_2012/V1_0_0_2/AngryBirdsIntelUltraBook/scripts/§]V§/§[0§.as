package §]V§
{
   import §'!9§.Sprite;
   
   public class §[0§
   {
       
      
      private var §'9§:Vector.<§1!e§>;
      
      private var §'Q§:Sprite;
      
      public function §[0§()
      {
         this.§'9§ = new Vector.<§1!e§>();
         this.§'Q§ = new Sprite();
         super();
         this.§'Q§.§@!U§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'Q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1!e§ = null;
         while(this.§'9§.length)
         {
            _loc1_ = this.§'9§.pop();
            _loc1_.dispose();
         }
         this.§'Q§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§1!e§ = null;
         while(this.§'9§.length)
         {
            _loc1_ = this.§'9§.pop();
            this.§'Q§.removeChild(_loc1_.§0I§);
            _loc1_.dispose();
         }
         this.§'Q§.§=!f§();
      }
      
      public function § K§(param1:§1!e§) : void
      {
         this.§'9§.push(param1);
         this.§'Q§.addChild(param1.§0I§);
      }
      
      public function §3!k§(param1:§1!e§) : void
      {
         var _loc3_:§1!e§ = null;
         var _loc2_:int = this.§'9§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§'9§[_loc2_];
            this.§'Q§.removeChild(_loc3_.§0I§);
            _loc3_.dispose();
            this.§'9§.splice(_loc2_,1);
         }
      }
      
      public function §%$§(param1:§[0§) : void
      {
         var _loc2_:§1!e§ = null;
         while(this.§'9§.length)
         {
            _loc2_ = this.§'9§.pop();
            this.§'Q§.removeChild(_loc2_.§0I§);
            param1.§ K§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§1!e§ = null;
         var _loc2_:int = this.§'9§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§'9§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§'Q§.removeChild(_loc3_.§0I§);
               _loc3_.dispose();
               this.§'9§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §#;§(param1:Number, param2:Number) : void
      {
         this.§'Q§.x = -param1;
         this.§'Q§.y = -param2;
      }
   }
}
