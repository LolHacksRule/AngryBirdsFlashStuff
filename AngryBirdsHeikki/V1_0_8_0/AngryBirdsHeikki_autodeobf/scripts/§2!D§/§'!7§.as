package §2!D§
{
   public class §'!7§
   {
      
      public static const §=!L§:String = "linear";
      
      public static const §-!C§:String = "sine_in";
      
      public static const §@!H§:String = "sine_out";
      
      public static const §1!N§:String = "quad_out";
      
      public static const §,!S§:String = "quad_in";
      
      public static const § ! §:String = "bounce_out";
      
      public static const §#S§:String = "bounce_in";
      
      public static const §+d§:String = "circular_out";
      
      public static const §4z§:String = "circular_in";
      
      private static var §9!'§:§'!7§;
       
      
      protected var §"!;§:Vector.<§-!T§>;
      
      protected var §2!I§:Boolean;
      
      protected var §!!K§:Boolean = true;
      
      public function §'!7§()
      {
         this.§"!;§ = new Vector.<§-!T§>();
         super();
      }
      
      public static function get §=,§() : §'!7§
      {
         if(!§9!'§)
         {
            §9!'§ = new §'!7§();
         }
         return §9!'§;
      }
      
      public function set §!b§(param1:Boolean) : void
      {
         this.§!!K§ = param1;
      }
      
      public function §?`§() : void
      {
         var _loc2_:§-!T§ = null;
         var _loc1_:int = this.§"!;§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§"!;§[_loc1_];
            if(_loc2_.§='§)
            {
               this.§"!;§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §5Z§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §-!T§
      {
         var _loc6_:§&!K§;
         (_loc6_ = new §&!K§(param1,param2,param3,param4,param5)).§!b§ = this.§!!K§;
         this.§"!;§.push(_loc6_);
         return _loc6_;
      }
      
      public function §?!3§(... rest) : §-!T§
      {
         var _loc2_:§&!B§ = null;
         var _loc3_:§6i§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§"!;§.indexOf(_loc2_);
            this.§"!;§.splice(_loc4_,1);
         }
         _loc3_ = new §6i§(rest,true);
         _loc3_.§!b§ = this.§!!K§;
         this.§"!;§.push(_loc3_);
         return _loc3_;
      }
      
      public function §,!U§(... rest) : §-!T§
      {
         var _loc2_:§&!B§ = null;
         var _loc3_:§6i§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§"!;§.indexOf(_loc2_);
            this.§"!;§.splice(_loc4_,1);
         }
         _loc3_ = new §6i§(rest,false);
         _loc3_.§!b§ = this.§!!K§;
         this.§"!;§.push(_loc3_);
         return _loc3_;
      }
      
      public function §"!J§() : void
      {
         this.§2!I§ = true;
      }
      
      public function §,`§() : void
      {
         this.§2!I§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§-!T§ = null;
         if(this.§2!I§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!;§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§"!;§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§"!;§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
