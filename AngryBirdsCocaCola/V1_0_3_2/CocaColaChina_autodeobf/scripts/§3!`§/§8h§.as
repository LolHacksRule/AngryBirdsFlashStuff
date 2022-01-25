package §3!`§
{
   public class §8h§
   {
      
      public static const §7!Y§:String = "linear";
      
      public static const §',§:String = "sine_in";
      
      public static const §2A§:String = "sine_out";
      
      public static const §var §:String = "quad_out";
      
      public static const §0!X§:String = "quad_in";
      
      public static const §]!#§:String = "bounce_out";
      
      public static const §"!!§:String = "bounce_in";
      
      public static const §3!E§:String = "circular_out";
      
      public static const §#H§:String = "circular_in";
      
      private static var §4!$§:§8h§;
       
      
      private var §>!&§:Vector.<§-v§>;
      
      private var §0l§:Boolean;
      
      private var §`!'§:Boolean = true;
      
      public function §8h§()
      {
         this.§>!&§ = new Vector.<§-v§>();
         super();
      }
      
      public static function get §`G§() : §8h§
      {
         if(!§4!$§)
         {
            §4!$§ = new §8h§();
         }
         return §4!$§;
      }
      
      public function set §;!Z§(param1:Boolean) : void
      {
         this.§`!'§ = param1;
      }
      
      public function §;+§() : void
      {
         var _loc2_:§-v§ = null;
         var _loc1_:int = this.§>!&§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>!&§[_loc1_];
            if(_loc2_.§ o§)
            {
               this.§>!&§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §[O§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §]&§
      {
         var _loc6_:§4V§;
         (_loc6_ = new §4V§(param1,param2,param3,param4,param5)).§;!Z§ = this.§`!'§;
         this.§>!&§.push(_loc6_);
         return _loc6_;
      }
      
      public function §8!U§(... rest) : §]&§
      {
         var _loc2_:§%r§ = null;
         var _loc3_:§%!L§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§>!&§.indexOf(_loc2_);
            this.§>!&§.splice(_loc4_,1);
         }
         _loc3_ = new §%!L§(rest,true);
         _loc3_.§;!Z§ = this.§`!'§;
         this.§>!&§.push(_loc3_);
         return _loc3_;
      }
      
      public function §,!6§(... rest) : §]&§
      {
         var _loc2_:§%r§ = null;
         var _loc3_:§%!L§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§>!&§.indexOf(_loc2_);
            this.§>!&§.splice(_loc4_,1);
         }
         _loc3_ = new §%!L§(rest,false);
         _loc3_.§;!Z§ = this.§`!'§;
         this.§>!&§.push(_loc3_);
         return _loc3_;
      }
      
      public function §0@§() : void
      {
         this.§0l§ = true;
      }
      
      public function §<l§() : void
      {
         this.§0l§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§-v§ = null;
         if(this.§0l§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!&§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§>!&§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§>!&§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
