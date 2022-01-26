package §,M§
{
   import §,!Q§.Sprite;
   
   public class §9G§
   {
       
      
      private var §=!-§:Vector.<§,!;§>;
      
      private var §8!S§:Sprite;
      
      public function §9G§()
      {
         this.§=!-§ = new Vector.<§,!;§>();
         this.§8!S§ = new Sprite();
         super();
         this.§8!S§.§8!Q§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!S§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,!;§ = null;
         while(this.§=!-§.length)
         {
            _loc1_ = this.§=!-§.pop();
            _loc1_.dispose();
         }
         this.§8!S§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§,!;§ = null;
         while(this.§=!-§.length)
         {
            _loc1_ = this.§=!-§.pop();
            this.§8!S§.removeChild(_loc1_.§3!U§);
            _loc1_.dispose();
         }
         this.§8!S§.§#!2§();
      }
      
      public function §<%§(param1:§,!;§) : void
      {
         this.§=!-§.push(param1);
         this.§8!S§.addChild(param1.§3!U§);
      }
      
      public function §`!F§(param1:§,!;§) : void
      {
         var _loc3_:§,!;§ = null;
         var _loc2_:int = this.§=!-§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§=!-§[_loc2_];
            this.§8!S§.removeChild(_loc3_.§3!U§);
            _loc3_.dispose();
            this.§=!-§.splice(_loc2_,1);
         }
      }
      
      public function §<!L§(param1:§9G§) : void
      {
         var _loc2_:§,!;§ = null;
         while(this.§=!-§.length)
         {
            _loc2_ = this.§=!-§.pop();
            this.§8!S§.removeChild(_loc2_.§3!U§);
            param1.§<%§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§,!;§ = null;
         var _loc2_:int = this.§=!-§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=!-§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§8!S§.removeChild(_loc3_.§3!U§);
               _loc3_.dispose();
               this.§=!-§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §%d§(param1:Number, param2:Number) : void
      {
         this.§8!S§.x = -param1;
         this.§8!S§.y = -param2;
      }
   }
}
