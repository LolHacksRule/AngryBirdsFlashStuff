package §?!B§
{
   import §[=§.Sprite;
   
   public class §>#§
   {
       
      
      private var §'!1§:Vector.<§^!U§>;
      
      private var §,E§:Sprite;
      
      public function §>#§()
      {
         this.§'!1§ = new Vector.<§^!U§>();
         this.§,E§ = new Sprite();
         super();
         this.§,E§.§^!]§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§,E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^!U§ = null;
         while(this.§'!1§.length)
         {
            _loc1_ = this.§'!1§.pop();
            _loc1_.dispose();
         }
         this.§,E§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§^!U§ = null;
         while(this.§'!1§.length)
         {
            _loc1_ = this.§'!1§.pop();
            this.§,E§.removeChild(_loc1_.§+!J§);
            _loc1_.dispose();
         }
         this.§,E§.§;U§();
      }
      
      public function addParticle(param1:§^!U§) : void
      {
         this.§'!1§.push(param1);
         this.§,E§.addChild(param1.§+!J§);
      }
      
      public function §%!O§(param1:§^!U§) : void
      {
         var _loc3_:§^!U§ = null;
         var _loc2_:int = this.§'!1§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§'!1§[_loc2_];
            this.§,E§.removeChild(_loc3_.§+!J§);
            _loc3_.dispose();
            this.§'!1§.splice(_loc2_,1);
         }
      }
      
      public function §0!M§(param1:§>#§) : void
      {
         var _loc2_:§^!U§ = null;
         while(this.§'!1§.length)
         {
            _loc2_ = this.§'!1§.pop();
            this.§,E§.removeChild(_loc2_.§+!J§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§^!U§ = null;
         var _loc2_:int = this.§'!1§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§'!1§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§,E§.removeChild(_loc3_.§+!J§);
               _loc3_.dispose();
               this.§'!1§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §1s§(param1:Number, param2:Number) : void
      {
         this.§,E§.x = -param1;
         this.§,E§.y = -param2;
      }
   }
}
