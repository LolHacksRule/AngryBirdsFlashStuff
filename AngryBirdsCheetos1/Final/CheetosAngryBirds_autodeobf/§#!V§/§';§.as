package §#!V§
{
   public class §';§
   {
      
      public static const §!! §:String = "linear";
      
      public static const §88§:String = "sine_in";
      
      public static const § j§:String = "sine_out";
      
      public static const §3!P§:String = "quad_out";
      
      public static const §#P§:String = "quad_in";
      
      public static const §,!M§:String = "bounce_out";
      
      public static const §[d§:String = "bounce_in";
      
      public static const §+!=§:String = "circular_out";
      
      public static const §^!P§:String = "circular_in";
      
      private static var §#!'§:§';§;
       
      
      private var §5s§:Vector.<§>!3§>;
      
      private var §=2§:Boolean;
      
      private var §^b§:Boolean = true;
      
      public function §';§()
      {
         this.§5s§ = new Vector.<§>!3§>();
         super();
      }
      
      public static function get §%!O§() : §';§
      {
         if(!§#!'§)
         {
            §#!'§ = new §';§();
         }
         return §#!'§;
      }
      
      public function set §-l§(param1:Boolean) : void
      {
         this.§^b§ = param1;
      }
      
      public function § e§() : void
      {
         var _loc2_:§>!3§ = null;
         var _loc1_:int = this.§5s§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§5s§[_loc1_];
            if(_loc2_.§5J§)
            {
               this.§5s§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §set §(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §&!!§
      {
         var _loc6_:§^P§;
         (_loc6_ = new §^P§(param1,param2,param3,param4,param5)).§-l§ = this.§^b§;
         this.§5s§.push(_loc6_);
         return _loc6_;
      }
      
      public function §4!;§(... rest) : §&!!§
      {
         var _loc2_:§[1§ = null;
         var _loc3_:§5!,§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§5s§.indexOf(_loc2_);
            this.§5s§.splice(_loc4_,1);
         }
         _loc3_ = new §5!,§(rest,true);
         _loc3_.§-l§ = this.§^b§;
         this.§5s§.push(_loc3_);
         return _loc3_;
      }
      
      public function §;!8§(... rest) : §&!!§
      {
         var _loc2_:§[1§ = null;
         var _loc3_:§5!,§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§5s§.indexOf(_loc2_);
            this.§5s§.splice(_loc4_,1);
         }
         _loc3_ = new §5!,§(rest,false);
         _loc3_.§-l§ = this.§^b§;
         this.§5s§.push(_loc3_);
         return _loc3_;
      }
      
      public function §3J§() : void
      {
         this.§=2§ = true;
      }
      
      public function §]!1§() : void
      {
         this.§=2§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§>!3§ = null;
         if(this.§=2§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§5s§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§5s§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§5s§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
