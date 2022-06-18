package §'!Y§
{
   import §,H§.Sprite;
   import §2!4§.§5T§;
   import §2!4§.§]!7§;
   
   public class §^Z§
   {
      
      public static const §6a§:int = 0;
      
      public static const §'F§:int = 1;
      
      public static const §1a§:int = 2;
      
      public static const §<!%§:int = 3;
      
      public static const §2!8§:int = 4;
      
      public static const §[B§:int = 5;
       
      
      private var § ]§:Vector.<§=!I§>;
      
      private var §var§:§]!7§;
      
      private var §^!2§:§5T§;
      
      public function §^Z§(param1:§]!7§, param2:§5T§)
      {
         super();
         this.§var§ = param1;
         this.§^!2§ = param2;
         this.§ ]§ = new Vector.<§=!I§>();
         var _loc3_:int = 0;
         while(_loc3_ < §[B§)
         {
            this.§ ]§[_loc3_] = new §=!I§();
            _loc3_++;
         }
      }
      
      public function get §"y§() : §]!7§
      {
         return this.§var§;
      }
      
      public function get §&w§() : §5T§
      {
         return this.§^!2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!I§ = null;
         if(this.§ ]§)
         {
            while(this.§ ]§.length)
            {
               _loc1_ = this.§ ]§.pop();
               _loc1_.dispose();
            }
         }
         this.§ ]§ = null;
      }
      
      public function §?L§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§1V§ = new §1V§(this.§var§,this.§^!2§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§=!I§;
         if(_loc18_ = this.§2Y§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §+e§
      {
         var _loc16_:§+e§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§=!I§;
         if(_loc17_ = this.§2Y§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §+e§
      {
         return new §+e§(this.§var§,this.§^!2§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ ]§.length)
         {
            this.§2Y§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §2J§(param1:int) : void
      {
         var _loc2_:§=!I§ = this.§2Y§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §'G§(param1:int) : Sprite
      {
         return this.§2Y§(param1).sprite;
      }
      
      public function §2Y§(param1:Number) : §=!I§
      {
         if(this.§ ]§ != null)
         {
            return this.§ ]§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§2J§(§6a§);
         var _loc1_:§=!I§ = this.§2Y§(§'F§);
         var _loc2_:§=!I§ = this.§2Y§(§6a§);
         _loc1_.§4d§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §"0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§=!I§ = null;
         for each(_loc3_ in this.§ ]§)
         {
            _loc3_.§;7§(param1,param2);
         }
      }
   }
}
