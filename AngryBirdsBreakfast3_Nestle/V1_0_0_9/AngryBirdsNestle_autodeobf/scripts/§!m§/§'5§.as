package §!m§
{
   import §`!B§.Sprite;
   
   public class §'5§
   {
       
      
      private var §!0§:Vector.<§'!P§>;
      
      private var §;"#§:Sprite;
      
      public function §'5§()
      {
         this.§!0§ = new Vector.<§'!P§>();
         this.§;"#§ = new Sprite();
         super();
         this.§;"#§.§!!z§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§;"#§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!P§ = null;
         while(this.§!0§.length)
         {
            _loc1_ = this.§!0§.pop();
            _loc1_.dispose();
         }
         this.§;"#§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§'!P§ = null;
         while(this.§!0§.length)
         {
            _loc1_ = this.§!0§.pop();
            this.§;"#§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§;"#§.§-!!§();
      }
      
      public function §+<§(param1:§'!P§) : void
      {
         this.§!0§.push(param1);
         this.§;"#§.addChild(param1.displayObject);
      }
      
      public function §'h§(param1:§'!P§) : void
      {
         var _loc3_:§'!P§ = null;
         var _loc2_:int = this.§!0§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§!0§[_loc2_];
            this.§;"#§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§!0§.splice(_loc2_,1);
         }
      }
      
      public function §]"1§(param1:§'5§) : void
      {
         var _loc2_:§'!P§ = null;
         while(this.§!0§.length)
         {
            _loc2_ = this.§!0§.pop();
            this.§;"#§.removeChild(_loc2_.displayObject);
            param1.§+<§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§'!P§ = null;
         var _loc2_:int = this.§!0§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!0§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§;"#§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§!0§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §]R§(param1:Number, param2:Number) : void
      {
         this.§;"#§.x = -param1;
         this.§;"#§.y = -param2;
      }
   }
}
