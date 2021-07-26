package §#+§
{
   import §#?§.§6!4§;
   import §#?§.§=E§;
   import §90§.Sprite;
   
   public class §6!C§
   {
      
      public static const § ;§:int = 0;
      
      public static const § l§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §#!L§:int = 4;
      
      public static const §=L§:int = 5;
      
      public static const §!`§:int = 6;
       
      
      private var §@W§:Vector.<§%3§>;
      
      protected var § 2§:§=E§;
      
      protected var §[E§:§6!4§;
      
      public function §6!C§(param1:§=E§, param2:§6!4§)
      {
         super();
         this.§ 2§ = param1;
         this.§[E§ = param2;
         this.§@W§ = new Vector.<§%3§>();
         var _loc3_:int = 0;
         while(_loc3_ < §!`§)
         {
            this.§@W§[_loc3_] = new §%3§();
            _loc3_++;
         }
      }
      
      public function get §7g§() : §=E§
      {
         return this.§ 2§;
      }
      
      public function get textureManager() : §6!4§
      {
         return this.§[E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%3§ = null;
         if(this.§@W§)
         {
            while(this.§@W§.length)
            {
               _loc1_ = this.§@W§.pop();
               _loc1_.dispose();
            }
         }
         this.§@W§ = null;
      }
      
      public function §1!7§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§9!E§ = new §9!E§(this.§ 2§,this.§[E§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§%3§;
         if(_loc18_ = this.§'4§(param3))
         {
            _loc18_.§-!$§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §-!$§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §@!<§
      {
         var _loc16_:§@!<§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§%3§;
         if(_loc17_ = this.§'4§(param2))
         {
            _loc17_.§-!$§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §@!<§
      {
         return new §@!<§(this.§ 2§,this.§[E§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@W§.length)
         {
            this.§'4§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §4!>§(param1:int) : void
      {
         var _loc2_:§%3§ = this.§'4§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §#!I§(param1:int) : Sprite
      {
         return this.§'4§(param1).sprite;
      }
      
      public function §'4§(param1:Number) : §%3§
      {
         if(this.§@W§ != null)
         {
            return this.§@W§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§4!>§(§ ;§);
         var _loc1_:§%3§ = this.§'4§(§ l§);
         var _loc2_:§%3§ = this.§'4§(§ ;§);
         _loc1_.§5!6§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §!!9§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%3§ = null;
         for each(_loc3_ in this.§@W§)
         {
            _loc3_.§,C§(param1,param2);
         }
      }
   }
}
