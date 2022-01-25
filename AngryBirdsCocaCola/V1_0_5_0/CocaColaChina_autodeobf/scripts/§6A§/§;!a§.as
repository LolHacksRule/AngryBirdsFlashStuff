package §6a§
{
   public class §;!a§
   {
      
      public static const §;!§:String = "linear";
      
      public static const §<!N§:String = "sine_in";
      
      public static const §?l§:String = "sine_out";
      
      public static const §"d§:String = "quad_out";
      
      public static const §8y§:String = "quad_in";
      
      public static const §^!;§:String = "bounce_out";
      
      public static const §-?§:String = "bounce_in";
      
      public static const §5!L§:String = "circular_out";
      
      public static const §!!D§:String = "circular_in";
      
      private static var §8#§:§;!a§;
       
      
      private var §+"§:Vector.<§&6§>;
      
      private var §4!c§:Boolean;
      
      private var §6!#§:Boolean = true;
      
      public function §;!a§()
      {
         this.§+"§ = new Vector.<§&6§>();
         super();
      }
      
      public static function get §0%§() : §;!a§
      {
         if(!§8#§)
         {
            §8#§ = new §;!a§();
         }
         return §8#§;
      }
      
      public function set §^!L§(param1:Boolean) : void
      {
         this.§6!#§ = param1;
      }
      
      public function §60§() : void
      {
         var _loc2_:§&6§ = null;
         var _loc1_:int = this.§+"§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+"§[_loc1_];
            if(_loc2_.§'![§)
            {
               this.§+"§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §,w§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §'!9§
      {
         var _loc6_:§;d§;
         (_loc6_ = new §;d§(param1,param2,param3,param4,param5)).§^!L§ = this.§6!#§;
         this.§+"§.push(_loc6_);
         return _loc6_;
      }
      
      public function §4$§(... rest) : §'!9§
      {
         var _loc2_:§^>§ = null;
         var _loc3_:§?v§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+"§.indexOf(_loc2_);
            this.§+"§.splice(_loc4_,1);
         }
         _loc3_ = new §?v§(rest,true);
         _loc3_.§^!L§ = this.§6!#§;
         this.§+"§.push(_loc3_);
         return _loc3_;
      }
      
      public function §0y§(... rest) : §'!9§
      {
         var _loc2_:§^>§ = null;
         var _loc3_:§?v§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+"§.indexOf(_loc2_);
            this.§+"§.splice(_loc4_,1);
         }
         _loc3_ = new §?v§(rest,false);
         _loc3_.§^!L§ = this.§6!#§;
         this.§+"§.push(_loc3_);
         return _loc3_;
      }
      
      public function §]T§() : void
      {
         this.§4!c§ = true;
      }
      
      public function §1m§() : void
      {
         this.§4!c§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§&6§ = null;
         if(this.§4!c§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+"§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§+"§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§+"§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
