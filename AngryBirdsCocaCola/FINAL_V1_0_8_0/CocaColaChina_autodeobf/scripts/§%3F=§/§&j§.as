package §?=§
{
   import §&!9§.Sprite;
   import §48§.§#i§;
   import §48§.§4a§;
   
   public class §&j§
   {
      
      public static const §+f§:int = 0;
      
      public static const §^K§:int = 1;
      
      public static const §"!5§:int = 2;
      
      public static const §`W§:int = 3;
      
      public static const § !D§:int = 4;
      
      public static const §[a§:int = 5;
       
      
      private var §6I§:Vector.<§=!J§>;
      
      private var §5v§:§#i§;
      
      private var §<d§:§4a§;
      
      public function §&j§(param1:§#i§, param2:§4a§)
      {
         super();
         this.§5v§ = param1;
         this.§<d§ = param2;
         this.§6I§ = new Vector.<§=!J§>();
         var _loc3_:int = 0;
         while(_loc3_ < §[a§)
         {
            this.§6I§[_loc3_] = new §=!J§();
            _loc3_++;
         }
      }
      
      public function get §59§() : §#i§
      {
         return this.§5v§;
      }
      
      public function get textureManager() : §4a§
      {
         return this.§<d§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!J§ = null;
         if(this.§6I§)
         {
            while(this.§6I§.length)
            {
               _loc1_ = this.§6I§.pop();
               _loc1_.dispose();
            }
         }
         this.§6I§ = null;
      }
      
      public function §@O§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§6!A§ = new §6!A§(this.§5v§,this.§<d§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§=!J§;
         if(_loc18_ = this.§%T§(param3))
         {
            _loc18_.§<§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §<§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8S§
      {
         var _loc16_:§8S§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§=!J§;
         if(_loc17_ = this.§%T§(param2))
         {
            _loc17_.§<§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8S§
      {
         return new §8S§(this.§5v§,this.§<d§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6I§.length)
         {
            this.§%T§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §;!6§(param1:int) : void
      {
         var _loc2_:§=!J§ = this.§%T§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §'L§(param1:int) : Sprite
      {
         return this.§%T§(param1).sprite;
      }
      
      public function §%T§(param1:Number) : §=!J§
      {
         if(this.§6I§ != null)
         {
            return this.§6I§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§;!6§(§+f§);
         var _loc1_:§=!J§ = this.§%T§(§^K§);
         var _loc2_:§=!J§ = this.§%T§(§+f§);
         _loc1_.§#C§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §,!Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:§=!J§ = null;
         for each(_loc3_ in this.§6I§)
         {
            _loc3_.§[p§(param1,param2);
         }
      }
   }
}
