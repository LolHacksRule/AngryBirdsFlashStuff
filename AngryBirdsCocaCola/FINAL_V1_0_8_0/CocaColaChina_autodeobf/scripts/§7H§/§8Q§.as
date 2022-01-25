package §7H§
{
   public class §8Q§
   {
      
      public static const §1!?§:String = "linear";
      
      public static const §&@§:String = "sine_in";
      
      public static const §^![§:String = "sine_out";
      
      public static const §8!E§:String = "quad_out";
      
      public static const §;y§:String = "quad_in";
      
      public static const §6^§:String = "bounce_out";
      
      public static const §?d§:String = "bounce_in";
      
      public static const §;!'§:String = "circular_out";
      
      public static const §,j§:String = "circular_in";
      
      private static var §2f§:§8Q§;
       
      
      private var §6!<§:Vector.<§%!?§>;
      
      private var §&[§:Boolean;
      
      private var §?D§:Boolean = true;
      
      public function §8Q§()
      {
         this.§6!<§ = new Vector.<§%!?§>();
         super();
      }
      
      public static function get §]!D§() : §8Q§
      {
         if(!§2f§)
         {
            §2f§ = new §8Q§();
         }
         return §2f§;
      }
      
      public function set §`!W§(param1:Boolean) : void
      {
         this.§?D§ = param1;
      }
      
      public function §8J§() : void
      {
         var _loc2_:§%!?§ = null;
         var _loc1_:int = this.§6!<§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§6!<§[_loc1_];
            if(_loc2_.§%!5§)
            {
               this.§6!<§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §^w§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §%!?§
      {
         var _loc6_:§<J§;
         (_loc6_ = new §<J§(param1,param2,param3,param4,param5)).§`!W§ = this.§?D§;
         this.§6!<§.push(_loc6_);
         return _loc6_;
      }
      
      public function §4I§(... rest) : §%!?§
      {
         var _loc2_:§6F§ = null;
         var _loc3_:§'!?§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§6!<§.indexOf(_loc2_);
            this.§6!<§.splice(_loc4_,1);
         }
         _loc3_ = new §'!?§(rest,true);
         _loc3_.§`!W§ = this.§?D§;
         this.§6!<§.push(_loc3_);
         return _loc3_;
      }
      
      public function §1!^§(... rest) : §%!?§
      {
         var _loc2_:§6F§ = null;
         var _loc3_:§'!?§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§6!<§.indexOf(_loc2_);
            this.§6!<§.splice(_loc4_,1);
         }
         _loc3_ = new §'!?§(rest,false);
         _loc3_.§`!W§ = this.§?D§;
         this.§6!<§.push(_loc3_);
         return _loc3_;
      }
      
      public function §8!§() : void
      {
         this.§&[§ = true;
      }
      
      public function §<A§() : void
      {
         this.§&[§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§%!?§ = null;
         if(this.§&[§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§6!<§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§6!<§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§6!<§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
