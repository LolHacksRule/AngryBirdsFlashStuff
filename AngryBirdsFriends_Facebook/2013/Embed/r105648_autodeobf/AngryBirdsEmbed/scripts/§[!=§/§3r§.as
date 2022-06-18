package §[!=§
{
   import §;^§.Sprite;
   import §=!K§.§]!%§;
   import §=!K§.§^Q§;
   
   public class §3r§
   {
      
      public static const §]P§:int = 0;
      
      public static const §+W§:int = 1;
      
      public static const §%'§:int = 2;
      
      public static const §"H§:int = 3;
      
      public static const §=T§:int = 4;
      
      public static const §0!@§:int = 5;
      
      public static const §;!A§:int = 6;
       
      
      private var §@!7§:Vector.<§ !=§>;
      
      protected var §?!1§:§]!%§;
      
      protected var §9!=§:§^Q§;
      
      public function §3r§(param1:§]!%§, param2:§^Q§)
      {
         super();
         this.§?!1§ = param1;
         this.§9!=§ = param2;
         this.§@!7§ = new Vector.<§ !=§>();
         var _loc3_:int = 0;
         while(_loc3_ < §;!A§)
         {
            this.§@!7§[_loc3_] = new § !=§();
            _loc3_++;
         }
      }
      
      public function get §6?§() : §]!%§
      {
         return this.§?!1§;
      }
      
      public function get textureManager() : §^Q§
      {
         return this.§9!=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ !=§ = null;
         if(this.§@!7§)
         {
            while(this.§@!7§.length)
            {
               _loc1_ = this.§@!7§.pop();
               _loc1_.dispose();
            }
         }
         this.§@!7§ = null;
      }
      
      public function §"T§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§"=§ = new §"=§(this.§?!1§,this.§9!=§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§ !=§;
         if(_loc18_ = this.§-H§(param3))
         {
            _loc18_.§48§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §48§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §>Z§
      {
         var _loc16_:§>Z§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§ !=§;
         if(_loc17_ = this.§-H§(param2))
         {
            _loc17_.§48§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §>Z§
      {
         return new §>Z§(this.§?!1§,this.§9!=§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!7§.length)
         {
            this.§-H§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §10§(param1:int) : void
      {
         var _loc2_:§ !=§ = this.§-H§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §&!#§(param1:int) : Sprite
      {
         return this.§-H§(param1).sprite;
      }
      
      public function §-H§(param1:Number) : § !=§
      {
         if(this.§@!7§ != null)
         {
            return this.§@!7§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§10§(§]P§);
         var _loc1_:§ !=§ = this.§-H§(§+W§);
         var _loc2_:§ !=§ = this.§-H§(§]P§);
         _loc1_.§ !M§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §+!>§(param1:Number, param2:Number) : void
      {
         var _loc3_:§ !=§ = null;
         for each(_loc3_ in this.§@!7§)
         {
            _loc3_.§9b§(param1,param2);
         }
      }
   }
}
