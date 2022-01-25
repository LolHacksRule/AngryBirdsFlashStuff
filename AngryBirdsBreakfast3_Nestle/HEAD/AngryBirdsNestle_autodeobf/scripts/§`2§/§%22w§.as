package §`2§
{
   import §2`§.§%!!§;
   import §2`§.§+$§;
   import §3!J§.Sprite;
   
   public class §"w§
   {
      
      public static const §>!X§:int = 0;
      
      public static const §6$§:int = 1;
      
      public static const §9@§:int = 2;
      
      public static const §,§:int = 3;
      
      public static const §>h§:int = 4;
      
      public static const §!_§:int = 5;
      
      public static const §6k§:int = 6;
       
      
      private var §19§:Vector.<§^!p§>;
      
      private var §'!'§:§+$§;
      
      private var §,%§:§%!!§;
      
      public function §"w§(param1:§+$§, param2:§%!!§)
      {
         super();
         this.§'!'§ = param1;
         this.§,%§ = param2;
         this.§19§ = new Vector.<§^!p§>();
         var _loc3_:int = 0;
         while(_loc3_ < §6k§)
         {
            this.§19§[_loc3_] = new §^!p§();
            _loc3_++;
         }
      }
      
      public function get §13§() : §+$§
      {
         return this.§'!'§;
      }
      
      public function get §]!z§() : §%!!§
      {
         return this.§,%§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^!p§ = null;
         if(this.§19§)
         {
            while(this.§19§.length)
            {
               _loc1_ = this.§19§.pop();
               _loc1_.dispose();
            }
         }
         this.§19§ = null;
      }
      
      public function §9!@§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`""§
      {
         var _loc16_:§`""§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§^!p§;
         if(_loc17_ = this.§>!b§(param2))
         {
            _loc17_.§9!@§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §=9§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§ _§ = new § _§(this.§'!'§,this.§,%§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§^!p§;
         if(_loc18_ = this.§>!b§(param3))
         {
            _loc18_.§9!@§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`""§
      {
         return new §`""§(this.§'!'§,this.§,%§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§19§.length)
         {
            this.§>!b§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §`o§(param1:int) : void
      {
         var _loc2_:§^!p§ = this.§>!b§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §&!§(param1:int) : Sprite
      {
         return this.§>!b§(param1).sprite;
      }
      
      public function §>!b§(param1:Number) : §^!p§
      {
         if(this.§19§ != null)
         {
            return this.§19§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§`o§(§>!X§);
         var _loc1_:§^!p§ = this.§>!b§(§6$§);
         var _loc2_:§^!p§ = this.§>!b§(§>!X§);
         _loc1_.§#""§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §4!J§(param1:Number, param2:Number) : void
      {
         var _loc3_:§^!p§ = null;
         for each(_loc3_ in this.§19§)
         {
            _loc3_.§5_§(param1,param2);
         }
      }
   }
}
