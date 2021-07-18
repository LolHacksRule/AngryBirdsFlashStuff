package §0! §
{
   import §]@§.Sprite;
   
   public class §"!0§
   {
       
      
      private var §#r§:Vector.<§7o§>;
      
      private var §]!?§:Sprite;
      
      public function §"!0§()
      {
         this.§#r§ = new Vector.<§7o§>();
         this.§]!?§ = new Sprite();
         super();
         this.§]!?§.§^f§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!?§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7o§ = null;
         while(this.§#r§.length)
         {
            _loc1_ = this.§#r§.pop();
            _loc1_.dispose();
         }
         this.§]!?§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§7o§ = null;
         while(this.§#r§.length)
         {
            _loc1_ = this.§#r§.pop();
            this.§]!?§.removeChild(_loc1_.§'!W§);
            _loc1_.dispose();
         }
         this.§]!?§.§#8§();
      }
      
      public function addParticle(param1:§7o§) : void
      {
         this.§#r§.push(param1);
         this.§]!?§.addChild(param1.§'!W§);
      }
      
      public function §6Z§(param1:§7o§) : void
      {
         var _loc3_:§7o§ = null;
         var _loc2_:int = this.§#r§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§#r§[_loc2_];
            this.§]!?§.removeChild(_loc3_.§'!W§);
            _loc3_.dispose();
            this.§#r§.splice(_loc2_,1);
         }
      }
      
      public function §"!6§(param1:§"!0§) : void
      {
         var _loc2_:§7o§ = null;
         while(this.§#r§.length)
         {
            _loc2_ = this.§#r§.pop();
            this.§]!?§.removeChild(_loc2_.§'!W§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§7o§ = null;
         var _loc2_:int = this.§#r§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#r§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§]!?§.removeChild(_loc3_.§'!W§);
               _loc3_.dispose();
               this.§#r§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §;!H§(param1:Number, param2:Number) : void
      {
         this.§]!?§.x = -param1;
         this.§]!?§.y = -param2;
      }
   }
}
