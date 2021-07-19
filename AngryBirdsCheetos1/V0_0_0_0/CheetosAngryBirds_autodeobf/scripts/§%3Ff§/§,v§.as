package §?f§
{
   import §4W§.§!]§;
   import §4W§.§3!@§;
   import §`a§.Sprite;
   
   public class §,v§
   {
      
      public static const §&!>§:int = 0;
      
      public static const §`!+§:int = 1;
      
      public static const §'>§:int = 2;
      
      public static const §-!;§:int = 3;
      
      public static const §"%§:int = 4;
      
      public static const §!!E§:int = 5;
       
      
      private var §+A§:Vector.<§@!F§>;
      
      private var §6N§:§3!@§;
      
      private var §5<§:§!]§;
      
      public function §,v§(param1:§3!@§, param2:§!]§)
      {
         super();
         this.§6N§ = param1;
         this.§5<§ = param2;
         this.§+A§ = new Vector.<§@!F§>();
         var _loc3_:int = 0;
         while(_loc3_ < §!!E§)
         {
            this.§+A§[_loc3_] = new §@!F§();
            _loc3_++;
         }
      }
      
      public function get §"B§() : §3!@§
      {
         return this.§6N§;
      }
      
      public function get §#G§() : §!]§
      {
         return this.§5<§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@!F§ = null;
         if(this.§+A§)
         {
            while(this.§+A§.length)
            {
               _loc1_ = this.§+A§.pop();
               _loc1_.dispose();
            }
         }
         this.§+A§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §-&§
      {
         var _loc16_:§-&§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§@!F§;
         if(_loc17_ = this.§>!P§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §-&§
      {
         return new §-&§(this.§6N§,this.§5<§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+A§.length)
         {
            this.§>!P§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §0!"§(param1:int) : void
      {
         var _loc2_:§@!F§ = this.§>!P§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §7q§(param1:int) : Sprite
      {
         return this.§>!P§(param1).sprite;
      }
      
      public function §>!P§(param1:Number) : §@!F§
      {
         if(this.§+A§ != null)
         {
            return this.§+A§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§0!"§(§&!>§);
         var _loc1_:§@!F§ = this.§>!P§(§`!+§);
         var _loc2_:§@!F§ = this.§>!P§(§&!>§);
         _loc1_.§[W§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §<R§(param1:Number, param2:Number) : void
      {
         var _loc3_:§@!F§ = null;
         for each(_loc3_ in this.§+A§)
         {
            _loc3_.§?!1§(param1,param2);
         }
      }
   }
}
