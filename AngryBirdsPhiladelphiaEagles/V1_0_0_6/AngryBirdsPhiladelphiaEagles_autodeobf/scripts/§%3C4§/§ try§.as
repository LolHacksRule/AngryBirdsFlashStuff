package §<4§
{
   import §4!0§.§+!,§;
   import §4!0§.§3§;
   import §86§.Sprite;
   
   public class § try§
   {
      
      public static const §1P§:int = 0;
      
      public static const §`!+§:int = 1;
      
      public static const §]R§:int = 2;
      
      public static const §4!+§:int = 3;
      
      public static const §3!6§:int = 4;
      
      public static const §4!B§:int = 5;
       
      
      private var §"!'§:Vector.<§'X§>;
      
      private var §#!C§:§+!,§;
      
      private var §"P§:§3§;
      
      public function § try§(param1:§+!,§, param2:§3§)
      {
         super();
         this.§#!C§ = param1;
         this.§"P§ = param2;
         this.§"!'§ = new Vector.<§'X§>();
         var _loc3_:int = 0;
         while(_loc3_ < §4!B§)
         {
            this.§"!'§[_loc3_] = new §'X§();
            _loc3_++;
         }
      }
      
      public function get §>"§() : §+!,§
      {
         return this.§#!C§;
      }
      
      public function get textureManager() : §3§
      {
         return this.§"P§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'X§ = null;
         if(this.§"!'§)
         {
            while(this.§"!'§.length)
            {
               _loc1_ = this.§"!'§.pop();
               _loc1_.dispose();
            }
         }
         this.§"!'§ = null;
      }
      
      public function §&y§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§@7§ = new §@7§(this.§#!C§,this.§"P§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§'X§;
         if(_loc18_ = this.§0!I§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5!C§
      {
         var _loc16_:§5!C§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§'X§;
         if(_loc17_ = this.§0!I§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §5!C§
      {
         return new §5!C§(this.§#!C§,this.§"P§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!'§.length)
         {
            this.§0!I§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §@T§(param1:int) : void
      {
         var _loc2_:§'X§ = this.§0!I§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §]>§(param1:int) : Sprite
      {
         return this.§0!I§(param1).sprite;
      }
      
      public function §0!I§(param1:Number) : §'X§
      {
         if(this.§"!'§ != null)
         {
            return this.§"!'§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§@T§(§1P§);
         var _loc1_:§'X§ = this.§0!I§(§`!+§);
         var _loc2_:§'X§ = this.§0!I§(§1P§);
         _loc1_.§^!O§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §`2§(param1:Number, param2:Number) : void
      {
         var _loc3_:§'X§ = null;
         for each(_loc3_ in this.§"!'§)
         {
            _loc3_.§^`§(param1,param2);
         }
      }
   }
}
