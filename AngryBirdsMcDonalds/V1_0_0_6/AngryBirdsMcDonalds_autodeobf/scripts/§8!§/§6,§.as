package §8!§
{
   import §2![§.Sprite;
   
   public class §6,§
   {
       
      
      private var §4g§:Vector.<§9!-§>;
      
      private var §0!h§:Sprite;
      
      public function §6,§()
      {
         this.§4g§ = new Vector.<§9!-§>();
         this.§0!h§ = new Sprite();
         super();
         this.§0!h§.§,!c§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0!h§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!-§ = null;
         while(this.§4g§.length)
         {
            _loc1_ = this.§4g§.pop();
            _loc1_.dispose();
         }
         this.§0!h§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§9!-§ = null;
         while(this.§4g§.length)
         {
            _loc1_ = this.§4g§.pop();
            this.§0!h§.removeChild(_loc1_.§5L§);
            _loc1_.dispose();
         }
         this.§0!h§.§]T§();
      }
      
      public function §]!5§(param1:§9!-§) : void
      {
         this.§4g§.push(param1);
         this.§0!h§.addChild(param1.§5L§);
      }
      
      public function §=!F§(param1:§9!-§) : void
      {
         var _loc3_:§9!-§ = null;
         var _loc2_:int = this.§4g§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§4g§[_loc2_];
            this.§0!h§.removeChild(_loc3_.§5L§);
            _loc3_.dispose();
            this.§4g§.splice(_loc2_,1);
         }
      }
      
      public function §8;§(param1:§6,§) : void
      {
         var _loc2_:§9!-§ = null;
         while(this.§4g§.length)
         {
            _loc2_ = this.§4g§.pop();
            this.§0!h§.removeChild(_loc2_.§5L§);
            param1.§]!5§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§9!-§ = null;
         var _loc2_:int = this.§4g§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4g§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§0!h§.removeChild(_loc3_.§5L§);
               _loc3_.dispose();
               this.§4g§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §;j§(param1:Number, param2:Number) : void
      {
         this.§0!h§.x = -param1;
         this.§0!h§.y = -param2;
      }
   }
}
