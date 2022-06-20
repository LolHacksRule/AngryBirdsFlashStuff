package §%$0§
{
   import §#Z§.Sprite;
   
   public class §`#H§
   {
       
      
      private var §5#N§:Vector.<§`#I§>;
      
      private var §'o§:Sprite;
      
      public function §`#H§()
      {
         this.§5#N§ = new Vector.<§`#I§>();
         this.§'o§ = new Sprite();
         super();
         this.§'o§.§^"$§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'o§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`#I§ = null;
         while(this.§5#N§.length)
         {
            _loc1_ = this.§5#N§.pop();
            _loc1_.dispose();
         }
         this.§'o§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§`#I§ = null;
         while(this.§5#N§.length)
         {
            _loc1_ = this.§5#N§.pop();
            this.§'o§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§'o§.§>+§();
      }
      
      public function addParticle(param1:§`#I§) : void
      {
         this.§5#N§.push(param1);
         this.§'o§.addChild(param1.displayObject);
      }
      
      public function §6$&§(param1:§`#I§) : void
      {
         var _loc3_:§`#I§ = null;
         var _loc2_:int = this.§5#N§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§5#N§[_loc2_];
            this.§'o§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§5#N§.splice(_loc2_,1);
         }
      }
      
      public function §##5§(param1:§`#H§) : void
      {
         var _loc2_:§`#I§ = null;
         while(this.§5#N§.length)
         {
            _loc2_ = this.§5#N§.pop();
            this.§'o§.removeChild(_loc2_.displayObject);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§`#I§ = null;
         var _loc2_:int = this.§5#N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§5#N§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§'o§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§5#N§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §0>§(param1:Number, param2:Number) : void
      {
         this.§'o§.x = -param1;
         this.§'o§.y = -param2;
      }
   }
}
