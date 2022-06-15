package §]!4§
{
   import §1!$§.Sprite;
   
   public class §"!t§
   {
       
      
      private var §'">§:Vector.<§'G§>;
      
      private var §=!a§:Sprite;
      
      public function §"!t§()
      {
         this.§'">§ = new Vector.<§'G§>();
         this.§=!a§ = new Sprite();
         super();
         this.§=!a§.§`!u§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§=!a§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'G§ = null;
         while(this.§'">§.length)
         {
            _loc1_ = this.§'">§.pop();
            _loc1_.dispose();
         }
         this.§=!a§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§'G§ = null;
         while(this.§'">§.length)
         {
            _loc1_ = this.§'">§.pop();
            this.§=!a§.removeChild(_loc1_.§[%§);
            _loc1_.dispose();
         }
         this.§=!a§.§4l§();
      }
      
      public function §;!u§(param1:§'G§) : void
      {
         this.§'">§.push(param1);
         this.§=!a§.addChild(param1.§[%§);
      }
      
      public function §;z§(param1:§'G§) : void
      {
         var _loc3_:§'G§ = null;
         var _loc2_:int = this.§'">§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§'">§[_loc2_];
            this.§=!a§.removeChild(_loc3_.§[%§);
            _loc3_.dispose();
            this.§'">§.splice(_loc2_,1);
         }
      }
      
      public function §8!6§(param1:§"!t§) : void
      {
         var _loc2_:§'G§ = null;
         while(this.§'">§.length)
         {
            _loc2_ = this.§'">§.pop();
            this.§=!a§.removeChild(_loc2_.§[%§);
            param1.§;!u§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§'G§ = null;
         var _loc2_:int = this.§'">§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§'">§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§=!a§.removeChild(_loc3_.§[%§);
               _loc3_.dispose();
               this.§'">§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §=![§(param1:Number, param2:Number) : void
      {
         this.§=!a§.x = -param1;
         this.§=!a§.y = -param2;
      }
   }
}
