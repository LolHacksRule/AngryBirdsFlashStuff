package §,!!§
{
   import §1!Y§.Sprite;
   
   public class §0!B§
   {
       
      
      private var §>$§:Vector.<§>!]§>;
      
      private var § v§:Sprite;
      
      public function §0!B§()
      {
         this.§>$§ = new Vector.<§>!]§>();
         this.§ v§ = new Sprite();
         super();
         this.§ v§.§,!J§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ v§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>!]§ = null;
         while(this.§>$§.length)
         {
            _loc1_ = this.§>$§.pop();
            _loc1_.dispose();
         }
         this.§ v§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§>!]§ = null;
         while(this.§>$§.length)
         {
            _loc1_ = this.§>$§.pop();
            this.§ v§.removeChild(_loc1_.§-!y§);
            _loc1_.dispose();
         }
         this.§ v§.§7!4§();
      }
      
      public function §,D§(param1:§>!]§) : void
      {
         this.§>$§.push(param1);
         this.§ v§.addChild(param1.§-!y§);
      }
      
      public function §0!O§(param1:§>!]§) : void
      {
         var _loc3_:§>!]§ = null;
         var _loc2_:int = this.§>$§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§>$§[_loc2_];
            this.§ v§.removeChild(_loc3_.§-!y§);
            _loc3_.dispose();
            this.§>$§.splice(_loc2_,1);
         }
      }
      
      public function §1!z§(param1:§0!B§) : void
      {
         var _loc2_:§>!]§ = null;
         while(this.§>$§.length)
         {
            _loc2_ = this.§>$§.pop();
            this.§ v§.removeChild(_loc2_.§-!y§);
            param1.§,D§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§>!]§ = null;
         var _loc2_:int = this.§>$§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§>$§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§ v§.removeChild(_loc3_.§-!y§);
               _loc3_.dispose();
               this.§>$§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §7!]§(param1:Number, param2:Number) : void
      {
         this.§ v§.x = -param1;
         this.§ v§.y = -param2;
      }
   }
}
