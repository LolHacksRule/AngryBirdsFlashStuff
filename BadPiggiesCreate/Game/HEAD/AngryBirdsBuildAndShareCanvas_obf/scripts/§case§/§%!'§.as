package §case§
{
   import §+!-§.Sprite;
   
   public class §%!'§
   {
       
      
      private var §]!r§:Vector.<§`!E§>;
      
      private var §,8§:Sprite;
      
      public function §%!'§()
      {
         this.§]!r§ = new Vector.<§`!E§>();
         this.§,8§ = new Sprite();
         super();
         this.§,8§.§#b§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§,8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`!E§ = null;
         while(this.§]!r§.length)
         {
            _loc1_ = this.§]!r§.pop();
            _loc1_.dispose();
         }
         this.§,8§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§`!E§ = null;
         while(this.§]!r§.length)
         {
            _loc1_ = this.§]!r§.pop();
            this.§,8§.removeChild(_loc1_.§1"7§);
            _loc1_.dispose();
         }
         this.§,8§.§4"6§();
      }
      
      public function §'p§(param1:§`!E§) : void
      {
         this.§]!r§.push(param1);
         this.§,8§.addChild(param1.§1"7§);
      }
      
      public function §0!`§(param1:§`!E§) : void
      {
         var _loc3_:§`!E§ = null;
         var _loc2_:int = this.§]!r§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§]!r§[_loc2_];
            this.§,8§.removeChild(_loc3_.§1"7§);
            _loc3_.dispose();
            this.§]!r§.splice(_loc2_,1);
         }
      }
      
      public function §%>§(param1:§%!'§) : void
      {
         var _loc2_:§`!E§ = null;
         while(this.§]!r§.length)
         {
            _loc2_ = this.§]!r§.pop();
            this.§,8§.removeChild(_loc2_.§1"7§);
            param1.§'p§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§`!E§ = null;
         var _loc2_:int = this.§]!r§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!r§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§,8§.removeChild(_loc3_.§1"7§);
               _loc3_.dispose();
               this.§]!r§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §8!l§(param1:Number, param2:Number) : void
      {
         this.§,8§.x = -param1;
         this.§,8§.y = -param2;
      }
   }
}
