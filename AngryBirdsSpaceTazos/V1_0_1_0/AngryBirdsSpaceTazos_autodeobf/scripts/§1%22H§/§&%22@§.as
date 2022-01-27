package §1"H§
{
   import §7!8§.Sprite;
   
   public class §&"@§
   {
       
      
      private var §3R§:Vector.<§2!V§>;
      
      private var §[S§:Sprite;
      
      public function §&"@§()
      {
         this.§3R§ = new Vector.<§2!V§>();
         this.§[S§ = new Sprite();
         super();
         this.§[S§.§]!D§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§[S§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2!V§ = null;
         while(this.§3R§.length)
         {
            _loc1_ = this.§3R§.pop();
            _loc1_.dispose();
         }
         this.§[S§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§2!V§ = null;
         while(this.§3R§.length)
         {
            _loc1_ = this.§3R§.pop();
            this.§[S§.removeChild(_loc1_.§,"F§);
            _loc1_.dispose();
         }
         this.§[S§.§#!8§();
      }
      
      public function §%!y§(param1:§2!V§) : void
      {
         this.§3R§.push(param1);
         this.§[S§.addChild(param1.§,"F§);
      }
      
      public function §`!D§(param1:§2!V§) : void
      {
         var _loc3_:§2!V§ = null;
         var _loc2_:int = this.§3R§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§3R§[_loc2_];
            this.§[S§.removeChild(_loc3_.§,"F§);
            _loc3_.dispose();
            this.§3R§.splice(_loc2_,1);
         }
      }
      
      public function §?!&§(param1:§&"@§) : void
      {
         var _loc2_:§2!V§ = null;
         while(this.§3R§.length)
         {
            _loc2_ = this.§3R§.pop();
            this.§[S§.removeChild(_loc2_.§,"F§);
            param1.§%!y§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§2!V§ = null;
         var _loc2_:int = this.§3R§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§3R§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§[S§.removeChild(_loc3_.§,"F§);
               _loc3_.dispose();
               this.§3R§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §[!K§(param1:Number, param2:Number) : void
      {
         this.§[S§.x = -param1;
         this.§[S§.y = -param2;
      }
   }
}
