package §8!C§
{
   import §9!a§.Sprite;
   import §=0§.§ !C§;
   import §=0§.§>O§;
   
   public class §2!4§
   {
      
      public static const §'0§:int = 0;
      
      public static const § !N§:int = 1;
      
      public static const §@!P§:int = 2;
      
      public static const §8!Q§:int = 3;
      
      public static const §6N§:int = 4;
      
      public static const §&J§:int = 5;
       
      
      private var §^t§:Vector.<§in §>;
      
      private var §6y§:§ !C§;
      
      private var §<!P§:§>O§;
      
      public function §2!4§(param1:§ !C§, param2:§>O§)
      {
         super();
         this.§6y§ = param1;
         this.§<!P§ = param2;
         this.§^t§ = new Vector.<§in §>();
         var _loc3_:int = 0;
         while(_loc3_ < §&J§)
         {
            this.§^t§[_loc3_] = new §in §();
            _loc3_++;
         }
      }
      
      public function get §'!;§() : § !C§
      {
         return this.§6y§;
      }
      
      public function get §!c§() : §>O§
      {
         return this.§<!P§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§in § = null;
         if(this.§^t§)
         {
            while(this.§^t§.length)
            {
               _loc1_ = this.§^t§.pop();
               _loc1_.dispose();
            }
         }
         this.§^t§ = null;
      }
      
      public function §,!>§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§=!>§ = new §=!>§(this.§6y§,this.§<!P§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§in §;
         if(_loc18_ = this.§-!+§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §%v§
      {
         var _loc16_:§%v§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§in §;
         if(_loc17_ = this.§-!+§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §%v§
      {
         return new §%v§(this.§6y§,this.§<!P§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^t§.length)
         {
            this.§-!+§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §>d§(param1:int) : void
      {
         var _loc2_:§in § = this.§-!+§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §4!X§(param1:int) : Sprite
      {
         return this.§-!+§(param1).sprite;
      }
      
      public function §-!+§(param1:Number) : §in §
      {
         if(this.§^t§ != null)
         {
            return this.§^t§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§>d§(§'0§);
         var _loc1_:§in § = this.§-!+§(§ !N§);
         var _loc2_:§in § = this.§-!+§(§'0§);
         _loc1_.§%m§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §^!E§(param1:Number, param2:Number) : void
      {
         var _loc3_:§in § = null;
         for each(_loc3_ in this.§^t§)
         {
            _loc3_.§3[§(param1,param2);
         }
      }
   }
}
