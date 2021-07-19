package §>!Z§
{
   import §6![§.Sprite;
   
   public class §&""§
   {
       
      
      private var §#z§:Vector.<§2_§>;
      
      private var §@'§:Sprite;
      
      public function §&""§()
      {
         this.§#z§ = new Vector.<§2_§>();
         this.§@'§ = new Sprite();
         super();
         this.§@'§.§!!9§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§@'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2_§ = null;
         while(this.§#z§.length)
         {
            _loc1_ = this.§#z§.pop();
            _loc1_.dispose();
         }
         this.§@'§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§2_§ = null;
         while(this.§#z§.length)
         {
            _loc1_ = this.§#z§.pop();
            this.§@'§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§@'§.§>"'§();
      }
      
      public function §-!,§(param1:§2_§) : void
      {
         this.§#z§.push(param1);
         this.§@'§.addChild(param1.displayObject);
      }
      
      public function §9]§(param1:§2_§) : void
      {
         var _loc3_:§2_§ = null;
         var _loc2_:int = this.§#z§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§#z§[_loc2_];
            this.§@'§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§#z§.splice(_loc2_,1);
         }
      }
      
      public function §+!,§(param1:§&""§) : void
      {
         var _loc2_:§2_§ = null;
         while(this.§#z§.length)
         {
            _loc2_ = this.§#z§.pop();
            this.§@'§.removeChild(_loc2_.displayObject);
            param1.§-!,§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§2_§ = null;
         var _loc2_:int = this.§#z§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§#z§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§@'§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§#z§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §7!d§(param1:Number, param2:Number) : void
      {
         this.§@'§.x = -param1;
         this.§@'§.y = -param2;
      }
   }
}
