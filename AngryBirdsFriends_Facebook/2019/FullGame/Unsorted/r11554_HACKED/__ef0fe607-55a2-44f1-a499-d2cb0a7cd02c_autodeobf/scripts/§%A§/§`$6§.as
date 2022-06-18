package §%A§
{
   import §!6§.Sprite;
   
   public class §`$6§
   {
       
      
      private var §0"t§:Vector.<§'Y§>;
      
      private var §8#Y§:Sprite;
      
      public function §`$6§()
      {
         this.§0"t§ = new Vector.<§'Y§>();
         this.§8#Y§ = new Sprite();
         super();
         this.§8#Y§.§7!w§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8#Y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'Y§ = null;
         while(this.§0"t§.length)
         {
            _loc1_ = this.§0"t§.pop();
            _loc1_.dispose();
         }
         this.§8#Y§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§'Y§ = null;
         while(this.§0"t§.length)
         {
            _loc1_ = this.§0"t§.pop();
            this.§8#Y§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§8#Y§.§,U§();
      }
      
      public function addParticle(param1:§'Y§) : void
      {
         this.§0"t§.push(param1);
         this.§8#Y§.addChild(param1.displayObject);
      }
      
      public function §5!m§(param1:§'Y§) : void
      {
         var _loc3_:§'Y§ = null;
         var _loc2_:int = this.§0"t§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§0"t§[_loc2_];
            this.§8#Y§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§0"t§.splice(_loc2_,1);
         }
      }
      
      public function §"#n§(param1:§`$6§) : void
      {
         var _loc2_:§'Y§ = null;
         while(this.§0"t§.length)
         {
            _loc2_ = this.§0"t§.pop();
            this.§8#Y§.removeChild(_loc2_.displayObject);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§'Y§ = null;
         var _loc2_:int = this.§0"t§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0"t§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§8#Y§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§0"t§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §<#U§(param1:Number, param2:Number) : void
      {
         this.§8#Y§.x = -param1;
         this.§8#Y§.y = -param2;
      }
   }
}
