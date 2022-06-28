package §57§
{
   public class §,!b§
   {
      
      public static const §2!U§:String = "linear";
      
      public static const §4X§:String = "sine_in";
      
      public static const §7'§:String = "sine_out";
      
      public static const §4t§:String = "quad_out";
      
      public static const §5!b§:String = "quad_in";
      
      public static const §8!k§:String = "bounce_out";
      
      public static const §-7§:String = "bounce_in";
      
      public static const §8!V§:String = "circular_out";
      
      public static const §0!q§:String = "circular_in";
      
      private static var §[!W§:§,!b§;
       
      
      private var §8?§:Vector.<§3!S§>;
      
      private var § D§:Boolean;
      
      private var §+!p§:Boolean = true;
      
      public function §,!b§()
      {
         this.§8?§ = new Vector.<§3!S§>();
         super();
      }
      
      public static function get §<d§() : §,!b§
      {
         if(!§[!W§)
         {
            §[!W§ = new §,!b§();
         }
         return §[!W§;
      }
      
      public function set §^!K§(param1:Boolean) : void
      {
         this.§+!p§ = param1;
      }
      
      public function § if§() : void
      {
         var _loc2_:§3!S§ = null;
         var _loc1_:int = this.§8?§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8?§[_loc1_];
            if(_loc2_.§-3§)
            {
               this.§8?§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §>a§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §4!Z§
      {
         var _loc6_:§7?§;
         (_loc6_ = new §7?§(param1,param2,param3,param4,param5)).§^!K§ = this.§+!p§;
         this.§8?§.push(_loc6_);
         return _loc6_;
      }
      
      public function §=!o§(... rest) : §4!Z§
      {
         var _loc2_:§`!x§ = null;
         var _loc3_:§6!k§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§8?§.indexOf(_loc2_);
            this.§8?§.splice(_loc4_,1);
         }
         _loc3_ = new §6!k§(rest,true);
         _loc3_.§^!K§ = this.§+!p§;
         this.§8?§.push(_loc3_);
         return _loc3_;
      }
      
      public function §?!5§(... rest) : §4!Z§
      {
         var _loc2_:§`!x§ = null;
         var _loc3_:§6!k§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§8?§.indexOf(_loc2_);
            this.§8?§.splice(_loc4_,1);
         }
         _loc3_ = new §6!k§(rest,false);
         _loc3_.§^!K§ = this.§+!p§;
         this.§8?§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§ D§ = true;
      }
      
      public function resume() : void
      {
         this.§ D§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§3!S§ = null;
         if(this.§ D§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§8?§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§8?§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§8?§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
