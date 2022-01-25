package §;G§
{
   import § !K§.Sprite;
   import §9!Y§.§!![§;
   import §9!Y§.§!q§;
   
   public class §1D§
   {
      
      public static const §8!S§:int = 0;
      
      public static const §`!F§:int = 1;
      
      public static const §<!L§:int = 2;
      
      public static const §%d§:int = 3;
      
      public static const §"!Q§:int = 4;
      
      public static const §9!c§:int = 5;
       
      
      private var §5l§:Vector.<§'4§>;
      
      private var §]S§:§!![§;
      
      private var §!!@§:§!q§;
      
      public function §1D§(param1:§!![§, param2:§!q§)
      {
         super();
         this.§]S§ = param1;
         this.§!!@§ = param2;
         this.§5l§ = new Vector.<§'4§>();
         var _loc3_:int = 0;
         while(_loc3_ < §9!c§)
         {
            this.§5l§[_loc3_] = new §'4§();
            _loc3_++;
         }
      }
      
      public function get §0!+§() : §!![§
      {
         return this.§]S§;
      }
      
      public function get textureManager() : §!q§
      {
         return this.§!!@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'4§ = null;
         if(this.§5l§)
         {
            while(this.§5l§.length)
            {
               _loc1_ = this.§5l§.pop();
               _loc1_.dispose();
            }
         }
         this.§5l§ = null;
      }
      
      public function §#!Q§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §;Z§
      {
         var _loc16_:§;Z§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§'4§;
         if(_loc17_ = this.§=!-§(param2))
         {
            _loc17_.§#!Q§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §;Z§
      {
         return new §;Z§(this.§]S§,this.§!!@§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5l§.length)
         {
            this.§=!-§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §@_§(param1:int) : void
      {
         var _loc2_:§'4§ = this.§=!-§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §9G§(param1:int) : Sprite
      {
         return this.§=!-§(param1).sprite;
      }
      
      public function §=!-§(param1:Number) : §'4§
      {
         if(this.§5l§ != null)
         {
            return this.§5l§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§@_§(§8!S§);
         var _loc1_:§'4§ = this.§=!-§(§`!F§);
         var _loc2_:§'4§ = this.§=!-§(§8!S§);
         _loc1_.§,l§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §'Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:§'4§ = null;
         for each(_loc3_ in this.§5l§)
         {
            _loc3_.§8!Y§(param1,param2);
         }
      }
   }
}
