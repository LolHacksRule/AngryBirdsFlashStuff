package §1!4§
{
   import §^a§.Sprite;
   
   public class §3!^§
   {
       
      
      private var §3I§:Vector.<§7!?§>;
      
      private var §1A§:Sprite;
      
      public function §3!^§()
      {
         this.§3I§ = new Vector.<§7!?§>();
         this.§1A§ = new Sprite();
         super();
         this.§1A§.§;o§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§1A§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7!?§ = null;
         while(this.§3I§.length)
         {
            _loc1_ = this.§3I§.pop();
            _loc1_.dispose();
         }
         this.§1A§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§7!?§ = null;
         while(this.§3I§.length)
         {
            _loc1_ = this.§3I§.pop();
            this.§1A§.removeChild(_loc1_.§<L§);
            _loc1_.dispose();
         }
         this.§1A§.§<!Z§();
      }
      
      public function addParticle(param1:§7!?§) : void
      {
         this.§3I§.push(param1);
         this.§1A§.addChild(param1.§<L§);
      }
      
      public function §>u§(param1:§7!?§) : void
      {
         var _loc3_:§7!?§ = null;
         var _loc2_:int = this.§3I§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§3I§[_loc2_];
            this.§1A§.removeChild(_loc3_.§<L§);
            _loc3_.dispose();
            this.§3I§.splice(_loc2_,1);
         }
      }
      
      public function §[%§(param1:§3!^§) : void
      {
         var _loc2_:§7!?§ = null;
         while(this.§3I§.length)
         {
            _loc2_ = this.§3I§.pop();
            this.§1A§.removeChild(_loc2_.§<L§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§7!?§ = null;
         var _loc2_:int = this.§3I§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3I§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§1A§.removeChild(_loc3_.§<L§);
               _loc3_.dispose();
               this.§3I§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function § !h§(param1:Number, param2:Number) : void
      {
         this.§1A§.x = -param1;
         this.§1A§.y = -param2;
      }
   }
}
