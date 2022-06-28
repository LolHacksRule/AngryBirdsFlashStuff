package §&=§
{
   import §6!7§.Sprite;
   
   public class LevelParticleGroup
   {
       
      
      private var §7D§:Vector.<§0'§>;
      
      private var §'K§:Sprite;
      
      public function LevelParticleGroup()
      {
         this.§7D§ = new Vector.<§0'§>();
         this.§'K§ = new Sprite();
         super();
         this.§'K§.§<!4§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'K§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0'§ = null;
         while(this.§7D§.length)
         {
            _loc1_ = this.§7D§.pop();
            _loc1_.dispose();
         }
         this.§'K§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§0'§ = null;
         while(this.§7D§.length)
         {
            _loc1_ = this.§7D§.pop();
            this.§'K§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§'K§.§%s§();
      }
      
      public function §@4§(param1:§0'§) : void
      {
         this.§7D§.push(param1);
         this.§'K§.addChild(param1.displayObject);
      }
      
      public function §!!,§(param1:§0'§) : void
      {
         var _loc3_:§0'§ = null;
         var _loc2_:int = this.§7D§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§7D§[_loc2_];
            this.§'K§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§7D§.splice(_loc2_,1);
         }
      }
      
      public function §use §(param1:LevelParticleGroup) : void
      {
         var _loc2_:§0'§ = null;
         while(this.§7D§.length)
         {
            _loc2_ = this.§7D§.pop();
            this.§'K§.removeChild(_loc2_.displayObject);
            param1.§@4§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§0'§ = null;
         var _loc2_:int = this.§7D§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§7D§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§'K§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§7D§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §3!U§(param1:Number, param2:Number) : void
      {
         this.§'K§.x = -param1;
         this.§'K§.y = -param2;
      }
   }
}
