package §%!M§
{
   import §1!&§.Sprite;
   
   public class LevelParticleGroup
   {
       
      
      private var §]!N§:Vector.<§8!;§>;
      
      private var §6!$§:Sprite;
      
      public function LevelParticleGroup()
      {
         this.§]!N§ = new Vector.<§8!;§>();
         this.§6!$§ = new Sprite();
         super();
         this.§6!$§.§9@§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§6!$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8!;§ = null;
         while(this.§]!N§.length)
         {
            _loc1_ = this.§]!N§.pop();
            _loc1_.dispose();
         }
         this.§6!$§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§8!;§ = null;
         while(this.§]!N§.length)
         {
            _loc1_ = this.§]!N§.pop();
            this.§6!$§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§6!$§.§"!8§();
      }
      
      public function §%!!§(param1:§8!;§) : void
      {
         this.§]!N§.push(param1);
         this.§6!$§.addChild(param1.displayObject);
      }
      
      public function §=A§(param1:§8!;§) : void
      {
         var _loc3_:§8!;§ = null;
         var _loc2_:int = this.§]!N§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§]!N§[_loc2_];
            this.§6!$§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§]!N§.splice(_loc2_,1);
         }
      }
      
      public function §+0§(param1:LevelParticleGroup) : void
      {
         var _loc2_:§8!;§ = null;
         while(this.§]!N§.length)
         {
            _loc2_ = this.§]!N§.pop();
            this.§6!$§.removeChild(_loc2_.displayObject);
            param1.§%!!§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§8!;§ = null;
         var _loc2_:int = this.§]!N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]!N§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§6!$§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§]!N§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §4c§(param1:Number, param2:Number) : void
      {
         this.§6!$§.x = -param1;
         this.§6!$§.y = -param2;
      }
   }
}
