package §"!,§
{
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   import §^!Y§.§else §;
   
   public class §^z§
   {
      
      public static const §[h§:int = 0;
      
      public static const §#1§:int = 1;
      
      public static const §=@§:int = 2;
      
      public static const §!!B§:int = 3;
      
      public static const §4!c§:int = 4;
      
      public static const §#!5§:int = 5;
       
      
      private var §5@§:Vector.<§7N§>;
      
      private var §5P§:§else §;
      
      private var §+]§:§'R§;
      
      public function §^z§(param1:§else §, param2:§'R§)
      {
         super();
         this.§5P§ = param1;
         this.§+]§ = param2;
         this.§5@§ = new Vector.<§7N§>();
         var _loc3_:int = 0;
         while(_loc3_ < §#!5§)
         {
            this.§5@§[_loc3_] = new §7N§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §else §
      {
         return this.§5P§;
      }
      
      public function get textureManager() : §'R§
      {
         return this.§+]§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7N§ = null;
         if(this.§5@§)
         {
            while(this.§5@§.length)
            {
               _loc1_ = this.§5@§.pop();
               _loc1_.dispose();
            }
         }
         this.§5@§ = null;
      }
      
      public function §2!c§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§5A§ = new §5A§(this.§5P§,this.§+]§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§7N§;
         if(_loc18_ = this.§,!V§(param3))
         {
            _loc18_.§#Z§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §#Z§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §9!B§
      {
         var _loc16_:§9!B§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§7N§;
         if(_loc17_ = this.§,!V§(param2))
         {
            _loc17_.§#Z§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §9!B§
      {
         return new §9!B§(this.§5P§,this.§+]§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5@§.length)
         {
            this.§,!V§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §0I§(param1:int) : void
      {
         var _loc2_:§7N§ = this.§,!V§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §"!r§(param1:int) : Sprite
      {
         return this.§,!V§(param1).sprite;
      }
      
      public function §,!V§(param1:Number) : §7N§
      {
         if(this.§5@§ != null)
         {
            return this.§5@§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§0I§(§[h§);
         var _loc1_:§7N§ = this.§,!V§(§#1§);
         var _loc2_:§7N§ = this.§,!V§(§[h§);
         _loc1_.§,I§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §7!P§(param1:Number, param2:Number) : void
      {
         var _loc3_:§7N§ = null;
         for each(_loc3_ in this.§5@§)
         {
            _loc3_.§!^§(param1,param2);
         }
      }
   }
}
