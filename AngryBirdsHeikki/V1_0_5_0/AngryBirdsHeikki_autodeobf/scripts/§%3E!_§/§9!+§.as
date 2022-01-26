package §>!_§
{
   public class §9!+§
   {
      
      public static const § #§:String = "linear";
      
      public static const §9!7§:String = "sine_in";
      
      public static const §0!>§:String = "sine_out";
      
      public static const §4!J§:String = "quad_out";
      
      public static const §4=§:String = "quad_in";
      
      public static const §!!R§:String = "bounce_out";
      
      public static const §1y§:String = "bounce_in";
      
      public static const §#! §:String = "circular_out";
      
      public static const §8!_§:String = "circular_in";
      
      private static var §,!@§:§9!+§;
       
      
      private var §#@§:Vector.<§,!D§>;
      
      private var §`s§:Boolean;
      
      private var §-!H§:Boolean = true;
      
      public function §9!+§()
      {
         this.§#@§ = new Vector.<§,!D§>();
         super();
      }
      
      public static function get §;!F§() : §9!+§
      {
         if(!§,!@§)
         {
            §,!@§ = new §9!+§();
         }
         return §,!@§;
      }
      
      public function set §2j§(param1:Boolean) : void
      {
         this.§-!H§ = param1;
      }
      
      public function §!!'§() : void
      {
         var _loc2_:§,!D§ = null;
         var _loc1_:int = this.§#@§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#@§[_loc1_];
            if(_loc2_.§^'§)
            {
               this.§#@§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §`!'§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §2V§
      {
         var _loc6_:§4!S§;
         (_loc6_ = new §4!S§(param1,param2,param3,param4,param5)).§2j§ = this.§-!H§;
         this.§#@§.push(_loc6_);
         return _loc6_;
      }
      
      public function §8!C§(... rest) : §2V§
      {
         var _loc2_:§;&§ = null;
         var _loc3_:§>8§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§#@§.indexOf(_loc2_);
            this.§#@§.splice(_loc4_,1);
         }
         _loc3_ = new §>8§(rest,true);
         _loc3_.§2j§ = this.§-!H§;
         this.§#@§.push(_loc3_);
         return _loc3_;
      }
      
      public function §9v§(... rest) : §2V§
      {
         var _loc2_:§;&§ = null;
         var _loc3_:§>8§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§#@§.indexOf(_loc2_);
            this.§#@§.splice(_loc4_,1);
         }
         _loc3_ = new §>8§(rest,false);
         _loc3_.§2j§ = this.§-!H§;
         this.§#@§.push(_loc3_);
         return _loc3_;
      }
      
      public function §;!Q§() : void
      {
         this.§`s§ = true;
      }
      
      public function §'!Q§() : void
      {
         this.§`s§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§,!D§ = null;
         if(this.§`s§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§#@§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§#@§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§#@§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
