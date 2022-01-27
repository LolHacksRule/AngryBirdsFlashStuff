package §@!-§
{
   import §#!,§.Sprite;
   import §,!7§.AnimationManager;
   import §,!7§.TextureManager;
   
   public class LevelParticleManager
   {
      
      public static const §]!F§:int = 0;
      
      public static const §%F§:int = 1;
      
      public static const §;3§:int = 2;
      
      public static const §9!H§:int = 3;
      
      public static const §+!K§:int = 4;
      
      public static const § true§:int = 5;
       
      
      private var §>!Z§:Vector.<LevelParticleGroup>;
      
      private var §,!%§:AnimationManager;
      
      private var §7!`§:TextureManager;
      
      public function LevelParticleManager(param1:AnimationManager, param2:TextureManager)
      {
         super();
         this.§,!%§ = param1;
         this.§7!`§ = param2;
         this.§>!Z§ = new Vector.<LevelParticleGroup>();
         var _loc3_:int = 0;
         while(_loc3_ < § true§)
         {
            this.§>!Z§[_loc3_] = new LevelParticleGroup();
            _loc3_++;
         }
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§,!%§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      public function dispose() : void
      {
         var _loc1_:LevelParticleGroup = null;
         if(this.§>!Z§)
         {
            while(this.§>!Z§.length)
            {
               _loc1_ = this.§>!Z§.pop();
               _loc1_.dispose();
            }
         }
         this.§>!Z§ = null;
      }
      
      public function §2!9§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§5^§ = new §5^§(this.§,!%§,this.§7!`§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:LevelParticleGroup = this.§7K§(param3);
         if(_loc18_)
         {
            _loc18_.§?`§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §?`§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § !_§
      {
         var _loc16_:§ !_§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:LevelParticleGroup = this.§7K§(param2);
         if(_loc17_)
         {
            _loc17_.§?`§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : § !_§
      {
         return new § !_§(this.§,!%§,this.§7!`§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!Z§.length)
         {
            this.§7K§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §switch§(param1:int) : void
      {
         var _loc2_:LevelParticleGroup = this.§7K§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §&S§(param1:int) : Sprite
      {
         return this.§7K§(param1).sprite;
      }
      
      public function §7K§(param1:Number) : LevelParticleGroup
      {
         if(this.§>!Z§ != null)
         {
            return this.§>!Z§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§switch§(§]!F§);
         var _loc1_:LevelParticleGroup = this.§7K§(§%F§);
         var _loc2_:LevelParticleGroup = this.§7K§(§]!F§);
         _loc1_.§=!+§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §6!H§(param1:Number, param2:Number) : void
      {
         var _loc3_:LevelParticleGroup = null;
         for each(_loc3_ in this.§>!Z§)
         {
            _loc3_.§,a§(param1,param2);
         }
      }
   }
}
