package §]"§
{
   import §]!6§.Sprite;
   
   public class § in§
   {
       
      
      private var §=>§:Vector.<§4!F§>;
      
      private var §0&§:Sprite;
      
      public function § in§()
      {
         this.§=>§ = new Vector.<§4!F§>();
         this.§0&§ = new Sprite();
         super();
         this.§0&§.§]M§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4!F§ = null;
         while(this.§=>§.length)
         {
            _loc1_ = this.§=>§.pop();
            _loc1_.dispose();
         }
         this.§0&§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§4!F§ = null;
         while(this.§=>§.length)
         {
            _loc1_ = this.§=>§.pop();
            this.§0&§.removeChild(_loc1_.§0!-§);
            _loc1_.dispose();
         }
         this.§0&§.§%Y§();
      }
      
      public function §#!B§(param1:§4!F§) : void
      {
         this.§=>§.push(param1);
         this.§0&§.addChild(param1.§0!-§);
      }
      
      public function §3%§(param1:§4!F§) : void
      {
         var _loc3_:§4!F§ = null;
         var _loc2_:int = this.§=>§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§=>§[_loc2_];
            this.§0&§.removeChild(_loc3_.§0!-§);
            _loc3_.dispose();
            this.§=>§.splice(_loc2_,1);
         }
      }
      
      public function §3F§(param1:§ in§) : void
      {
         var _loc2_:§4!F§ = null;
         while(this.§=>§.length)
         {
            _loc2_ = this.§=>§.pop();
            this.§0&§.removeChild(_loc2_.§0!-§);
            param1.§#!B§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§4!F§ = null;
         var _loc2_:int = this.§=>§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§=>§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§0&§.removeChild(_loc3_.§0!-§);
               _loc3_.dispose();
               this.§=>§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §'!C§(param1:Number, param2:Number) : void
      {
         this.§0&§.x = -param1;
         this.§0&§.y = -param2;
      }
   }
}
