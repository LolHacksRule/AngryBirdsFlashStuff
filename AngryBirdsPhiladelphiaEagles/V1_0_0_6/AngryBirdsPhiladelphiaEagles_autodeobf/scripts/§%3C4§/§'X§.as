package §<4§
{
   import §86§.Sprite;
   
   public class §'X§
   {
       
      
      private var §+$§:Vector.<§5!C§>;
      
      private var § y§:Sprite;
      
      public function §'X§()
      {
         this.§+$§ = new Vector.<§5!C§>();
         this.§ y§ = new Sprite();
         super();
         this.§ y§.§+k§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§5!C§ = null;
         while(this.§+$§.length)
         {
            _loc1_ = this.§+$§.pop();
            _loc1_.dispose();
         }
         this.§ y§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§5!C§ = null;
         while(this.§+$§.length)
         {
            _loc1_ = this.§+$§.pop();
            this.§ y§.removeChild(_loc1_.§3P§);
            _loc1_.dispose();
         }
         this.§ y§.§[z§();
      }
      
      public function addParticle(param1:§5!C§) : void
      {
         this.§+$§.push(param1);
         this.§ y§.addChild(param1.§3P§);
      }
      
      public function §4S§(param1:§5!C§) : void
      {
         var _loc3_:§5!C§ = null;
         var _loc2_:int = this.§+$§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§+$§[_loc2_];
            this.§ y§.removeChild(_loc3_.§3P§);
            _loc3_.dispose();
            this.§+$§.splice(_loc2_,1);
         }
      }
      
      public function §^!O§(param1:§'X§) : void
      {
         var _loc2_:§5!C§ = null;
         while(this.§+$§.length)
         {
            _loc2_ = this.§+$§.pop();
            this.§ y§.removeChild(_loc2_.§3P§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§5!C§ = null;
         var _loc2_:int = this.§+$§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§+$§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§ y§.removeChild(_loc3_.§3P§);
               _loc3_.dispose();
               this.§+$§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §^`§(param1:Number, param2:Number) : void
      {
         this.§ y§.x = -param1;
         this.§ y§.y = -param2;
      }
   }
}
