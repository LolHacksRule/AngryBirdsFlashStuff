package §!'§
{
   import §^"S§.Sprite;
   import §`"8§.§34§;
   import §`"8§.§`#+§;
   
   public class §[p§
   {
      
      public static const §0![§:int = 0;
      
      public static const §7"+§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §'!q§:int = 4;
      
      public static const PARTICLE_GROUP_FOREGROUND_EFFECTS:int = 5;
      
      public static const §3#R§:int = 6;
       
      
      private var §<d§:Vector.<§&"=§>;
      
      private var §##i§:§`#+§;
      
      private var §4Z§:§34§;
      
      public function §[p§(param1:§`#+§, param2:§34§)
      {
         super();
         this.§##i§ = param1;
         this.§4Z§ = param2;
         this.§<d§ = new Vector.<§&"=§>();
         var _loc3_:int = 0;
         while(_loc3_ < §3#R§)
         {
            this.§<d§[_loc3_] = new §&"=§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §`#+§
      {
         return this.§##i§;
      }
      
      public function get textureManager() : §34§
      {
         return this.§4Z§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&"=§ = null;
         if(this.§<d§)
         {
            while(this.§<d§.length)
            {
               _loc1_ = this.§<d§.pop();
               _loc1_.dispose();
            }
         }
         this.§<d§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false, param16:String = null) : §@>§
      {
         var _loc17_:§@>§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
         var _loc18_:§&"=§;
         if(_loc18_ = this.§+6§(param2))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
         return _loc17_;
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:Number = -1, param16:Boolean = false) : void
      {
         var _loc17_:§8! § = new §8! §(this.§##i§,this.§4Z§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§&"=§;
         if(_loc18_ = this.§+6§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §4#C§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:§&#H§ = new §&#H§(this.§##i§,this.§4Z§,param2,param3,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param1,param4);
         var _loc17_:§&"=§;
         if(_loc17_ = this.§+6§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:Number = -1, param15:Boolean = false, param16:String = null) : §@>§
      {
         return new §@>§(this.§##i§,this.§4Z§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<d§.length)
         {
            this.§+6§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §-$"§(param1:int) : void
      {
         var _loc2_:§&"=§ = this.§+6§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §4"1§(param1:int) : Sprite
      {
         return this.§+6§(param1).sprite;
      }
      
      public function §+6§(param1:Number) : §&"=§
      {
         if(this.§<d§ != null)
         {
            return this.§<d§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§-$"§(§0![§);
         var _loc1_:§&"=§ = this.§+6§(§7"+§);
         var _loc2_:§&"=§ = this.§+6§(§0![§);
         _loc1_.§!!0§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:§&"=§ = null;
         for each(_loc3_ in this.§<d§)
         {
            _loc3_.§["#§(param1,param2);
         }
      }
   }
}
