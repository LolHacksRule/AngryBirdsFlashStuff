package §%A§
{
   import §!6§.Sprite;
   import §^"[§.§2§;
   import §^"[§.§=#;§;
   
   public class §>F§
   {
      
      public static const §1I§:int = 0;
      
      public static const § 4§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §#!H§:int = 4;
      
      public static const PARTICLE_GROUP_FOREGROUND_EFFECTS:int = 5;
      
      public static const §27§:int = 6;
       
      
      private var §]#x§:Vector.<§`$6§>;
      
      private var § "9§:§2#6§;
      
      private var §2!b§:§=#;§;
      
      public function §>F§(param1:§2#6§, param2:§=#;§)
      {
         super();
         this.§ "9§ = param1;
         this.§2!b§ = param2;
         this.§]#x§ = new Vector.<§`$6§>();
         var _loc3_:int = 0;
         while(_loc3_ < §27§)
         {
            this.§]#x§[_loc3_] = new §`$6§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §2#6§
      {
         return this.§ "9§;
      }
      
      public function get textureManager() : §=#;§
      {
         return this.§2!b§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`$6§ = null;
         if(this.§]#x§)
         {
            while(this.§]#x§.length)
            {
               _loc1_ = this.§]#x§.pop();
               _loc1_.dispose();
            }
         }
         this.§]#x§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false, param16:String = null) : §'Y§
      {
         var _loc17_:§'Y§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         var _loc18_:§`$6§;
         if(_loc18_ = this.§'!J§(param2))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
         return _loc17_;
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:Number = -1, param16:Boolean = false) : void
      {
         var _loc17_:§3!t§ = new §3!t§(this.§ "9§,this.§2!b§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§`$6§;
         if(_loc18_ = this.§'!J§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §];§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:§[#W§ = new §[#W§(this.§ "9§,this.§2!b§,param2,param3,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param1,param4);
         var _loc17_:§`$6§;
         if(_loc17_ = this.§'!J§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = null) : §'Y§
      {
         return new §'Y§(this.§ "9§,this.§2!b§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]#x§.length)
         {
            this.§'!J§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §2#'§(param1:int) : void
      {
         var _loc2_:§`$6§ = this.§'!J§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §;h§(param1:int) : Sprite
      {
         return this.§'!J§(param1).sprite;
      }
      
      public function §'!J§(param1:Number) : §`$6§
      {
         if(this.§]#x§ != null)
         {
            return this.§]#x§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§2#'§(§1I§);
         var _loc1_:§`$6§ = this.§'!J§(§ 4§);
         var _loc2_:§`$6§ = this.§'!J§(§1I§);
         _loc1_.§"#n§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:§`$6§ = null;
         for each(_loc3_ in this.§]#x§)
         {
            _loc3_.§<#U§(param1,param2);
         }
      }
   }
}
