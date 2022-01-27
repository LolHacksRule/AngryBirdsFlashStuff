package §;;§
{
   import §<!N§.Sprite;
   import §^'§.§ !C§;
   import §^'§.§?!@§;
   
   public class §9"§
   {
      
      public static const §var§:int = 0;
      
      public static const §8D§:int = 1;
      
      public static const §[k§:int = 2;
      
      public static const §`z§:int = 3;
      
      public static const §[d§:int = 4;
      
      public static const §^!"§:int = 5;
       
      
      private var §[t§:Vector.<§[!=§>;
      
      private var §4A§:§?!@§;
      
      private var §1$§:§ !C§;
      
      public function §9"§(param1:§?!@§, param2:§ !C§)
      {
         super();
         this.§4A§ = param1;
         this.§1$§ = param2;
         this.§[t§ = new Vector.<§[!=§>();
         var _loc3_:int = 0;
         while(_loc3_ < §^!"§)
         {
            this.§[t§[_loc3_] = new §[!=§();
            _loc3_++;
         }
      }
      
      public function get §4i§() : §?!@§
      {
         return this.§4A§;
      }
      
      public function get textureManager() : § !C§
      {
         return this.§1$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[!=§ = null;
         if(this.§[t§)
         {
            while(this.§[t§.length)
            {
               _loc1_ = this.§[t§.pop();
               _loc1_.dispose();
            }
         }
         this.§[t§ = null;
      }
      
      public function §0Z§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§`I§ = new §`I§(this.§4A§,this.§1$§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§[!=§;
         if(_loc18_ = this.§7>§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §"!E§
      {
         var _loc16_:§"!E§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§[!=§;
         if(_loc17_ = this.§7>§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §"!E§
      {
         return new §"!E§(this.§4A§,this.§1$§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§[t§.length)
         {
            this.§7>§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §=B§(param1:int) : void
      {
         var _loc2_:§[!=§ = this.§7>§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §4I§(param1:int) : Sprite
      {
         return this.§7>§(param1).sprite;
      }
      
      public function §7>§(param1:Number) : §[!=§
      {
         if(this.§[t§ != null)
         {
            return this.§[t§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§=B§(§var§);
         var _loc1_:§[!=§ = this.§7>§(§8D§);
         var _loc2_:§[!=§ = this.§7>§(§var§);
         _loc1_.§8a§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §%!H§(param1:Number, param2:Number) : void
      {
         var _loc3_:§[!=§ = null;
         for each(_loc3_ in this.§[t§)
         {
            _loc3_.§>!!§(param1,param2);
         }
      }
   }
}
