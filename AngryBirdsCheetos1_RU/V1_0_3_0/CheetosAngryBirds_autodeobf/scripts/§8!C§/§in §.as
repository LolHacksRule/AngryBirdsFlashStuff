package §8!C§
{
   import §9!a§.Sprite;
   
   public class §in §
   {
       
      
      private var §@D§:Vector.<§%v§>;
      
      private var §0!"§:Sprite;
      
      public function §in §()
      {
         this.§@D§ = new Vector.<§%v§>();
         this.§0!"§ = new Sprite();
         super();
         this.§0!"§.§`!M§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0!"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%v§ = null;
         while(this.§@D§.length)
         {
            _loc1_ = this.§@D§.pop();
            _loc1_.dispose();
         }
         this.§0!"§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§%v§ = null;
         while(this.§@D§.length)
         {
            _loc1_ = this.§@D§.pop();
            this.§0!"§.removeChild(_loc1_.§<!=§);
            _loc1_.dispose();
         }
         this.§0!"§.§<!'§();
      }
      
      public function addParticle(param1:§%v§) : void
      {
         this.§@D§.push(param1);
         this.§0!"§.addChild(param1.§<!=§);
      }
      
      public function § !]§(param1:§%v§) : void
      {
         var _loc3_:§%v§ = null;
         var _loc2_:int = this.§@D§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§@D§[_loc2_];
            this.§0!"§.removeChild(_loc3_.§<!=§);
            _loc3_.dispose();
            this.§@D§.splice(_loc2_,1);
         }
      }
      
      public function §%m§(param1:§in §) : void
      {
         var _loc2_:§%v§ = null;
         while(this.§@D§.length)
         {
            _loc2_ = this.§@D§.pop();
            this.§0!"§.removeChild(_loc2_.§<!=§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§%v§ = null;
         var _loc2_:int = this.§@D§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@D§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§0!"§.removeChild(_loc3_.§<!=§);
               _loc3_.dispose();
               this.§@D§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §3[§(param1:Number, param2:Number) : void
      {
         this.§0!"§.x = -param1;
         this.§0!"§.y = -param2;
      }
   }
}
