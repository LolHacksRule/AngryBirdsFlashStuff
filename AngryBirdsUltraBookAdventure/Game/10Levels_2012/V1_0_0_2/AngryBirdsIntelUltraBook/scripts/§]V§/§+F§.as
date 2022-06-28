package §]V§
{
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   import §-w§.§^!&§;
   
   public class §+F§
   {
      
      public static const §1^§:int = 0;
      
      public static const §%!W§:int = 1;
      
      public static const §7!t§:int = 2;
      
      public static const §+!X§:int = 3;
      
      public static const §5!2§:int = 4;
      
      public static const §@L§:int = 5;
       
      
      private var §+Y§:Vector.<§[0§>;
      
      private var § 4§:§^!&§;
      
      private var §;!t§:§,Q§;
      
      public function §+F§(param1:§^!&§, param2:§,Q§)
      {
         super();
         this.§ 4§ = param1;
         this.§;!t§ = param2;
         this.§+Y§ = new Vector.<§[0§>();
         var _loc3_:int = 0;
         while(_loc3_ < §@L§)
         {
            this.§+Y§[_loc3_] = new §[0§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §^!&§
      {
         return this.§ 4§;
      }
      
      public function get textureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[0§ = null;
         if(this.§+Y§)
         {
            while(this.§+Y§.length)
            {
               _loc1_ = this.§+Y§.pop();
               _loc1_.dispose();
            }
         }
         this.§+Y§ = null;
      }
      
      public function §0!>§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§]&§ = new §]&§(this.§ 4§,this.§;!t§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§[0§;
         if(_loc18_ = this.§]!c§(param3))
         {
            _loc18_.§ K§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function § K§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §1!e§
      {
         var _loc16_:§1!e§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§[0§;
         if(_loc17_ = this.§]!c§(param2))
         {
            _loc17_.§ K§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §1!e§
      {
         return new §1!e§(this.§ 4§,this.§;!t§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+Y§.length)
         {
            this.§]!c§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §0#§(param1:int) : void
      {
         var _loc2_:§[0§ = this.§]!c§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §7B§(param1:int) : Sprite
      {
         return this.§]!c§(param1).sprite;
      }
      
      public function §]!c§(param1:Number) : §[0§
      {
         if(this.§+Y§ != null)
         {
            return this.§+Y§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§0#§(§1^§);
         var _loc1_:§[0§ = this.§]!c§(§%!W§);
         var _loc2_:§[0§ = this.§]!c§(§1^§);
         _loc1_.§%$§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §9!=§(param1:Number, param2:Number) : void
      {
         var _loc3_:§[0§ = null;
         for each(_loc3_ in this.§+Y§)
         {
            _loc3_.§#;§(param1,param2);
         }
      }
   }
}
