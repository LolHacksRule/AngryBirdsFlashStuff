package §7"p§
{
   import §'G§.§3$§;
   import §'G§.§^"[§;
   import §6#H§.Sprite;
   
   public class §<#]§
   {
      
      public static const §4!7§:int = 0;
      
      public static const §@"5§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §&"<§:int = 4;
      
      public static const PARTICLE_GROUP_FOREGROUND_EFFECTS:int = 5;
      
      public static const §[!b§:int = 6;
       
      
      private var §8M§:Vector.<§[$1§>;
      
      private var §7!w§:§^"[§;
      
      private var §?#r§:§3$§;
      
      public function §<#]§(param1:§^"[§, param2:§3$§)
      {
         super();
         this.§7!w§ = param1;
         this.§?#r§ = param2;
         this.§8M§ = new Vector.<§[$1§>();
         var _loc3_:int = 0;
         while(_loc3_ < §[!b§)
         {
            this.§8M§[_loc3_] = new §[$1§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §^"[§
      {
         return this.§7!w§;
      }
      
      public function get textureManager() : §3$§
      {
         return this.§?#r§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[$1§ = null;
         if(this.§8M§)
         {
            while(this.§8M§.length)
            {
               _loc1_ = this.§8M§.pop();
               _loc1_.dispose();
            }
         }
         this.§8M§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false, param16:String = null) : §6!9§
      {
         var _loc17_:§6!9§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         var _loc18_:§[$1§;
         if(_loc18_ = this.§`!x§(param2))
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
         var _loc17_:§&"+§ = new §&"+§(this.§7!w§,this.§?#r§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§[$1§;
         if(_loc18_ = this.§`!x§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §9!_§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:§3#&§ = new §3#&§(this.§7!w§,this.§?#r§,param2,param3,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param1,param4);
         var _loc17_:§[$1§;
         if(_loc17_ = this.§`!x§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = null) : §6!9§
      {
         return new §6!9§(this.§7!w§,this.§?#r§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8M§.length)
         {
            this.§`!x§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §!"_§(param1:int) : void
      {
         var _loc2_:§[$1§ = this.§`!x§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §3#f§(param1:int) : Sprite
      {
         return this.§`!x§(param1).sprite;
      }
      
      public function §`!x§(param1:Number) : §[$1§
      {
         if(this.§8M§ != null)
         {
            return this.§8M§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§!"_§(§4!7§);
         var _loc1_:§[$1§ = this.§`!x§(§@"5§);
         var _loc2_:§[$1§ = this.§`!x§(§4!7§);
         _loc1_.§%!Y§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:§[$1§ = null;
         for each(_loc3_ in this.§8M§)
         {
            _loc3_.§4O§(param1,param2);
         }
      }
   }
}
