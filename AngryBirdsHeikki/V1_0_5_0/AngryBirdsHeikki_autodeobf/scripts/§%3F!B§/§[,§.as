package §?!B§
{
   import §[=§.Sprite;
   import §`!H§.§9;§;
   import §`!H§.§@!E§;
   
   public class §[,§
   {
      
      public static const §4N§:int = 0;
      
      public static const §<z§:int = 1;
      
      public static const §"N§:int = 2;
      
      public static const §'k§:int = 3;
      
      public static const §3b§:int = 4;
      
      public static const § §:int = 5;
       
      
      private var §8x§:Vector.<§>#§>;
      
      private var §#!I§:§9;§;
      
      private var §6!;§:§@!E§;
      
      public function §[,§(param1:§9;§, param2:§@!E§)
      {
         super();
         this.§#!I§ = param1;
         this.§6!;§ = param2;
         this.§8x§ = new Vector.<§>#§>();
         var _loc3_:int = 0;
         while(_loc3_ < § §)
         {
            this.§8x§[_loc3_] = new §>#§();
            _loc3_++;
         }
      }
      
      public function get §]!%§() : §9;§
      {
         return this.§#!I§;
      }
      
      public function get textureManager() : §@!E§
      {
         return this.§6!;§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>#§ = null;
         if(this.§8x§)
         {
            while(this.§8x§.length)
            {
               _loc1_ = this.§8x§.pop();
               _loc1_.dispose();
            }
         }
         this.§8x§ = null;
      }
      
      public function §!!b§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§ !a§ = new § !a§(this.§#!I§,this.§6!;§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§>#§;
         if(_loc18_ = this.§2"§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^!U§
      {
         var _loc16_:§^!U§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§>#§;
         if(_loc17_ = this.§2"§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^!U§
      {
         return new §^!U§(this.§#!I§,this.§6!;§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8x§.length)
         {
            this.§2"§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §<n§(param1:int) : void
      {
         var _loc2_:§>#§ = this.§2"§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §1Y§(param1:int) : Sprite
      {
         return this.§2"§(param1).sprite;
      }
      
      public function §2"§(param1:Number) : §>#§
      {
         if(this.§8x§ != null)
         {
            return this.§8x§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§<n§(§4N§);
         var _loc1_:§>#§ = this.§2"§(§<z§);
         var _loc2_:§>#§ = this.§2"§(§4N§);
         _loc1_.§0!M§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §@P§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>#§ = null;
         for each(_loc3_ in this.§8x§)
         {
            _loc3_.§1s§(param1,param2);
         }
      }
   }
}
