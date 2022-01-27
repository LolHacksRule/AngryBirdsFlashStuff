package §@!-§
{
   import §#!,§.Sprite;
   
   public class LevelParticleGroup
   {
       
      
      private var §0d§:Vector.<§ !_§>;
      
      private var §2$§:Sprite;
      
      public function LevelParticleGroup()
      {
         this.§0d§ = new Vector.<§ !_§>();
         this.§2$§ = new Sprite();
         super();
         this.§2$§.§<@§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§2$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ !_§ = null;
         while(this.§0d§.length)
         {
            _loc1_ = this.§0d§.pop();
            _loc1_.dispose();
         }
         this.§2$§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§ !_§ = null;
         while(this.§0d§.length)
         {
            _loc1_ = this.§0d§.pop();
            this.§2$§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§2$§.§&!b§();
      }
      
      public function §?`§(param1:§ !_§) : void
      {
         this.§0d§.push(param1);
         this.§2$§.addChild(param1.displayObject);
      }
      
      public function §1>§(param1:§ !_§) : void
      {
         var _loc3_:§ !_§ = null;
         var _loc2_:int = this.§0d§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§0d§[_loc2_];
            this.§2$§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§0d§.splice(_loc2_,1);
         }
      }
      
      public function §=!+§(param1:LevelParticleGroup) : void
      {
         var _loc2_:§ !_§ = null;
         while(this.§0d§.length)
         {
            _loc2_ = this.§0d§.pop();
            this.§2$§.removeChild(_loc2_.displayObject);
            param1.§?`§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§ !_§ = null;
         var _loc2_:int = this.§0d§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0d§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§2$§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§0d§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §,a§(param1:Number, param2:Number) : void
      {
         this.§2$§.x = -param1;
         this.§2$§.y = -param2;
      }
   }
}
