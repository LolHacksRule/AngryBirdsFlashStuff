package §,!A§
{
   import §+!]§.§!,§;
   import §+!]§.§0!B§;
   import §6!;§.Sprite;
   
   public class §0i§
   {
      
      public static const §1O§:int = 0;
      
      public static const §=R§:int = 1;
      
      public static const §%3§:int = 2;
      
      public static const §>E§:int = 3;
      
      public static const §0V§:int = 4;
      
      public static const §-+§:int = 5;
      
      public static const §#^§:int = 6;
       
      
      private var §+p§:Vector.<§`G§>;
      
      protected var §[&§:§0!B§;
      
      protected var §[G§:§!,§;
      
      public function §0i§(param1:§0!B§, param2:§!,§)
      {
         super();
         this.§[&§ = param1;
         this.§[G§ = param2;
         this.§+p§ = new Vector.<§`G§>();
         var _loc3_:int = 0;
         while(_loc3_ < §#^§)
         {
            this.§+p§[_loc3_] = new §`G§();
            _loc3_++;
         }
      }
      
      public function get §2!]§() : §0!B§
      {
         return this.§[&§;
      }
      
      public function get textureManager() : §!,§
      {
         return this.§[G§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`G§ = null;
         if(this.§+p§)
         {
            while(this.§+p§.length)
            {
               _loc1_ = this.§+p§.pop();
               _loc1_.dispose();
            }
         }
         this.§+p§ = null;
      }
      
      public function §]V§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§[M§ = new §[M§(this.§[&§,this.§[G§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§`G§;
         if(_loc18_ = this.§%,§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §-q§
      {
         var _loc16_:§-q§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§`G§;
         if(_loc17_ = this.§%,§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §-q§
      {
         return new §-q§(this.§[&§,this.§[G§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+p§.length)
         {
            this.§%,§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §+m§(param1:int) : void
      {
         var _loc2_:§`G§ = this.§%,§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §7J§(param1:int) : Sprite
      {
         return this.§%,§(param1).sprite;
      }
      
      public function §%,§(param1:Number) : §`G§
      {
         if(this.§+p§ != null)
         {
            return this.§+p§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§+m§(§1O§);
         var _loc1_:§`G§ = this.§%,§(§=R§);
         var _loc2_:§`G§ = this.§%,§(§1O§);
         _loc1_.§@!5§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §`s§(param1:Number, param2:Number) : void
      {
         var _loc3_:§`G§ = null;
         for each(_loc3_ in this.§+p§)
         {
            _loc3_.§5Q§(param1,param2);
         }
      }
   }
}
