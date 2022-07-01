package §;Z§
{
   import § !=§.Sprite;
   
   public class §%!m§
   {
       
      
      private var §1!r§:Vector.<§3?§>;
      
      private var §-"1§:Sprite;
      
      public function §%!m§()
      {
         this.§1!r§ = new Vector.<§3?§>();
         this.§-"1§ = new Sprite();
         super();
         this.§-"1§.§8!Z§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§-"1§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3?§ = null;
         while(this.§1!r§.length)
         {
            _loc1_ = this.§1!r§.pop();
            _loc1_.dispose();
         }
         this.§-"1§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§3?§ = null;
         while(this.§1!r§.length)
         {
            _loc1_ = this.§1!r§.pop();
            this.§-"1§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§-"1§.§<!r§();
      }
      
      public function §;$§(param1:§3?§) : void
      {
         this.§1!r§.push(param1);
         this.§-"1§.addChild(param1.displayObject);
      }
      
      public function §<"'§(param1:§3?§) : void
      {
         var _loc3_:§3?§ = null;
         var _loc2_:int = this.§1!r§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§1!r§[_loc2_];
            this.§-"1§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§1!r§.splice(_loc2_,1);
         }
      }
      
      public function §]!x§(param1:§%!m§) : void
      {
         var _loc2_:§3?§ = null;
         while(this.§1!r§.length)
         {
            _loc2_ = this.§1!r§.pop();
            this.§-"1§.removeChild(_loc2_.displayObject);
            param1.§;$§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§3?§ = null;
         var _loc2_:int = this.§1!r§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1!r§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§-"1§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§1!r§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §<!,§(param1:Number, param2:Number) : void
      {
         this.§-"1§.x = -param1;
         this.§-"1§.y = -param2;
      }
   }
}
