package §!>§
{
   public class §!#§
   {
      
      public static const §+`§:String = "linear";
      
      public static const §=G§:String = "sine_in";
      
      public static const §`$§:String = "sine_out";
      
      public static const §<Z§:String = "quad_out";
      
      public static const §1]§:String = "quad_in";
      
      public static const §5!2§:String = "bounce_out";
      
      public static const §8%§:String = "bounce_in";
      
      public static const §+&§:String = "circular_out";
      
      public static const §^!P§:String = "circular_in";
      
      private static var §-B§:§!#§;
       
      
      private var §4!4§:Vector.<§+!C§>;
      
      private var §4!G§:Boolean;
      
      private var § !;§:Boolean = true;
      
      public function §!#§()
      {
         this.§4!4§ = new Vector.<§+!C§>();
         super();
      }
      
      public static function get §!5§() : §!#§
      {
         if(!§-B§)
         {
            §-B§ = new §!#§();
         }
         return §-B§;
      }
      
      public function set §9a§(param1:Boolean) : void
      {
         this.§ !;§ = param1;
      }
      
      public function §^W§() : void
      {
         var _loc2_:§+!C§ = null;
         var _loc1_:int = this.§4!4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4!4§[_loc1_];
            if(_loc2_.§-!$§)
            {
               this.§4!4§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §&![§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §+!C§
      {
         var _loc6_:§>!<§;
         (_loc6_ = new §>!<§(param1,param2,param3,param4,param5)).§9a§ = this.§ !;§;
         this.§4!4§.push(_loc6_);
         return _loc6_;
      }
      
      public function §^!;§(... rest) : §+!C§
      {
         var _loc2_:§#S§ = null;
         var _loc3_:§1!N§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§4!4§.indexOf(_loc2_);
            this.§4!4§.splice(_loc4_,1);
         }
         _loc3_ = new §1!N§(rest,true);
         _loc3_.§9a§ = this.§ !;§;
         this.§4!4§.push(_loc3_);
         return _loc3_;
      }
      
      public function §&i§(... rest) : §+!C§
      {
         var _loc2_:§#S§ = null;
         var _loc3_:§1!N§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§4!4§.indexOf(_loc2_);
            this.§4!4§.splice(_loc4_,1);
         }
         _loc3_ = new §1!N§(rest,false);
         _loc3_.§9a§ = this.§ !;§;
         this.§4!4§.push(_loc3_);
         return _loc3_;
      }
      
      public function §9!V§() : void
      {
         this.§4!G§ = true;
      }
      
      public function §2T§() : void
      {
         this.§4!G§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§+!C§ = null;
         if(this.§4!G§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!4§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§4!4§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§4!4§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
