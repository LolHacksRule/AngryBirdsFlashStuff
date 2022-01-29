package §#+§
{
   import §90§.Sprite;
   
   public class §%3§
   {
       
      
      private var §;0§:Vector.<§@!<§>;
      
      private var §#!$§:Sprite;
      
      public function §%3§()
      {
         this.§;0§ = new Vector.<§@!<§>();
         this.§#!$§ = new Sprite();
         super();
         this.§#!$§.§]u§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§#!$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@!<§ = null;
         while(this.§;0§.length)
         {
            _loc1_ = this.§;0§.pop();
            _loc1_.dispose();
         }
         this.§#!$§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§@!<§ = null;
         while(this.§;0§.length)
         {
            _loc1_ = this.§;0§.pop();
            this.§#!$§.removeChild(_loc1_.§<2§);
            _loc1_.dispose();
         }
         this.§#!$§.§3Z§();
      }
      
      public function §-!$§(param1:§@!<§) : void
      {
         this.§;0§.push(param1);
         this.§#!$§.addChild(param1.§<2§);
      }
      
      public function §-F§(param1:§@!<§) : void
      {
         var _loc3_:§@!<§ = null;
         var _loc2_:int = this.§;0§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§;0§[_loc2_];
            this.§#!$§.removeChild(_loc3_.§<2§);
            _loc3_.dispose();
            this.§;0§.splice(_loc2_,1);
         }
      }
      
      public function §5!6§(param1:§%3§) : void
      {
         var _loc2_:§@!<§ = null;
         while(this.§;0§.length)
         {
            _loc2_ = this.§;0§.pop();
            this.§#!$§.removeChild(_loc2_.§<2§);
            param1.§-!$§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§@!<§ = null;
         var _loc2_:int = this.§;0§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;0§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§#!$§.removeChild(_loc3_.§<2§);
               _loc3_.dispose();
               this.§;0§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §,C§(param1:Number, param2:Number) : void
      {
         this.§#!$§.x = -param1;
         this.§#!$§.y = -param2;
      }
   }
}
