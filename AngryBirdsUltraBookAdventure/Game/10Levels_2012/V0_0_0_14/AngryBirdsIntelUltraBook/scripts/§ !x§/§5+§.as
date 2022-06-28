package § !x§
{
   public class §5+§
   {
      
      public static const §=2§:String = "linear";
      
      public static const §2-§:String = "sine_in";
      
      public static const §+!j§:String = "sine_out";
      
      public static const §^E§:String = "quad_out";
      
      public static const §!!_§:String = "quad_in";
      
      public static const §>!u§:String = "bounce_out";
      
      public static const §&^§:String = "bounce_in";
      
      public static const §>M§:String = "circular_out";
      
      public static const §^!;§:String = "circular_in";
      
      private static var §%!x§:§5+§;
       
      
      private var §'!D§:Vector.<§#!K§>;
      
      private var §#m§:Boolean;
      
      private var §0b§:Boolean = true;
      
      public function §5+§()
      {
         this.§'!D§ = new Vector.<§#!K§>();
         super();
      }
      
      public static function get §^Z§() : §5+§
      {
         if(!§%!x§)
         {
            §%!x§ = new §5+§();
         }
         return §%!x§;
      }
      
      public function set §[!j§(param1:Boolean) : void
      {
         this.§0b§ = param1;
      }
      
      public function §%!8§() : void
      {
         var _loc2_:§#!K§ = null;
         var _loc1_:int = this.§'!D§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'!D§[_loc1_];
            if(_loc2_.§+!^§)
            {
               this.§'!D§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §=!a§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §4F§
      {
         var _loc6_:§[!`§;
         (_loc6_ = new §[!`§(param1,param2,param3,param4,param5)).§[!j§ = this.§0b§;
         this.§'!D§.push(_loc6_);
         return _loc6_;
      }
      
      public function §>Y§(... rest) : §4F§
      {
         var _loc2_:§2k§ = null;
         var _loc3_:§[u§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§'!D§.indexOf(_loc2_);
            this.§'!D§.splice(_loc4_,1);
         }
         _loc3_ = new §[u§(rest,true);
         _loc3_.§[!j§ = this.§0b§;
         this.§'!D§.push(_loc3_);
         return _loc3_;
      }
      
      public function §2!o§(... rest) : §4F§
      {
         var _loc2_:§2k§ = null;
         var _loc3_:§[u§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§'!D§.indexOf(_loc2_);
            this.§'!D§.splice(_loc4_,1);
         }
         _loc3_ = new §[u§(rest,false);
         _loc3_.§[!j§ = this.§0b§;
         this.§'!D§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§#m§ = true;
      }
      
      public function resume() : void
      {
         this.§#m§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§#!K§ = null;
         if(this.§#m§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!D§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§'!D§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§'!D§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
