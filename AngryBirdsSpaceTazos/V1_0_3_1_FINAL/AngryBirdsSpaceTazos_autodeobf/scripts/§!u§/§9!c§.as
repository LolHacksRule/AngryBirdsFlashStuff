package §!u§
{
   import §4"@§.Sprite;
   
   public class §9!c§
   {
       
      
      private var §6!u§:Vector.<§8"#§>;
      
      private var § 1§:Sprite;
      
      public function §9!c§()
      {
         this.§6!u§ = new Vector.<§8"#§>();
         this.§ 1§ = new Sprite();
         super();
         this.§ 1§.§#,§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ 1§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8"#§ = null;
         while(this.§6!u§.length)
         {
            _loc1_ = this.§6!u§.pop();
            _loc1_.dispose();
         }
         this.§ 1§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§8"#§ = null;
         while(this.§6!u§.length)
         {
            _loc1_ = this.§6!u§.pop();
            this.§ 1§.removeChild(_loc1_.§set §);
            _loc1_.dispose();
         }
         this.§ 1§.§0+§();
      }
      
      public function §'!f§(param1:§8"#§) : void
      {
         this.§6!u§.push(param1);
         this.§ 1§.addChild(param1.§set §);
      }
      
      public function § !R§(param1:§8"#§) : void
      {
         var _loc3_:§8"#§ = null;
         var _loc2_:int = this.§6!u§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§6!u§[_loc2_];
            this.§ 1§.removeChild(_loc3_.§set §);
            _loc3_.dispose();
            this.§6!u§.splice(_loc2_,1);
         }
      }
      
      public function §=P§(param1:§9!c§) : void
      {
         var _loc2_:§8"#§ = null;
         while(this.§6!u§.length)
         {
            _loc2_ = this.§6!u§.pop();
            this.§ 1§.removeChild(_loc2_.§set §);
            param1.§'!f§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§8"#§ = null;
         var _loc2_:int = this.§6!u§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§6!u§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§ 1§.removeChild(_loc3_.§set §);
               _loc3_.dispose();
               this.§6!u§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §5"7§(param1:Number, param2:Number) : void
      {
         this.§ 1§.x = -param1;
         this.§ 1§.y = -param2;
      }
   }
}
