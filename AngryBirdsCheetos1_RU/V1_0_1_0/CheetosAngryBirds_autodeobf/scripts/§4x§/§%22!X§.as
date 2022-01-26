package §4x§
{
   public class §"!X§
   {
      
      public static const §%h§:String = "linear";
      
      public static const §=y§:String = "sine_in";
      
      public static const §1§:String = "sine_out";
      
      public static const §2@§:String = "quad_out";
      
      public static const §3L§:String = "quad_in";
      
      public static const §2!4§:String = "bounce_out";
      
      public static const §[]§:String = "bounce_in";
      
      public static const §%b§:String = "circular_out";
      
      public static const §4F§:String = "circular_in";
      
      private static var §9!R§:§"!X§;
       
      
      private var §3%§:Vector.<§!!<§>;
      
      private var §'t§:Boolean;
      
      private var § !3§:Boolean = true;
      
      public function §"!X§()
      {
         this.§3%§ = new Vector.<§!!<§>();
         super();
      }
      
      public static function get §0E§() : §"!X§
      {
         if(!§9!R§)
         {
            §9!R§ = new §"!X§();
         }
         return §9!R§;
      }
      
      public function set § !O§(param1:Boolean) : void
      {
         this.§ !3§ = param1;
      }
      
      public function §]X§() : void
      {
         var _loc2_:§!!<§ = null;
         var _loc1_:int = this.§3%§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3%§[_loc1_];
            if(_loc2_.§+&§)
            {
               this.§3%§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §5`§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §!!<§
      {
         var _loc6_:§-!A§;
         (_loc6_ = new §-!A§(param1,param2,param3,param4,param5)).§ !O§ = this.§ !3§;
         this.§3%§.push(_loc6_);
         return _loc6_;
      }
      
      public function §;g§(... rest) : §!!<§
      {
         var _loc2_:§7!B§ = null;
         var _loc3_:§5!0§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§3%§.indexOf(_loc2_);
            this.§3%§.splice(_loc4_,1);
         }
         _loc3_ = new §5!0§(rest,true);
         _loc3_.§ !O§ = this.§ !3§;
         this.§3%§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[!1§(... rest) : §!!<§
      {
         var _loc2_:§7!B§ = null;
         var _loc3_:§5!0§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§3%§.indexOf(_loc2_);
            this.§3%§.splice(_loc4_,1);
         }
         _loc3_ = new §5!0§(rest,false);
         _loc3_.§ !O§ = this.§ !3§;
         this.§3%§.push(_loc3_);
         return _loc3_;
      }
      
      public function §5q§() : void
      {
         this.§'t§ = true;
      }
      
      public function §@A§() : void
      {
         this.§'t§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§!!<§ = null;
         if(this.§'t§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§3%§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§3%§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§3%§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
