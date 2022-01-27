package §!u§
{
   import §4"@§.Sprite;
   import §^e§.§0"1§;
   import §^e§.§?!D§;
   
   public class §'!X§
   {
      
      public static const §#!,§:int = 0;
      
      public static const §0!8§:int = 1;
      
      public static const §=!O§:int = 2;
      
      public static const §-w§:int = 3;
      
      public static const §>!s§:int = 4;
       
      
      private var §-e§:Vector.<§9!c§>;
      
      private var §!!d§:§?!D§;
      
      private var §#!v§:§0"1§;
      
      public function §'!X§(param1:§?!D§, param2:§0"1§)
      {
         super();
         this.§!!d§ = param1;
         this.§#!v§ = param2;
         this.§-e§ = new Vector.<§9!c§>();
         var _loc3_:int = 0;
         while(_loc3_ < §>!s§)
         {
            this.§-e§[_loc3_] = new §9!c§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §?!D§
      {
         return this.§!!d§;
      }
      
      public function get textureManager() : §0"1§
      {
         return this.§#!v§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!c§ = null;
         if(this.§-e§)
         {
            while(this.§-e§.length)
            {
               _loc1_ = this.§-e§.pop();
               _loc1_.dispose();
            }
         }
         this.§-e§ = null;
      }
      
      public function §'!f§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8"#§
      {
         var _loc16_:§8"#§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§9!c§;
         if(_loc17_ = this.§;7§(param2))
         {
            _loc17_.§'!f§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8"#§
      {
         return new §8"#§(this.§!!d§,this.§#!v§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-e§.length)
         {
            this.§;7§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §+!s§(param1:int) : void
      {
         var _loc2_:§9!c§ = this.§;7§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §["&§(param1:int) : Sprite
      {
         return this.§;7§(param1).sprite;
      }
      
      public function §;7§(param1:Number) : §9!c§
      {
         if(this.§-e§ != null)
         {
            return this.§-e§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§+!s§(§#!,§);
         var _loc1_:§9!c§ = this.§;7§(§0!8§);
         var _loc2_:§9!c§ = this.§;7§(§#!,§);
         _loc1_.§=P§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §,">§(param1:Number, param2:Number) : void
      {
         var _loc3_:§9!c§ = null;
         for each(_loc3_ in this.§-e§)
         {
            _loc3_.§5"7§(param1,param2);
         }
      }
   }
}
