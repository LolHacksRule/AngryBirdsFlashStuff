package §3l§
{
   public class §9m§
   {
      
      public static const §>-§:String = "linear";
      
      public static const §,D§:String = "sine_in";
      
      public static const §'!6§:String = "sine_out";
      
      public static const §5!b§:String = "quad_out";
      
      public static const §=!U§:String = "quad_in";
      
      public static const §#!l§:String = "bounce_out";
      
      public static const §+!4§:String = "bounce_in";
      
      public static const §+y§:String = "circular_out";
      
      public static const §'e§:String = "circular_in";
      
      private static var §;!T§:§9m§;
       
      
      protected var §9!=§:Vector.<§+!h§>;
      
      protected var §-!'§:Boolean;
      
      protected var §!!c§:Boolean = true;
      
      public function §9m§()
      {
         this.§9!=§ = new Vector.<§+!h§>();
         super();
      }
      
      public static function get §>E§() : §9m§
      {
         if(!§;!T§)
         {
            §;!T§ = new §9m§();
         }
         return §;!T§;
      }
      
      public function set §6v§(param1:Boolean) : void
      {
         this.§!!c§ = param1;
      }
      
      public function §%!;§() : void
      {
         var _loc2_:§+!h§ = null;
         var _loc1_:int = this.§9!=§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!=§[_loc1_];
            if(_loc2_.§>!<§)
            {
               this.§9!=§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §"0§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §+!h§
      {
         var _loc6_:§-m§;
         (_loc6_ = new §-m§(param1,param2,param3,param4,param5)).§6v§ = this.§!!c§;
         this.§9!=§.push(_loc6_);
         return _loc6_;
      }
      
      public function §'w§(... rest) : §+!h§
      {
         var _loc2_:§1^§ = null;
         var _loc3_:§8!=§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9!=§.indexOf(_loc2_);
            this.§9!=§.splice(_loc4_,1);
         }
         _loc3_ = new §8!=§(rest,true);
         _loc3_.§6v§ = this.§!!c§;
         this.§9!=§.push(_loc3_);
         return _loc3_;
      }
      
      public function §69§(... rest) : §+!h§
      {
         var _loc2_:§1^§ = null;
         var _loc3_:§8!=§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9!=§.indexOf(_loc2_);
            this.§9!=§.splice(_loc4_,1);
         }
         _loc3_ = new §8!=§(rest,false);
         _loc3_.§6v§ = this.§!!c§;
         this.§9!=§.push(_loc3_);
         return _loc3_;
      }
      
      public function §5j§() : void
      {
         this.§-!'§ = true;
      }
      
      public function §!d§() : void
      {
         this.§-!'§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§+!h§ = null;
         if(this.§-!'§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!=§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§9!=§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§9!=§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
