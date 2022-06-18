package §27§
{
   import §7u§.Sprite;
   import §`!B§.§'I§;
   import §`!B§.§=m§;
   
   public class § M§
   {
      
      public static const §`!U§:int = 0;
      
      public static const §>H§:int = 1;
      
      public static const §7<§:int = 2;
      
      public static const §&^§:int = 3;
      
      public static const §[!&§:int = 4;
      
      public static const §3!Y§:int = 5;
       
      
      private var §8,§:Vector.<§3Y§>;
      
      private var §-I§:§'I§;
      
      private var §7!W§:§=m§;
      
      public function § M§(param1:§'I§, param2:§=m§)
      {
         super();
         this.§-I§ = param1;
         this.§7!W§ = param2;
         this.§8,§ = new Vector.<§3Y§>();
         var _loc3_:int = 0;
         while(_loc3_ < §3!Y§)
         {
            this.§8,§[_loc3_] = new §3Y§();
            _loc3_++;
         }
      }
      
      public function get §]q§() : §'I§
      {
         return this.§-I§;
      }
      
      public function get §59§() : §=m§
      {
         return this.§7!W§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3Y§ = null;
         if(this.§8,§)
         {
            while(this.§8,§.length)
            {
               _loc1_ = this.§8,§.pop();
               _loc1_.dispose();
            }
         }
         this.§8,§ = null;
      }
      
      public function §9U§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§[w§ = new §[w§(this.§-I§,this.§7!W§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§3Y§;
         if(_loc18_ = this.§<!`§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §4+§
      {
         var _loc16_:§4+§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§3Y§;
         if(_loc17_ = this.§<!`§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §4+§
      {
         return new §4+§(this.§-I§,this.§7!W§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8,§.length)
         {
            this.§<!`§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §]?§(param1:int) : void
      {
         var _loc2_:§3Y§ = this.§<!`§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §8l§(param1:int) : Sprite
      {
         return this.§<!`§(param1).sprite;
      }
      
      public function §<!`§(param1:Number) : §3Y§
      {
         if(this.§8,§ != null)
         {
            return this.§8,§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§]?§(§`!U§);
         var _loc1_:§3Y§ = this.§<!`§(§>H§);
         var _loc2_:§3Y§ = this.§<!`§(§`!U§);
         _loc1_.§-!T§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §3!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:§3Y§ = null;
         for each(_loc3_ in this.§8,§)
         {
            _loc3_.§=J§(param1,param2);
         }
      }
   }
}
