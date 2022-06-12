package §;w§
{
   import §7q§.Sprite;
   import §;!<§.§!!F§;
   import §;!<§.§7!f§;
   
   public class §5!Y§
   {
      
      public static const §4K§:int = 0;
      
      public static const §`W§:int = 1;
      
      public static const §3r§:int = 2;
      
      public static const §%R§:int = 3;
      
      public static const §1"0§:int = 4;
      
      public static const §'!z§:int = 5;
       
      
      private var §>!I§:Vector.<§&Z§>;
      
      private var §%L§:§!!F§;
      
      private var §0<§:§7!f§;
      
      public function §5!Y§(param1:§!!F§, param2:§7!f§)
      {
         super();
         this.§%L§ = param1;
         this.§0<§ = param2;
         this.§>!I§ = new Vector.<§&Z§>();
         var _loc3_:int = 0;
         while(_loc3_ < §'!z§)
         {
            this.§>!I§[_loc3_] = new §&Z§();
            _loc3_++;
         }
      }
      
      public function get §"!i§() : §!!F§
      {
         return this.§%L§;
      }
      
      public function get §20§() : §7!f§
      {
         return this.§0<§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&Z§ = null;
         if(this.§>!I§)
         {
            while(this.§>!I§.length)
            {
               _loc1_ = this.§>!I§.pop();
               _loc1_.dispose();
            }
         }
         this.§>!I§ = null;
      }
      
      public function §#!<§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§&!'§ = new §&!'§(this.§%L§,this.§0<§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§&Z§;
         if(_loc18_ = this.§7!'§(param3))
         {
            _loc18_.§continue§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §continue§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §3"+§
      {
         var _loc16_:§3"+§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§&Z§;
         if(_loc17_ = this.§7!'§(param2))
         {
            _loc17_.§continue§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §3"+§
      {
         return new §3"+§(this.§%L§,this.§0<§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!I§.length)
         {
            this.§7!'§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §"O§(param1:int) : void
      {
         var _loc2_:§&Z§ = this.§7!'§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §1!d§(param1:int) : Sprite
      {
         return this.§7!'§(param1).sprite;
      }
      
      public function §7!'§(param1:Number) : §&Z§
      {
         if(this.§>!I§ != null)
         {
            return this.§>!I§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§"O§(§4K§);
         var _loc1_:§&Z§ = this.§7!'§(§`W§);
         var _loc2_:§&Z§ = this.§7!'§(§4K§);
         _loc1_.§2!B§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §,"#§(param1:Number, param2:Number) : void
      {
         var _loc3_:§&Z§ = null;
         for each(_loc3_ in this.§>!I§)
         {
            _loc3_.§<",§(param1,param2);
         }
      }
   }
}
