package §%!M§
{
   import §1!&§.Sprite;
   import §8!?§.AnimationManager;
   import §8!?§.TextureManager;
   
   public class LevelParticleManager
   {
      
      public static const §1!5§:int = 0;
      
      public static const §`v§:int = 1;
      
      public static const §#!1§:int = 2;
      
      public static const §1!'§:int = 3;
      
      public static const §<i§:int = 4;
      
      public static const §?7§:int = 5;
       
      
      private var §8!Y§:Vector.<LevelParticleGroup>;
      
      private var §[6§:AnimationManager;
      
      private var §`_§:TextureManager;
      
      public function LevelParticleManager(param1:AnimationManager, param2:TextureManager)
      {
         super();
         this.§[6§ = param1;
         this.§`_§ = param2;
         this.§8!Y§ = new Vector.<LevelParticleGroup>();
         var _loc3_:int = 0;
         while(_loc3_ < §?7§)
         {
            this.§8!Y§[_loc3_] = new LevelParticleGroup();
            _loc3_++;
         }
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§[6§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§`_§;
      }
      
      public function dispose() : void
      {
         var _loc1_:LevelParticleGroup = null;
         if(this.§8!Y§)
         {
            while(this.§8!Y§.length)
            {
               _loc1_ = this.§8!Y§.pop();
               _loc1_.dispose();
            }
         }
         this.§8!Y§ = null;
      }
      
      public function §5V§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§&!_§ = new §&!_§(this.§[6§,this.§`_§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:LevelParticleGroup = this.§4!^§(param3);
         if(_loc18_)
         {
            _loc18_.§%!!§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §%!!§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8!;§
      {
         var _loc16_:§8!;§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:LevelParticleGroup = this.§4!^§(param2);
         if(_loc17_)
         {
            _loc17_.§%!!§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8!;§
      {
         return new §8!;§(this.§[6§,this.§`_§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8!Y§.length)
         {
            this.§4!^§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §^Z§(param1:int) : void
      {
         var _loc2_:LevelParticleGroup = this.§4!^§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §7!M§(param1:int) : Sprite
      {
         return this.§4!^§(param1).sprite;
      }
      
      public function §4!^§(param1:Number) : LevelParticleGroup
      {
         if(this.§8!Y§ != null)
         {
            return this.§8!Y§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§^Z§(§1!5§);
         var _loc1_:LevelParticleGroup = this.§4!^§(§`v§);
         var _loc2_:LevelParticleGroup = this.§4!^§(§1!5§);
         _loc1_.§+0§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §6!7§(param1:Number, param2:Number) : void
      {
         var _loc3_:LevelParticleGroup = null;
         for each(_loc3_ in this.§8!Y§)
         {
            _loc3_.§4c§(param1,param2);
         }
      }
   }
}
