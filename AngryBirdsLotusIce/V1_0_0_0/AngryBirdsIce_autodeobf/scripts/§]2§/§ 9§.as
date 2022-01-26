package §]2§
{
   import §@!=§.Sprite;
   
   public class § 9§
   {
       
      
      private var §5t§:Vector.<§`b§>;
      
      private var §@a§:Sprite;
      
      public function § 9§()
      {
         this.§5t§ = new Vector.<§`b§>();
         this.§@a§ = new Sprite();
         super();
         this.§@a§.§0D§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§@a§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`b§ = null;
         while(this.§5t§.length)
         {
            _loc1_ = this.§5t§.pop();
            _loc1_.dispose();
         }
         this.§@a§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§`b§ = null;
         while(this.§5t§.length)
         {
            _loc1_ = this.§5t§.pop();
            this.§@a§.removeChild(_loc1_.§7@§);
            _loc1_.dispose();
         }
         this.§@a§.§91§();
      }
      
      public function §1C§(param1:§`b§) : void
      {
         this.§5t§.push(param1);
         this.§@a§.addChild(param1.§7@§);
      }
      
      public function §else§(param1:§`b§) : void
      {
         var _loc3_:§`b§ = null;
         var _loc2_:int = this.§5t§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§5t§[_loc2_];
            this.§@a§.removeChild(_loc3_.§7@§);
            _loc3_.dispose();
            this.§5t§.splice(_loc2_,1);
         }
      }
      
      public function §7y§(param1:§ 9§) : void
      {
         var _loc2_:§`b§ = null;
         while(this.§5t§.length)
         {
            _loc2_ = this.§5t§.pop();
            this.§@a§.removeChild(_loc2_.§7@§);
            param1.§1C§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§`b§ = null;
         var _loc2_:int = this.§5t§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§5t§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§@a§.removeChild(_loc3_.§7@§);
               _loc3_.dispose();
               this.§5t§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §[R§(param1:Number, param2:Number) : void
      {
         this.§@a§.x = -param1;
         this.§@a§.y = -param2;
      }
   }
}
