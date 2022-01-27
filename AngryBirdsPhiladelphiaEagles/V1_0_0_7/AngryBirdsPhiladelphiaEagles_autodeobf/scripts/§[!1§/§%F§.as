package §[!1§
{
   import §4G§.Sprite;
   
   public class §%F§
   {
       
      
      private var §9m§:Vector.<§ J§>;
      
      private var §8#§:Sprite;
      
      public function §%F§()
      {
         this.§9m§ = new Vector.<§ J§>();
         this.§8#§ = new Sprite();
         super();
         this.§8#§.§]1§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8#§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ J§ = null;
         while(this.§9m§.length)
         {
            _loc1_ = this.§9m§.pop();
            _loc1_.dispose();
         }
         this.§8#§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§ J§ = null;
         while(this.§9m§.length)
         {
            _loc1_ = this.§9m§.pop();
            this.§8#§.removeChild(_loc1_.§[$§);
            _loc1_.dispose();
         }
         this.§8#§.§3k§();
      }
      
      public function addParticle(param1:§ J§) : void
      {
         this.§9m§.push(param1);
         this.§8#§.addChild(param1.§[$§);
      }
      
      public function §7!,§(param1:§ J§) : void
      {
         var _loc3_:§ J§ = null;
         var _loc2_:int = this.§9m§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§9m§[_loc2_];
            this.§8#§.removeChild(_loc3_.§[$§);
            _loc3_.dispose();
            this.§9m§.splice(_loc2_,1);
         }
      }
      
      public function §'s§(param1:§%F§) : void
      {
         var _loc2_:§ J§ = null;
         while(this.§9m§.length)
         {
            _loc2_ = this.§9m§.pop();
            this.§8#§.removeChild(_loc2_.§[$§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§ J§ = null;
         var _loc2_:int = this.§9m§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9m§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§8#§.removeChild(_loc3_.§[$§);
               _loc3_.dispose();
               this.§9m§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §%!'§(param1:Number, param2:Number) : void
      {
         this.§8#§.x = -param1;
         this.§8#§.y = -param2;
      }
   }
}
