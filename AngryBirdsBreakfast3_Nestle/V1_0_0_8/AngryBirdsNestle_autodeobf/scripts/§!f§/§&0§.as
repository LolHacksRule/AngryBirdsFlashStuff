package §!f§
{
   import §-![§.Sprite;
   
   public class §&0§
   {
       
      
      private var §]!`§:Vector.<§@"§>;
      
      private var §@!U§:Sprite;
      
      public function §&0§()
      {
         this.§]!`§ = new Vector.<§@"§>();
         this.§@!U§ = new Sprite();
         super();
         this.§@!U§.§%!<§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§@!U§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@"§ = null;
         while(this.§]!`§.length)
         {
            _loc1_ = this.§]!`§.pop();
            _loc1_.dispose();
         }
         this.§@!U§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§@"§ = null;
         while(this.§]!`§.length)
         {
            _loc1_ = this.§]!`§.pop();
            this.§@!U§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§@!U§.§02§();
      }
      
      public function §8" §(param1:§@"§) : void
      {
         this.§]!`§.push(param1);
         this.§@!U§.addChild(param1.displayObject);
      }
      
      public function §&!k§(param1:§@"§) : void
      {
         var _loc3_:§@"§ = null;
         var _loc2_:int = this.§]!`§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§]!`§[_loc2_];
            this.§@!U§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§]!`§.splice(_loc2_,1);
         }
      }
      
      public function §>!b§(param1:§&0§) : void
      {
         var _loc2_:§@"§ = null;
         while(this.§]!`§.length)
         {
            _loc2_ = this.§]!`§.pop();
            this.§@!U§.removeChild(_loc2_.displayObject);
            param1.§8" §(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§@"§ = null;
         var _loc2_:int = this.§]!`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!`§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§@!U§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§]!`§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §"n§(param1:Number, param2:Number) : void
      {
         this.§@!U§.x = -param1;
         this.§@!U§.y = -param2;
      }
   }
}
