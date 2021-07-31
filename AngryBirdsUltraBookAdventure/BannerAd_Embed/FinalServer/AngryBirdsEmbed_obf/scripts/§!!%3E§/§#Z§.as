package §!!>§
{
   import §9W§.Sprite;
   
   public class §#Z§
   {
       
      
      private var §5o§:Vector.<§!8§>;
      
      private var § !$§:Sprite;
      
      public function §#Z§()
      {
         this.§5o§ = new Vector.<§!8§>();
         this.§ !$§ = new Sprite();
         super();
         this.§ !$§.§=O§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ !$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!8§ = null;
         while(this.§5o§.length)
         {
            _loc1_ = this.§5o§.pop();
            _loc1_.dispose();
         }
         this.§ !$§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§!8§ = null;
         while(this.§5o§.length)
         {
            _loc1_ = this.§5o§.pop();
            this.§ !$§.removeChild(_loc1_.§@p§);
            _loc1_.dispose();
         }
         this.§ !$§.§!Z§();
      }
      
      public function §'!;§(param1:§!8§) : void
      {
         this.§5o§.push(param1);
         this.§ !$§.addChild(param1.§@p§);
      }
      
      public function §4Y§(param1:§!8§) : void
      {
         var _loc3_:§!8§ = null;
         var _loc2_:int = this.§5o§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§5o§[_loc2_];
            this.§ !$§.removeChild(_loc3_.§@p§);
            _loc3_.dispose();
            this.§5o§.splice(_loc2_,1);
         }
      }
      
      public function §[u§(param1:§#Z§) : void
      {
         var _loc2_:§!8§ = null;
         while(this.§5o§.length)
         {
            _loc2_ = this.§5o§.pop();
            this.§ !$§.removeChild(_loc2_.§@p§);
            param1.§'!;§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§!8§ = null;
         var _loc2_:int = this.§5o§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§5o§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§ !$§.removeChild(_loc3_.§@p§);
               _loc3_.dispose();
               this.§5o§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §4z§(param1:Number, param2:Number) : void
      {
         this.§ !$§.x = -param1;
         this.§ !$§.y = -param2;
      }
   }
}
