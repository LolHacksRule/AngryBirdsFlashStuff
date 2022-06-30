package §6-§
{
   public class §"H§
   {
      
      public static const §;!5§:String = "linear";
      
      public static const §#R§:String = "sine_in";
      
      public static const §+]§:String = "sine_out";
      
      public static const §]!J§:String = "quad_out";
      
      public static const §]!H§:String = "quad_in";
      
      public static const §[!M§:String = "bounce_out";
      
      public static const §#!7§:String = "bounce_in";
      
      public static const §!u§:String = "circular_out";
      
      public static const § Y§:String = "circular_in";
      
      private static var §0!#§:§"H§;
       
      
      private var §=!X§:Vector.<§0!6§>;
      
      private var §<!T§:Boolean;
      
      private var §@!#§:Boolean = true;
      
      public function §"H§()
      {
         this.§=!X§ = new Vector.<§0!6§>();
         super();
      }
      
      public static function get §'![§() : §"H§
      {
         if(!§0!#§)
         {
            §0!#§ = new §"H§();
         }
         return §0!#§;
      }
      
      public function set §7!Y§(param1:Boolean) : void
      {
         this.§@!#§ = param1;
      }
      
      public function §&!8§() : void
      {
         var _loc2_:§0!6§ = null;
         var _loc1_:int = this.§=!X§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!X§[_loc1_];
            if(_loc2_.§1v§)
            {
               this.§=!X§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §8Y§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §%1§
      {
         var _loc6_:§%$§;
         (_loc6_ = new §%$§(param1,param2,param3,param4,param5)).§7!Y§ = this.§@!#§;
         this.§=!X§.push(_loc6_);
         return _loc6_;
      }
      
      public function §'!F§(... rest) : §%1§
      {
         var _loc2_:§^6§ = null;
         var _loc3_:§@a§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=!X§.indexOf(_loc2_);
            this.§=!X§.splice(_loc4_,1);
         }
         _loc3_ = new §@a§(rest,true);
         _loc3_.§7!Y§ = this.§@!#§;
         this.§=!X§.push(_loc3_);
         return _loc3_;
      }
      
      public function §#!c§(... rest) : §%1§
      {
         var _loc2_:§^6§ = null;
         var _loc3_:§@a§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=!X§.indexOf(_loc2_);
            this.§=!X§.splice(_loc4_,1);
         }
         _loc3_ = new §@a§(rest,false);
         _loc3_.§7!Y§ = this.§@!#§;
         this.§=!X§.push(_loc3_);
         return _loc3_;
      }
      
      public function §9@§() : void
      {
         this.§<!T§ = true;
      }
      
      public function §"Q§() : void
      {
         this.§<!T§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§0!6§ = null;
         if(this.§<!T§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!X§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§=!X§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§=!X§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
