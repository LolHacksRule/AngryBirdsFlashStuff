package §,M§
{
   import §,!Q§.Sprite;
   import §2l§.§%i§;
   import §2l§.§]O§;
   
   public class §%C§
   {
      
      public static const §"!a§:int = 0;
      
      public static const §6%§:int = 1;
      
      public static const §1D§:int = 2;
      
      public static const §5l§:int = 3;
      
      public static const §#!Q§:int = 4;
      
      public static const §@_§:int = 5;
       
      
      private var §<u§:Vector.<§9G§>;
      
      private var §]S§:§%i§;
      
      private var §!!@§:§]O§;
      
      public function §%C§(param1:§%i§, param2:§]O§)
      {
         super();
         this.§]S§ = param1;
         this.§!!@§ = param2;
         this.§<u§ = new Vector.<§9G§>();
         var _loc3_:int = 0;
         while(_loc3_ < §@_§)
         {
            this.§<u§[_loc3_] = new §9G§();
            _loc3_++;
         }
      }
      
      public function get §0!+§() : §%i§
      {
         return this.§]S§;
      }
      
      public function get textureManager() : §]O§
      {
         return this.§!!@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9G§ = null;
         if(this.§<u§)
         {
            while(this.§<u§.length)
            {
               _loc1_ = this.§<u§.pop();
               _loc1_.dispose();
            }
         }
         this.§<u§ = null;
      }
      
      public function §&A§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§"!Q§ = new §"!Q§(this.§]S§,this.§!!@§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§9G§;
         if(_loc18_ = this.§"g§(param3))
         {
            _loc18_.§<%§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §<%§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §,!;§
      {
         var _loc16_:§,!;§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§9G§;
         if(_loc17_ = this.§"g§(param2))
         {
            _loc17_.§<%§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §,!;§
      {
         return new §,!;§(this.§]S§,this.§!!@§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<u§.length)
         {
            this.§"g§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §@A§(param1:int) : void
      {
         var _loc2_:§9G§ = this.§"g§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §-!b§(param1:int) : Sprite
      {
         return this.§"g§(param1).sprite;
      }
      
      public function §"g§(param1:Number) : §9G§
      {
         if(this.§<u§ != null)
         {
            return this.§<u§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§@A§(§"!a§);
         var _loc1_:§9G§ = this.§"g§(§6%§);
         var _loc2_:§9G§ = this.§"g§(§"!a§);
         _loc1_.§<!L§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §]H§(param1:Number, param2:Number) : void
      {
         var _loc3_:§9G§ = null;
         for each(_loc3_ in this.§<u§)
         {
            _loc3_.§%d§(param1,param2);
         }
      }
   }
}
