package §1"H§
{
   import §4&§.§'!,§;
   import §4&§.§,C§;
   import §7!8§.Sprite;
   
   public class §0"@§
   {
      
      public static const §!![§:int = 0;
      
      public static const §8!%§:int = 1;
      
      public static const §3!W§:int = 2;
      
      public static const §5"#§:int = 3;
      
      public static const §"V§:int = 4;
       
      
      private var §4t§:Vector.<§&"@§>;
      
      private var §8-§:§'!,§;
      
      private var §7!T§:§,C§;
      
      public function §0"@§(param1:§'!,§, param2:§,C§)
      {
         super();
         this.§8-§ = param1;
         this.§7!T§ = param2;
         this.§4t§ = new Vector.<§&"@§>();
         var _loc3_:int = 0;
         while(_loc3_ < §"V§)
         {
            this.§4t§[_loc3_] = new §&"@§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §'!,§
      {
         return this.§8-§;
      }
      
      public function get textureManager() : §,C§
      {
         return this.§7!T§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&"@§ = null;
         if(this.§4t§)
         {
            while(this.§4t§.length)
            {
               _loc1_ = this.§4t§.pop();
               _loc1_.dispose();
            }
         }
         this.§4t§ = null;
      }
      
      public function §%!y§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2!V§
      {
         var _loc16_:§2!V§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§&"@§;
         if(_loc17_ = this.§!T§(param2))
         {
            _loc17_.§%!y§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §2!V§
      {
         return new §2!V§(this.§8-§,this.§7!T§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4t§.length)
         {
            this.§!T§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §+@§(param1:int) : void
      {
         var _loc2_:§&"@§ = this.§!T§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function § S§(param1:int) : Sprite
      {
         return this.§!T§(param1).sprite;
      }
      
      public function §!T§(param1:Number) : §&"@§
      {
         if(this.§4t§ != null)
         {
            return this.§4t§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§+@§(§!![§);
         var _loc1_:§&"@§ = this.§!T§(§8!%§);
         var _loc2_:§&"@§ = this.§!T§(§!![§);
         _loc1_.§?!&§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §2[§(param1:Number, param2:Number) : void
      {
         var _loc3_:§&"@§ = null;
         for each(_loc3_ in this.§4t§)
         {
            _loc3_.§[!K§(param1,param2);
         }
      }
   }
}
