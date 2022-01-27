package § ! §
{
   import §=`§.§6!I§;
   import §=`§.§7!V§;
   import §`g§.Sprite;
   
   public class §=!%§
   {
      
      public static const §3!z§:int = 0;
      
      public static const §#,§:int = 1;
      
      public static const §,V§:int = 2;
      
      public static const §2k§:int = 3;
      
      public static const §5+§:int = 4;
      
      public static const §1!y§:int = 5;
      
      public static const §"!<§:int = 6;
       
      
      private var §]O§:Vector.<§#=§>;
      
      protected var §1H§:§7!V§;
      
      protected var §&!k§:§6!I§;
      
      public function §=!%§(param1:§7!V§, param2:§6!I§)
      {
         super();
         this.§1H§ = param1;
         this.§&!k§ = param2;
         this.§]O§ = new Vector.<§#=§>();
         var _loc3_:int = 0;
         while(_loc3_ < §"!<§)
         {
            this.§]O§[_loc3_] = new §#=§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §7!V§
      {
         return this.§1H§;
      }
      
      public function get textureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#=§ = null;
         if(this.§]O§)
         {
            while(this.§]O§.length)
            {
               _loc1_ = this.§]O§.pop();
               _loc1_.dispose();
            }
         }
         this.§]O§ = null;
      }
      
      public function §;4§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§0!L§ = new §0!L§(this.§1H§,this.§&!k§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§#=§;
         if(_loc18_ = this.static(param3))
         {
            _loc18_.§-M§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §-M§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §>p§
      {
         var _loc16_:§>p§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§#=§;
         if(_loc17_ = this.static(param2))
         {
            _loc17_.§-M§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §>p§
      {
         return new §>p§(this.§1H§,this.§&!k§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]O§.length)
         {
            this.static(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function § m§(param1:int) : void
      {
         var _loc2_:§#=§ = this.static(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function § in§(param1:int) : Sprite
      {
         return this.static(param1).sprite;
      }
      
      public function static(param1:Number) : §#=§
      {
         if(this.§]O§ != null)
         {
            return this.§]O§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§ m§(§3!z§);
         var _loc1_:§#=§ = this.static(§#,§);
         var _loc2_:§#=§ = this.static(§3!z§);
         _loc1_.§<!j§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §1T§(param1:Number, param2:Number) : void
      {
         var _loc3_:§#=§ = null;
         for each(_loc3_ in this.§]O§)
         {
            _loc3_.§53§(param1,param2);
         }
      }
   }
}
