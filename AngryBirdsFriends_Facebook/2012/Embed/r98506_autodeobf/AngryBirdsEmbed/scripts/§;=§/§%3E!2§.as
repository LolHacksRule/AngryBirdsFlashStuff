package §;=§
{
   public class §>!2§
   {
      
      public static const §;'§:String = "linear";
      
      public static const §+!=§:String = "sine_in";
      
      public static const §-S§:String = "sine_out";
      
      public static const § !%§:String = "quad_out";
      
      public static const §7!B§:String = "quad_in";
      
      public static const §5!=§:String = "bounce_out";
      
      public static const §&b§:String = "bounce_in";
      
      public static const §'t§:String = "circular_out";
      
      public static const §<T§:String = "circular_in";
      
      private static var §3o§:§>!2§;
       
      
      private var §+J§:Vector.<§-!5§>;
      
      private var § %§:Boolean;
      
      private var §2n§:Boolean = true;
      
      public function §>!2§()
      {
         this.§+J§ = new Vector.<§-!5§>();
         super();
      }
      
      public static function get §72§() : §>!2§
      {
         if(!§3o§)
         {
            §3o§ = new §>!2§();
         }
         return §3o§;
      }
      
      public function set §=j§(param1:Boolean) : void
      {
         this.§2n§ = param1;
      }
      
      public function §]l§() : void
      {
         var _loc2_:§-!5§ = null;
         var _loc1_:int = this.§+J§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+J§[_loc1_];
            if(_loc2_.§4!-§)
            {
               this.§+J§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §-z§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §-!5§
      {
         var _loc6_:§#!D§;
         (_loc6_ = new §#!D§(param1,param2,param3,param4,param5)).§=j§ = this.§2n§;
         this.§+J§.push(_loc6_);
         return _loc6_;
      }
      
      public function §7!0§(... rest) : §-!5§
      {
         var _loc2_:§"A§ = null;
         var _loc3_:§9!@§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+J§.indexOf(_loc2_);
            this.§+J§.splice(_loc4_,1);
         }
         _loc3_ = new §9!@§(rest,true);
         _loc3_.§=j§ = this.§2n§;
         this.§+J§.push(_loc3_);
         return _loc3_;
      }
      
      public function §<m§(... rest) : §-!5§
      {
         var _loc2_:§"A§ = null;
         var _loc3_:§9!@§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+J§.indexOf(_loc2_);
            this.§+J§.splice(_loc4_,1);
         }
         _loc3_ = new §9!@§(rest,false);
         _loc3_.§=j§ = this.§2n§;
         this.§+J§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§ %§ = true;
      }
      
      public function resume() : void
      {
         this.§ %§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§-!5§ = null;
         if(this.§ %§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+J§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§+J§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§+J§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
