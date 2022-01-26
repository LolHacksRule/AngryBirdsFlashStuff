package §]2§
{
   import §&V§.§,w§;
   import §&V§.§^!8§;
   import §@!=§.Sprite;
   
   public class §<u§
   {
      
      public static const §&Z§:int = 0;
      
      public static const §6x§:int = 1;
      
      public static const §!>§:int = 2;
      
      public static const §>7§:int = 3;
      
      public static const §<!<§:int = 4;
      
      public static const §;!3§:int = 5;
       
      
      private var §+6§:Vector.<§ 9§>;
      
      private var §7?§:§^!8§;
      
      private var §^!&§:§,w§;
      
      public function §<u§(param1:§^!8§, param2:§,w§)
      {
         super();
         this.§7?§ = param1;
         this.§^!&§ = param2;
         this.§+6§ = new Vector.<§ 9§>();
         var _loc3_:int = 0;
         while(_loc3_ < §;!3§)
         {
            this.§+6§[_loc3_] = new § 9§();
            _loc3_++;
         }
      }
      
      public function get §]P§() : §^!8§
      {
         return this.§7?§;
      }
      
      public function get textureManager() : §,w§
      {
         return this.§^!&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ 9§ = null;
         if(this.§+6§)
         {
            while(this.§+6§.length)
            {
               _loc1_ = this.§+6§.pop();
               _loc1_.dispose();
            }
         }
         this.§+6§ = null;
      }
      
      public function §1C§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`b§
      {
         var _loc16_:§`b§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§ 9§;
         if(_loc17_ = this.§%$§(param2))
         {
            _loc17_.§1C§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §`b§
      {
         return new §`b§(this.§7?§,this.§^!&§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+6§.length)
         {
            this.§%$§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function § ;§(param1:int) : void
      {
         var _loc2_:§ 9§ = this.§%$§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §0!8§(param1:int) : Sprite
      {
         return this.§%$§(param1).sprite;
      }
      
      public function §%$§(param1:Number) : § 9§
      {
         if(this.§+6§ != null)
         {
            return this.§+6§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§ ;§(§&Z§);
         var _loc1_:§ 9§ = this.§%$§(§6x§);
         var _loc2_:§ 9§ = this.§%$§(§&Z§);
         _loc1_.§7y§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §4!A§(param1:Number, param2:Number) : void
      {
         var _loc3_:§ 9§ = null;
         for each(_loc3_ in this.§+6§)
         {
            _loc3_.§[R§(param1,param2);
         }
      }
   }
}
