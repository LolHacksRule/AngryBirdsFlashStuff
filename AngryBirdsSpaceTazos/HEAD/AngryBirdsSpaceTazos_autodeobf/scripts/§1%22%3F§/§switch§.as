package §1"?§
{
   import §&!]§.Sprite;
   import §9!v§.§6a§;
   import §9!v§.static;
   
   public class §switch§
   {
      
      public static const §&"F§:int = 0;
      
      public static const §^"&§:int = 1;
      
      public static const §%!y§:int = 2;
      
      public static const §,!%§:int = 3;
      
      public static const §1i§:int = 4;
       
      
      private var §%x§:Vector.<§6"?§>;
      
      private var §7"9§:static;
      
      private var §@k§:§6a§;
      
      public function §switch§(param1:static, param2:§6a§)
      {
         super();
         this.§7"9§ = param1;
         this.§@k§ = param2;
         this.§%x§ = new Vector.<§6"?§>();
         var _loc3_:int = 0;
         while(_loc3_ < §1i§)
         {
            this.§%x§[_loc3_] = new §6"?§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : static
      {
         return this.§7"9§;
      }
      
      public function get textureManager() : §6a§
      {
         return this.§@k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6"?§ = null;
         if(this.§%x§)
         {
            while(this.§%x§.length)
            {
               _loc1_ = this.§%x§.pop();
               _loc1_.dispose();
            }
         }
         this.§%x§ = null;
      }
      
      public function §'"-§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §4R§
      {
         var _loc16_:§4R§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§6"?§;
         if(_loc17_ = this.§4!x§(param2))
         {
            _loc17_.§'"-§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §4R§
      {
         return new §4R§(this.§7"9§,this.§@k§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%x§.length)
         {
            this.§4!x§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §3!3§(param1:int) : void
      {
         var _loc2_:§6"?§ = this.§4!x§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §-!A§(param1:int) : Sprite
      {
         return this.§4!x§(param1).sprite;
      }
      
      public function §4!x§(param1:Number) : §6"?§
      {
         if(this.§%x§ != null)
         {
            return this.§%x§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§3!3§(§&"F§);
         var _loc1_:§6"?§ = this.§4!x§(§^"&§);
         var _loc2_:§6"?§ = this.§4!x§(§&"F§);
         _loc1_.§5!K§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §5x§(param1:Number, param2:Number) : void
      {
         var _loc3_:§6"?§ = null;
         for each(_loc3_ in this.§%x§)
         {
            _loc3_.§&!>§(param1,param2);
         }
      }
   }
}
