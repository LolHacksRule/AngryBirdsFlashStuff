package §?!P§
{
   import §&c§.Sprite;
   
   public class §#A§
   {
       
      
      private var §>c§:Vector.<§65§>;
      
      private var §%!-§:Sprite;
      
      public function §#A§()
      {
         this.§>c§ = new Vector.<§65§>();
         this.§%!-§ = new Sprite();
         super();
         this.§%!-§.§8m§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!-§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§65§ = null;
         while(this.§>c§.length)
         {
            _loc1_ = this.§>c§.pop();
            _loc1_.dispose();
         }
         this.§%!-§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§65§ = null;
         while(this.§>c§.length)
         {
            _loc1_ = this.§>c§.pop();
            this.§%!-§.removeChild(_loc1_.§!8§);
            _loc1_.dispose();
         }
         this.§%!-§.§]!D§();
      }
      
      public function § D§(param1:§65§) : void
      {
         this.§>c§.push(param1);
         this.§%!-§.addChild(param1.§!8§);
      }
      
      public function §+!@§(param1:§65§) : void
      {
         var _loc3_:§65§ = null;
         var _loc2_:int = this.§>c§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§>c§[_loc2_];
            this.§%!-§.removeChild(_loc3_.§!8§);
            _loc3_.dispose();
            this.§>c§.splice(_loc2_,1);
         }
      }
      
      public function §=!V§(param1:§#A§) : void
      {
         var _loc2_:§65§ = null;
         while(this.§>c§.length)
         {
            _loc2_ = this.§>c§.pop();
            this.§%!-§.removeChild(_loc2_.§!8§);
            param1.§ D§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§65§ = null;
         var _loc2_:int = this.§>c§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§>c§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§%!-§.removeChild(_loc3_.§!8§);
               _loc3_.dispose();
               this.§>c§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §%-§(param1:Number, param2:Number) : void
      {
         this.§%!-§.x = -param1;
         this.§%!-§.y = -param2;
      }
   }
}
