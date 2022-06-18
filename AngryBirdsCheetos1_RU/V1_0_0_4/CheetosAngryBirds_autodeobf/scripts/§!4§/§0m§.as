package §!4§
{
   import §1!A§.Sprite;
   import §8K§.§,!'§;
   import §8K§.§>g§;
   
   public class §0m§
   {
      
      public static const §#w§:int = 0;
      
      public static const §#4§:int = 1;
      
      public static const §%h§:int = 2;
      
      public static const §=!T§:int = 3;
      
      public static const § !K§:int = 4;
      
      public static const §28§:int = 5;
       
      
      private var §!S§:Vector.<§#!X§>;
      
      private var §5r§:§,!'§;
      
      private var §2!_§:§>g§;
      
      public function §0m§(param1:§,!'§, param2:§>g§)
      {
         super();
         this.§5r§ = param1;
         this.§2!_§ = param2;
         this.§!S§ = new Vector.<§#!X§>();
         var _loc3_:int = 0;
         while(_loc3_ < §28§)
         {
            this.§!S§[_loc3_] = new §#!X§();
            _loc3_++;
         }
      }
      
      public function get §]]§() : §,!'§
      {
         return this.§5r§;
      }
      
      public function get §^!"§() : §>g§
      {
         return this.§2!_§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#!X§ = null;
         if(this.§!S§)
         {
            while(this.§!S§.length)
            {
               _loc1_ = this.§!S§.pop();
               _loc1_.dispose();
            }
         }
         this.§!S§ = null;
      }
      
      public function §4!Q§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§;§ = new §;§(this.§5r§,this.§2!_§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§#!X§;
         if(_loc18_ = this.§1L§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^!_§
      {
         var _loc16_:§^!_§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§#!X§;
         if(_loc17_ = this.§1L§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^!_§
      {
         return new §^!_§(this.§5r§,this.§2!_§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!S§.length)
         {
            this.§1L§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function § !'§(param1:int) : void
      {
         var _loc2_:§#!X§ = this.§1L§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §[,§(param1:int) : Sprite
      {
         return this.§1L§(param1).sprite;
      }
      
      public function §1L§(param1:Number) : §#!X§
      {
         if(this.§!S§ != null)
         {
            return this.§!S§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§ !'§(§#w§);
         var _loc1_:§#!X§ = this.§1L§(§#4§);
         var _loc2_:§#!X§ = this.§1L§(§#w§);
         _loc1_.§7!T§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §4!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:§#!X§ = null;
         for each(_loc3_ in this.§!S§)
         {
            _loc3_.§]g§(param1,param2);
         }
      }
   }
}
