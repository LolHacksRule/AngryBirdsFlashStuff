package §3v§
{
   import §,6§.§!o§;
   import §,6§.§>N§;
   import §9E§.Sprite;
   
   public class §,n§
   {
      
      public static const §'!n§:int = 0;
      
      public static const §implements§:int = 1;
      
      public static const §?J§:int = 2;
      
      public static const §9!&§:int = 3;
      
      public static const §0,§:int = 4;
      
      public static const §6[§:int = 5;
       
      
      private var §^!j§:Vector.<§>!7§>;
      
      private var §'@§:§>N§;
      
      private var §3!L§:§!o§;
      
      public function §,n§(param1:§>N§, param2:§!o§)
      {
         super();
         this.§'@§ = param1;
         this.§3!L§ = param2;
         this.§^!j§ = new Vector.<§>!7§>();
         var _loc3_:int = 0;
         while(_loc3_ < §6[§)
         {
            this.§^!j§[_loc3_] = new §>!7§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §>N§
      {
         return this.§'@§;
      }
      
      public function get textureManager() : §!o§
      {
         return this.§3!L§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>!7§ = null;
         if(this.§^!j§)
         {
            while(this.§^!j§.length)
            {
               _loc1_ = this.§^!j§.pop();
               _loc1_.dispose();
            }
         }
         this.§^!j§ = null;
      }
      
      public function §[!3§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§,!B§ = new §,!B§(this.§'@§,this.§3!L§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§>!7§;
         if(_loc18_ = this.§>!R§(param3))
         {
            _loc18_.§=!K§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §=!K§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §6Q§
      {
         var _loc16_:§6Q§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§>!7§;
         if(_loc17_ = this.§>!R§(param2))
         {
            _loc17_.§=!K§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §6Q§
      {
         return new §6Q§(this.§'@§,this.§3!L§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!j§.length)
         {
            this.§>!R§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §=!+§(param1:int) : void
      {
         var _loc2_:§>!7§ = this.§>!R§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §`!%§(param1:int) : Sprite
      {
         return this.§>!R§(param1).sprite;
      }
      
      public function §>!R§(param1:Number) : §>!7§
      {
         if(this.§^!j§ != null)
         {
            return this.§^!j§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§=!+§(§'!n§);
         var _loc1_:§>!7§ = this.§>!R§(§implements§);
         var _loc2_:§>!7§ = this.§>!R§(§'!n§);
         _loc1_.§;!'§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>!7§ = null;
         for each(_loc3_ in this.§^!j§)
         {
            _loc3_.§>!$§(param1,param2);
         }
      }
   }
}
