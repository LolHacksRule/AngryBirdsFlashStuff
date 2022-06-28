package §3v§
{
   import §9E§.Sprite;
   
   public class §>!7§
   {
       
      
      private var §^0§:Vector.<§6Q§>;
      
      private var §5M§:Sprite;
      
      public function §>!7§()
      {
         this.§^0§ = new Vector.<§6Q§>();
         this.§5M§ = new Sprite();
         super();
         this.§5M§.§<V§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§5M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6Q§ = null;
         while(this.§^0§.length)
         {
            _loc1_ = this.§^0§.pop();
            _loc1_.dispose();
         }
         this.§5M§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§6Q§ = null;
         while(this.§^0§.length)
         {
            _loc1_ = this.§^0§.pop();
            this.§5M§.removeChild(_loc1_.§74§);
            _loc1_.dispose();
         }
         this.§5M§.§+Q§();
      }
      
      public function §=!K§(param1:§6Q§) : void
      {
         this.§^0§.push(param1);
         this.§5M§.addChild(param1.§74§);
      }
      
      public function §4!1§(param1:§6Q§) : void
      {
         var _loc3_:§6Q§ = null;
         var _loc2_:int = this.§^0§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§^0§[_loc2_];
            this.§5M§.removeChild(_loc3_.§74§);
            _loc3_.dispose();
            this.§^0§.splice(_loc2_,1);
         }
      }
      
      public function §;!'§(param1:§>!7§) : void
      {
         var _loc2_:§6Q§ = null;
         while(this.§^0§.length)
         {
            _loc2_ = this.§^0§.pop();
            this.§5M§.removeChild(_loc2_.§74§);
            param1.§=!K§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§6Q§ = null;
         var _loc2_:int = this.§^0§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§^0§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§5M§.removeChild(_loc3_.§74§);
               _loc3_.dispose();
               this.§^0§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §>!$§(param1:Number, param2:Number) : void
      {
         this.§5M§.x = -param1;
         this.§5M§.y = -param2;
      }
   }
}
