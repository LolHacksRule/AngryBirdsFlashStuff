package §!R§
{
   import §@!-§.§!!Y§;
   import §@!-§.§3"1§;
   import §@!i§.Sprite;
   
   public class §>"=§
   {
      
      public static const §5!z§:int = 0;
      
      public static const § J§:int = 1;
      
      public static const §3;§:int = 2;
      
      public static const §3%§:int = 3;
      
      public static const §4J§:int = 4;
      
      public static const §&!,§:int = 5;
       
      
      private var §;p§:Vector.<§=h§>;
      
      private var §+!7§:§!!Y§;
      
      private var §9!r§:§3"1§;
      
      public function §>"=§(param1:§!!Y§, param2:§3"1§)
      {
         super();
         this.§+!7§ = param1;
         this.§9!r§ = param2;
         this.§;p§ = new Vector.<§=h§>();
         var _loc3_:int = 0;
         while(_loc3_ < §&!,§)
         {
            this.§;p§[_loc3_] = new §=h§();
            _loc3_++;
         }
      }
      
      public function get §]9§() : §!!Y§
      {
         return this.§+!7§;
      }
      
      public function get §="!§() : §3"1§
      {
         return this.§9!r§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=h§ = null;
         if(this.§;p§)
         {
            while(this.§;p§.length)
            {
               _loc1_ = this.§;p§.pop();
               _loc1_.dispose();
            }
         }
         this.§;p§ = null;
      }
      
      public function §@!W§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§1!F§ = new §1!F§(this.§+!7§,this.§9!r§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§=h§;
         if(_loc18_ = this.§2Y§(param3))
         {
            _loc18_.§""#§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §""#§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8u§
      {
         var _loc16_:§8u§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§=h§;
         if(_loc17_ = this.§2Y§(param2))
         {
            _loc17_.§""#§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8u§
      {
         return new §8u§(this.§+!7§,this.§9!r§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;p§.length)
         {
            this.§2Y§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §0B§(param1:int) : void
      {
         var _loc2_:§=h§ = this.§2Y§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §0!L§(param1:int) : Sprite
      {
         return this.§2Y§(param1).sprite;
      }
      
      public function §2Y§(param1:Number) : §=h§
      {
         if(this.§;p§ != null)
         {
            return this.§;p§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§0B§(§5!z§);
         var _loc1_:§=h§ = this.§2Y§(§ J§);
         var _loc2_:§=h§ = this.§2Y§(§5!z§);
         _loc1_.§+L§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §4K§(param1:Number, param2:Number) : void
      {
         var _loc3_:§=h§ = null;
         for each(_loc3_ in this.§;p§)
         {
            _loc3_.§,7§(param1,param2);
         }
      }
   }
}
