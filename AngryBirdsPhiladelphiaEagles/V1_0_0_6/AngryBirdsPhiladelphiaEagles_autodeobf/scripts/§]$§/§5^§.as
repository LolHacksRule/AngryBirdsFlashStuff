package §]$§
{
   public class §5^§
   {
      
      public static const §5]§:String = "linear";
      
      public static const §%E§:String = "sine_in";
      
      public static const §6I§:String = "sine_out";
      
      public static const §,3§:String = "quad_out";
      
      public static const §2!C§:String = "quad_in";
      
      public static const §]!8§:String = "bounce_out";
      
      public static const §[!=§:String = "bounce_in";
      
      public static const §+!;§:String = "circular_out";
      
      public static const §throw§:String = "circular_in";
      
      private static var §3D§:§5^§;
       
      
      private var §18§:Vector.<§0!F§>;
      
      private var §=!E§:Boolean;
      
      private var §6!"§:Boolean = true;
      
      public function §5^§()
      {
         this.§18§ = new Vector.<§0!F§>();
         super();
      }
      
      public static function get §<"§() : §5^§
      {
         if(!§3D§)
         {
            §3D§ = new §5^§();
         }
         return §3D§;
      }
      
      public function set §9-§(param1:Boolean) : void
      {
         this.§6!"§ = param1;
      }
      
      public function § !0§() : void
      {
         var _loc2_:§0!F§ = null;
         var _loc1_:int = this.§18§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§18§[_loc1_];
            if(_loc2_.§;!8§)
            {
               this.§18§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §^g§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §0!F§
      {
         var _loc6_:§3t§;
         (_loc6_ = new §3t§(param1,param2,param3,param4,param5)).§9-§ = this.§6!"§;
         this.§18§.push(_loc6_);
         return _loc6_;
      }
      
      public function §`5§(... rest) : §0!F§
      {
         var _loc2_:§&4§ = null;
         var _loc3_:§>z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§18§.indexOf(_loc2_);
            this.§18§.splice(_loc4_,1);
         }
         _loc3_ = new §>z§(rest,true);
         _loc3_.§9-§ = this.§6!"§;
         this.§18§.push(_loc3_);
         return _loc3_;
      }
      
      public function §8q§(... rest) : §0!F§
      {
         var _loc2_:§&4§ = null;
         var _loc3_:§>z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§18§.indexOf(_loc2_);
            this.§18§.splice(_loc4_,1);
         }
         _loc3_ = new §>z§(rest,false);
         _loc3_.§9-§ = this.§6!"§;
         this.§18§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§=!E§ = true;
      }
      
      public function resume() : void
      {
         this.§=!E§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§0!F§ = null;
         if(this.§=!E§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§18§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§18§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§18§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
