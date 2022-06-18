package §]"§
{
   import §6u§.§3W§;
   import §6u§.§@N§;
   import §]!6§.Sprite;
   
   public class §=j§
   {
      
      public static const §[!'§:int = 0;
      
      public static const §]O§:int = 1;
      
      public static const §%!=§:int = 2;
      
      public static const §[m§:int = 3;
      
      public static const §>!-§:int = 4;
      
      public static const §4V§:int = 5;
       
      
      private var §1!0§:Vector.<§ in§>;
      
      private var §-,§:§@N§;
      
      private var §[!C§:§3W§;
      
      public function §=j§(param1:§@N§, param2:§3W§)
      {
         super();
         this.§-,§ = param1;
         this.§[!C§ = param2;
         this.§1!0§ = new Vector.<§ in§>();
         var _loc3_:int = 0;
         while(_loc3_ < §4V§)
         {
            this.§1!0§[_loc3_] = new § in§();
            _loc3_++;
         }
      }
      
      public function get §9V§() : §@N§
      {
         return this.§-,§;
      }
      
      public function get textureManager() : §3W§
      {
         return this.§[!C§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ in§ = null;
         if(this.§1!0§)
         {
            while(this.§1!0§.length)
            {
               _loc1_ = this.§1!0§.pop();
               _loc1_.dispose();
            }
         }
         this.§1!0§ = null;
      }
      
      public function §&!1§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§%B§ = new §%B§(this.§-,§,this.§[!C§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§ in§;
         if(_loc18_ = this.§-u§(param3))
         {
            _loc18_.§#!B§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §#!B§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §4!F§
      {
         var _loc16_:§4!F§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§ in§;
         if(_loc17_ = this.§-u§(param2))
         {
            _loc17_.§#!B§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §4!F§
      {
         return new §4!F§(this.§-,§,this.§[!C§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1!0§.length)
         {
            this.§-u§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §8>§(param1:int) : void
      {
         var _loc2_:§ in§ = this.§-u§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §?6§(param1:int) : Sprite
      {
         return this.§-u§(param1).sprite;
      }
      
      public function §-u§(param1:Number) : § in§
      {
         if(this.§1!0§ != null)
         {
            return this.§1!0§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§8>§(§[!'§);
         var _loc1_:§ in§ = this.§-u§(§]O§);
         var _loc2_:§ in§ = this.§-u§(§[!'§);
         _loc1_.§3F§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §3k§(param1:Number, param2:Number) : void
      {
         var _loc3_:§ in§ = null;
         for each(_loc3_ in this.§1!0§)
         {
            _loc3_.§'!C§(param1,param2);
         }
      }
   }
}
