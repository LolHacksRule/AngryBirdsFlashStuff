package §2!H§
{
   public class §-!,§
   {
      
      public static const §@!0§:String = "linear";
      
      public static const §,!-§:String = "sine_in";
      
      public static const §var §:String = "sine_out";
      
      public static const §&!8§:String = "quad_out";
      
      public static const §7!"§:String = "quad_in";
      
      public static const §;!z§:String = "bounce_out";
      
      public static const §1F§:String = "bounce_in";
      
      public static const § !K§:String = "circular_out";
      
      public static const §>!7§:String = "circular_in";
      
      private static var §6@§:§-!,§;
       
      
      private var §=W§:Vector.<§6X§>;
      
      private var §1i§:Boolean;
      
      private var §6?§:Boolean = true;
      
      public function §-!,§()
      {
         this.§=W§ = new Vector.<§6X§>();
         super();
      }
      
      public static function get §7!j§() : §-!,§
      {
         if(!§6@§)
         {
            §6@§ = new §-!,§();
         }
         return §6@§;
      }
      
      public function set §8!u§(param1:Boolean) : void
      {
         this.§6?§ = param1;
      }
      
      public function §#!p§() : void
      {
         var _loc2_:§6X§ = null;
         var _loc1_:int = this.§=W§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=W§[_loc1_];
            if(_loc2_.§]! §)
            {
               this.§=W§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §,!`§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §6X§
      {
         var _loc6_:§^'§;
         (_loc6_ = new §^'§(param1,param2,param3,param4,param5)).§8!u§ = this.§6?§;
         this.§=W§.push(_loc6_);
         return _loc6_;
      }
      
      public function §+B§(... rest) : §6X§
      {
         var _loc2_:§!!1§ = null;
         var _loc3_:§#m§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=W§.indexOf(_loc2_);
            this.§=W§.splice(_loc4_,1);
         }
         _loc3_ = new §#m§(rest,true);
         _loc3_.§8!u§ = this.§6?§;
         this.§=W§.push(_loc3_);
         return _loc3_;
      }
      
      public function §>!d§(... rest) : §6X§
      {
         var _loc2_:§!!1§ = null;
         var _loc3_:§#m§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=W§.indexOf(_loc2_);
            this.§=W§.splice(_loc4_,1);
         }
         _loc3_ = new §#m§(rest,false);
         _loc3_.§8!u§ = this.§6?§;
         this.§=W§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§1i§ = true;
      }
      
      public function resume() : void
      {
         this.§1i§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§6X§ = null;
         if(this.§1i§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§=W§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§=W§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§=W§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
