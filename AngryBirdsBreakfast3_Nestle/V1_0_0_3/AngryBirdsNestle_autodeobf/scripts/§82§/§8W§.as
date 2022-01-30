package §82§
{
   import §0!Y§.Sprite;
   import §6!?§.§;u§;
   import §6!?§.§`!O§;
   
   public class §8W§
   {
      
      public static const §#!S§:int = 0;
      
      public static const §,!A§:int = 1;
      
      public static const §6!g§:int = 2;
      
      public static const §8!C§:int = 3;
      
      public static const §]!H§:int = 4;
      
      public static const §]!'§:int = 5;
      
      public static const §?!I§:int = 6;
       
      
      private var §4!0§:Vector.<§-!5§>;
      
      private var §="&§:§;u§;
      
      private var §#=§:§`!O§;
      
      public function §8W§(param1:§;u§, param2:§`!O§)
      {
         super();
         this.§="&§ = param1;
         this.§#=§ = param2;
         this.§4!0§ = new Vector.<§-!5§>();
         var _loc3_:int = 0;
         while(_loc3_ < §?!I§)
         {
            this.§4!0§[_loc3_] = new §-!5§();
            _loc3_++;
         }
      }
      
      public function get §[!c§() : §;u§
      {
         return this.§="&§;
      }
      
      public function get §&p§() : §`!O§
      {
         return this.§#=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-!5§ = null;
         if(this.§4!0§)
         {
            while(this.§4!0§.length)
            {
               _loc1_ = this.§4!0§.pop();
               _loc1_.dispose();
            }
         }
         this.§4!0§ = null;
      }
      
      public function §;!9§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §%v§
      {
         var _loc16_:§%v§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§-!5§;
         if(_loc17_ = this.§;!1§(param2))
         {
            _loc17_.§;!9§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §<!E§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§1"#§ = new §1"#§(this.§="&§,this.§#=§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§-!5§;
         if(_loc18_ = this.§;!1§(param3))
         {
            _loc18_.§;!9§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §%v§
      {
         return new §%v§(this.§="&§,this.§#=§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!0§.length)
         {
            this.§;!1§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §&I§(param1:int) : void
      {
         var _loc2_:§-!5§ = this.§;!1§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §0,§(param1:int) : Sprite
      {
         return this.§;!1§(param1).sprite;
      }
      
      public function §;!1§(param1:Number) : §-!5§
      {
         if(this.§4!0§ != null)
         {
            return this.§4!0§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§&I§(§#!S§);
         var _loc1_:§-!5§ = this.§;!1§(§,!A§);
         var _loc2_:§-!5§ = this.§;!1§(§#!S§);
         _loc1_.§5X§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §;"0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§-!5§ = null;
         for each(_loc3_ in this.§4!0§)
         {
            _loc3_.§>§(param1,param2);
         }
      }
   }
}
