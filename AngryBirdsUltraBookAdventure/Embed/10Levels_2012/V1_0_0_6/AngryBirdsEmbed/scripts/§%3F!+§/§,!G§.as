package §?!+§
{
   public class §,!G§
   {
      
      public static const §]w§:String = "linear";
      
      public static const §1z§:String = "sine_in";
      
      public static const §6!5§:String = "sine_out";
      
      public static const §,&§:String = "quad_out";
      
      public static const §]d§:String = "quad_in";
      
      public static const §3l§:String = "bounce_out";
      
      public static const §2R§:String = "bounce_in";
      
      public static const §;q§:String = "circular_out";
      
      public static const §5]§:String = "circular_in";
      
      private static var §6[§:§,!G§;
       
      
      private var §5w§:Vector.<§,!§>;
      
      private var §5F§:Boolean;
      
      private var §[d§:Boolean = true;
      
      public function §,!G§()
      {
         this.§5w§ = new Vector.<§,!§>();
         super();
      }
      
      public static function get §@j§() : §,!G§
      {
         if(!§6[§)
         {
            §6[§ = new §,!G§();
         }
         return §6[§;
      }
      
      public function set §,!@§(param1:Boolean) : void
      {
         this.§[d§ = param1;
      }
      
      public function §3u§() : void
      {
         var _loc2_:§,!§ = null;
         var _loc1_:int = this.§5w§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5w§[_loc1_];
            if(_loc2_.§'<§)
            {
               this.§5w§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §47§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §,!§
      {
         var _loc6_:§&;§;
         (_loc6_ = new §&;§(param1,param2,param3,param4,param5)).§,!@§ = this.§[d§;
         this.§5w§.push(_loc6_);
         return _loc6_;
      }
      
      public function §2!'§(... rest) : §,!§
      {
         var _loc2_:§1!"§ = null;
         var _loc3_:§0z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§5w§.indexOf(_loc2_);
            this.§5w§.splice(_loc4_,1);
         }
         _loc3_ = new §0z§(rest,true);
         _loc3_.§,!@§ = this.§[d§;
         this.§5w§.push(_loc3_);
         return _loc3_;
      }
      
      public function §=Y§(... rest) : §,!§
      {
         var _loc2_:§1!"§ = null;
         var _loc3_:§0z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§5w§.indexOf(_loc2_);
            this.§5w§.splice(_loc4_,1);
         }
         _loc3_ = new §0z§(rest,false);
         _loc3_.§,!@§ = this.§[d§;
         this.§5w§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§5F§ = true;
      }
      
      public function resume() : void
      {
         this.§5F§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§,!§ = null;
         if(this.§5F§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§5w§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§5w§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§5w§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
