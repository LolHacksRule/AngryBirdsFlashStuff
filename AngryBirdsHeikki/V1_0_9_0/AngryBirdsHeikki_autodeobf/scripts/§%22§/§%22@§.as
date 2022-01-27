package §"§
{
   import §#!f§.Sprite;
   import §3!§.§-e§;
   import §3!§.§9i§;
   
   public class §"@§
   {
      
      public static const §0!8§:int = 0;
      
      public static const §,!Y§:int = 1;
      
      public static const §5$§:int = 2;
      
      public static const §6^§:int = 3;
      
      public static const §-!`§:int = 4;
      
      public static const §&?§:int = 5;
       
      
      private var §&z§:Vector.<§9!5§>;
      
      private var §#!=§:§9i§;
      
      private var §-!<§:§-e§;
      
      public function §"@§(param1:§9i§, param2:§-e§)
      {
         super();
         this.§#!=§ = param1;
         this.§-!<§ = param2;
         this.§&z§ = new Vector.<§9!5§>();
         var _loc3_:int = 0;
         while(_loc3_ < §&?§)
         {
            this.§&z§[_loc3_] = new §9!5§();
            _loc3_++;
         }
      }
      
      public function get §4!2§() : §9i§
      {
         return this.§#!=§;
      }
      
      public function get textureManager() : §-e§
      {
         return this.§-!<§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!5§ = null;
         if(this.§&z§)
         {
            while(this.§&z§.length)
            {
               _loc1_ = this.§&z§.pop();
               _loc1_.dispose();
            }
         }
         this.§&z§ = null;
      }
      
      public function §9x§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§'!§ = new §'!§(this.§#!=§,this.§-!<§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§9!5§;
         if(_loc18_ = this.§@!^§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2z§
      {
         var _loc16_:§2z§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§9!5§;
         if(_loc17_ = this.§@!^§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2z§
      {
         return new §2z§(this.§#!=§,this.§-!<§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&z§.length)
         {
            this.§@!^§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §@!4§(param1:int) : void
      {
         var _loc2_:§9!5§ = this.§@!^§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §+!&§(param1:int) : Sprite
      {
         return this.§@!^§(param1).sprite;
      }
      
      public function §@!^§(param1:Number) : §9!5§
      {
         if(this.§&z§ != null)
         {
            return this.§&z§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§@!4§(§0!8§);
         var _loc1_:§9!5§ = this.§@!^§(§,!Y§);
         var _loc2_:§9!5§ = this.§@!^§(§0!8§);
         _loc1_.§1!,§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §9!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:§9!5§ = null;
         for each(_loc3_ in this.§&z§)
         {
            _loc3_.§7!E§(param1,param2);
         }
      }
   }
}
