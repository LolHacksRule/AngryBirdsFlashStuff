package §!7§
{
   public class §`R§
   {
      
      public static const §"!M§:String = "linear";
      
      public static const §;Q§:String = "sine_in";
      
      public static const §[!E§:String = "sine_out";
      
      public static const §+h§:String = "quad_out";
      
      public static const §4!R§:String = "quad_in";
      
      public static const §5!`§:String = "bounce_out";
      
      public static const § !Y§:String = "bounce_in";
      
      public static const §2!>§:String = "circular_out";
      
      public static const §@![§:String = "circular_in";
      
      private static var §,!6§:§`R§;
       
      
      private var §2=§:Vector.<§&!R§>;
      
      private var §[@§:Boolean;
      
      private var §;C§:Boolean = true;
      
      public function §`R§()
      {
         this.§2=§ = new Vector.<§&!R§>();
         super();
      }
      
      public static function get §!!8§() : §`R§
      {
         if(!§,!6§)
         {
            §,!6§ = new §`R§();
         }
         return §,!6§;
      }
      
      public function set §1!!§(param1:Boolean) : void
      {
         this.§;C§ = param1;
      }
      
      public function § m§() : void
      {
         var _loc2_:§&!R§ = null;
         var _loc1_:int = this.§2=§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2=§[_loc1_];
            if(_loc2_.§^E§)
            {
               this.§2=§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function § B§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §&!R§
      {
         var _loc6_:§`>§;
         (_loc6_ = new §`>§(param1,param2,param3,param4,param5)).§1!!§ = this.§;C§;
         this.§2=§.push(_loc6_);
         return _loc6_;
      }
      
      public function §?!3§(... rest) : §&!R§
      {
         var _loc2_:§>K§ = null;
         var _loc3_:§#X§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§2=§.indexOf(_loc2_);
            this.§2=§.splice(_loc4_,1);
         }
         _loc3_ = new §#X§(rest,true);
         _loc3_.§1!!§ = this.§;C§;
         this.§2=§.push(_loc3_);
         return _loc3_;
      }
      
      public function §!!'§(... rest) : §&!R§
      {
         var _loc2_:§>K§ = null;
         var _loc3_:§#X§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§2=§.indexOf(_loc2_);
            this.§2=§.splice(_loc4_,1);
         }
         _loc3_ = new §#X§(rest,false);
         _loc3_.§1!!§ = this.§;C§;
         this.§2=§.push(_loc3_);
         return _loc3_;
      }
      
      public function §?!]§() : void
      {
         this.§[@§ = true;
      }
      
      public function §5m§() : void
      {
         this.§[@§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§&!R§ = null;
         if(this.§[@§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§2=§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§2=§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§2=§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
