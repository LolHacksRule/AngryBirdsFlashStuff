package §&=§
{
   import §,!_§.AnimationManager;
   import §,!_§.TextureManager;
   import §6!7§.Sprite;
   
   public class LevelParticleManager
   {
      
      public static const §^<§:int = 0;
      
      public static const §^![§:int = 1;
      
      public static const §9!@§:int = 2;
      
      public static const §[K§:int = 3;
      
      public static const §#!k§:int = 4;
      
      public static const §-!X§:int = 5;
       
      
      private var §+'§:Vector.<LevelParticleGroup>;
      
      private var §!!]§:AnimationManager;
      
      private var §6! §:TextureManager;
      
      public function LevelParticleManager(param1:AnimationManager, param2:TextureManager)
      {
         super();
         this.§!!]§ = param1;
         this.§6! § = param2;
         this.§+'§ = new Vector.<LevelParticleGroup>();
         var _loc3_:int = 0;
         while(_loc3_ < §-!X§)
         {
            this.§+'§[_loc3_] = new LevelParticleGroup();
            _loc3_++;
         }
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§!!]§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      public function dispose() : void
      {
         var _loc1_:LevelParticleGroup = null;
         if(this.§+'§)
         {
            while(this.§+'§.length)
            {
               _loc1_ = this.§+'§.pop();
               _loc1_.dispose();
            }
         }
         this.§+'§ = null;
      }
      
      public function §3_§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§=%§ = new §=%§(this.§!!]§,this.§6! §,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:LevelParticleGroup = this.§!!+§(param3);
         if(_loc18_)
         {
            _loc18_.§@4§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §@4§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §0'§
      {
         var _loc16_:§0'§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:LevelParticleGroup = this.§!!+§(param2);
         if(_loc17_)
         {
            _loc17_.§@4§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §0'§
      {
         return new §0'§(this.§!!]§,this.§6! §,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+'§.length)
         {
            this.§!!+§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §@!X§(param1:int) : void
      {
         var _loc2_:LevelParticleGroup = this.§!!+§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §1r§(param1:int) : Sprite
      {
         return this.§!!+§(param1).sprite;
      }
      
      public function §!!+§(param1:Number) : LevelParticleGroup
      {
         if(this.§+'§ != null)
         {
            return this.§+'§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§@!X§(§^<§);
         var _loc1_:LevelParticleGroup = this.§!!+§(§^![§);
         var _loc2_:LevelParticleGroup = this.§!!+§(§^<§);
         _loc1_.§use §(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         var _loc3_:LevelParticleGroup = null;
         for each(_loc3_ in this.§+'§)
         {
            _loc3_.§3!U§(param1,param2);
         }
      }
   }
}
