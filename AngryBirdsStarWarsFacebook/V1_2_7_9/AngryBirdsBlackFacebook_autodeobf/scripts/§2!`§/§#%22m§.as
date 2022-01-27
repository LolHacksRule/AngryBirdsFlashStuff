package §2!`§
{
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §3"$§.§]k§;
   
   public class §#"m§
   {
      
      public static const §6"E§:int = 0;
      
      public static const §["A§:int = 1;
      
      public static const §7-§:int = 2;
      
      public static const §=!"§:int = 3;
      
      public static const §9!c§:int = 4;
      
      public static const §!"F§:int = 5;
      
      public static const §1T§:int = 6;
       
      
      private var §"Z§:Vector.<§-_§>;
      
      private var §5#&§:§]k§;
      
      private var §-#7§:§&"0§;
      
      public function §#"m§(param1:§]k§, param2:§&"0§)
      {
         super();
         this.§5#&§ = param1;
         this.§-#7§ = param2;
         this.§"Z§ = new Vector.<§-_§>();
         var _loc3_:int = 0;
         while(_loc3_ < §1T§)
         {
            this.§"Z§[_loc3_] = new §-_§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §]k§
      {
         return this.§5#&§;
      }
      
      public function get textureManager() : §&"0§
      {
         return this.§-#7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-_§ = null;
         if(this.§"Z§)
         {
            while(this.§"Z§.length)
            {
               _loc1_ = this.§"Z§.pop();
               _loc1_.dispose();
            }
         }
         this.§"Z§ = null;
      }
      
      public function §[#$§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §;6§
      {
         var _loc16_:§;6§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§-_§;
         if(_loc17_ = this.§#!e§(param2))
         {
            _loc17_.§[#$§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §-"8§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§=!6§ = new §=!6§(this.§5#&§,this.§-#7§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§-_§;
         if(_loc18_ = this.§#!e§(param3))
         {
            _loc18_.§[#$§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §;6§
      {
         return new §;6§(this.§5#&§,this.§-#7§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§"Z§.length)
         {
            this.§#!e§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §<a§(param1:int) : void
      {
         var _loc2_:§-_§ = this.§#!e§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §;c§(param1:int) : Sprite
      {
         return this.§#!e§(param1).sprite;
      }
      
      public function §#!e§(param1:Number) : §-_§
      {
         if(this.§"Z§ != null)
         {
            return this.§"Z§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§<a§(§6"E§);
         var _loc1_:§-_§ = this.§#!e§(§["A§);
         var _loc2_:§-_§ = this.§#!e§(§6"E§);
         _loc1_.§1L§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §6#3§(param1:Number, param2:Number) : void
      {
         var _loc3_:§-_§ = null;
         for each(_loc3_ in this.§"Z§)
         {
            _loc3_.§!E§(param1,param2);
         }
      }
   }
}
