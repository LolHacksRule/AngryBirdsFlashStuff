package §9!n§
{
   public class §@!T§
   {
      
      public static const §4!m§:String = "linear";
      
      public static const §,!!§:String = "sine_in";
      
      public static const §%[§:String = "sine_out";
      
      public static const §2,§:String = "quad_out";
      
      public static const §2W§:String = "quad_in";
      
      public static const §?c§:String = "bounce_out";
      
      public static const §1H§:String = "bounce_in";
      
      public static const §@d§:String = "circular_out";
      
      public static const §41§:String = "circular_in";
      
      private static var §3C§:§@!T§;
       
      
      private var §=!H§:Vector.<§;_§>;
      
      private var §`!;§:Boolean;
      
      private var §4!V§:Boolean = true;
      
      public function §@!T§()
      {
         this.§=!H§ = new Vector.<§;_§>();
         super();
      }
      
      public static function get §`!t§() : §@!T§
      {
         if(!§3C§)
         {
            §3C§ = new §@!T§();
         }
         return §3C§;
      }
      
      public function set §;@§(param1:Boolean) : void
      {
         this.§4!V§ = param1;
      }
      
      public function §%!4§() : void
      {
         var _loc2_:§;_§ = null;
         var _loc1_:int = this.§=!H§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!H§[_loc1_];
            if(_loc2_.§0! §)
            {
               this.§=!H§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §8!"§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §0Y§
      {
         var _loc6_:§6L§;
         (_loc6_ = new §6L§(param1,param2,param3,param4,param5)).§;@§ = this.§4!V§;
         this.§=!H§.push(_loc6_);
         return _loc6_;
      }
      
      public function §0!s§(... rest) : §0Y§
      {
         var _loc2_:§0e§ = null;
         var _loc3_:§'H§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=!H§.indexOf(_loc2_);
            this.§=!H§.splice(_loc4_,1);
         }
         _loc3_ = new §'H§(rest,true);
         _loc3_.§;@§ = this.§4!V§;
         this.§=!H§.push(_loc3_);
         return _loc3_;
      }
      
      public function §!!5§(... rest) : §0Y§
      {
         var _loc2_:§0e§ = null;
         var _loc3_:§'H§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=!H§.indexOf(_loc2_);
            this.§=!H§.splice(_loc4_,1);
         }
         _loc3_ = new §'H§(rest,false);
         _loc3_.§;@§ = this.§4!V§;
         this.§=!H§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§`!;§ = true;
      }
      
      public function resume() : void
      {
         this.§`!;§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§;_§ = null;
         if(this.§`!;§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!H§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§=!H§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§=!H§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
