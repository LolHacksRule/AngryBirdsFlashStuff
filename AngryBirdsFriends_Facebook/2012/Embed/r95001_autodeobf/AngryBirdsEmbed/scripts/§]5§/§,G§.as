package §]5§
{
   public class §,G§
   {
      
      public static const §@v§:String = "linear";
      
      public static const §]p§:String = "sine_in";
      
      public static const §!!#§:String = "sine_out";
      
      public static const § each§:String = "quad_out";
      
      public static const §<b§:String = "quad_in";
      
      public static const §'G§:String = "bounce_out";
      
      public static const §!G§:String = "bounce_in";
      
      public static const §8m§:String = "circular_out";
      
      public static const §;§:String = "circular_in";
      
      private static var §'u§:§,G§;
       
      
      private var § R§:Vector.<§-!B§>;
      
      private var §++§:Boolean;
      
      private var §2m§:Boolean = true;
      
      public function §,G§()
      {
         this.§ R§ = new Vector.<§-!B§>();
         super();
      }
      
      public static function get §+S§() : §,G§
      {
         if(!§'u§)
         {
            §'u§ = new §,G§();
         }
         return §'u§;
      }
      
      public function set §>!;§(param1:Boolean) : void
      {
         this.§2m§ = param1;
      }
      
      public function §0,§() : void
      {
         var _loc2_:§-!B§ = null;
         var _loc1_:int = this.§ R§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ R§[_loc1_];
            if(_loc2_.§#a§)
            {
               this.§ R§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §1u§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §1^§
      {
         var _loc6_:§ >§;
         (_loc6_ = new § >§(param1,param2,param3,param4,param5)).§>!;§ = this.§2m§;
         this.§ R§.push(_loc6_);
         return _loc6_;
      }
      
      public function §,+§(... rest) : §1^§
      {
         var _loc2_:§ j§ = null;
         var _loc3_:§[[§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ R§.indexOf(_loc2_);
            this.§ R§.splice(_loc4_,1);
         }
         _loc3_ = new §[[§(rest,true);
         _loc3_.§>!;§ = this.§2m§;
         this.§ R§.push(_loc3_);
         return _loc3_;
      }
      
      public function §`7§(... rest) : §1^§
      {
         var _loc2_:§ j§ = null;
         var _loc3_:§[[§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ R§.indexOf(_loc2_);
            this.§ R§.splice(_loc4_,1);
         }
         _loc3_ = new §[[§(rest,false);
         _loc3_.§>!;§ = this.§2m§;
         this.§ R§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§++§ = true;
      }
      
      public function resume() : void
      {
         this.§++§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§-!B§ = null;
         if(this.§++§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§ R§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§ R§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§ R§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
