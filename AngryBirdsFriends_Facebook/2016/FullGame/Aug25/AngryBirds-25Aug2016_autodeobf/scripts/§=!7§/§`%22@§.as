package §=!7§
{
   import §9$§.Sprite;
   
   public class §`"@§
   {
       
      
      private var §%"b§:Vector.<§=$4§>;
      
      private var §7!j§:Sprite;
      
      public function §`"@§()
      {
         this.§%"b§ = new Vector.<§=$4§>();
         this.§7!j§ = new Sprite();
         super();
         this.§7!j§.§0$6§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§7!j§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=$4§ = null;
         while(this.§%"b§.length)
         {
            _loc1_ = this.§%"b§.pop();
            _loc1_.dispose();
         }
         this.§7!j§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§=$4§ = null;
         while(this.§%"b§.length)
         {
            _loc1_ = this.§%"b§.pop();
            this.§7!j§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§7!j§.§^"0§();
      }
      
      public function addParticle(param1:§=$4§) : void
      {
         this.§%"b§.push(param1);
         this.§7!j§.addChild(param1.displayObject);
      }
      
      public function §5!u§(param1:§=$4§) : void
      {
         var _loc3_:§=$4§ = null;
         var _loc2_:int = this.§%"b§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§%"b§[_loc2_];
            this.§7!j§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§%"b§.splice(_loc2_,1);
         }
      }
      
      public function §4U§(param1:§`"@§) : void
      {
         var _loc2_:§=$4§ = null;
         while(this.§%"b§.length)
         {
            _loc2_ = this.§%"b§.pop();
            this.§7!j§.removeChild(_loc2_.displayObject);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§=$4§ = null;
         var _loc2_:int = this.§%"b§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§%"b§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§7!j§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§%"b§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §;f§(param1:Number, param2:Number) : void
      {
         this.§7!j§.x = -param1;
         this.§7!j§.y = -param2;
      }
   }
}
