package §"!0§
{
   public class §"!5§
   {
      
      public static const §0!1§:String = "linear";
      
      public static const § !>§:String = "sine_in";
      
      public static const §@!g§:String = "sine_out";
      
      public static const §+!F§:String = "quad_out";
      
      public static const §;!D§:String = "quad_in";
      
      public static const §1a§:String = "bounce_out";
      
      public static const §6-§:String = "bounce_in";
      
      public static const §&!X§:String = "circular_out";
      
      public static const §7!3§:String = "circular_in";
      
      private static var §'!t§:§"!5§;
       
      
      protected var §=n§:Vector.<§"Z§>;
      
      protected var §3!f§:Boolean;
      
      protected var §!=§:Boolean = true;
      
      public function §"!5§()
      {
         this.§=n§ = new Vector.<§"Z§>();
         super();
      }
      
      public static function get §9j§() : §"!5§
      {
         if(!§'!t§)
         {
            §'!t§ = new §"!5§();
         }
         return §'!t§;
      }
      
      public function set §9P§(param1:Boolean) : void
      {
         this.§!=§ = param1;
      }
      
      public function §0!f§() : void
      {
         var _loc2_:§"Z§ = null;
         var _loc1_:int = this.§=n§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=n§[_loc1_];
            if(_loc2_.§0!k§)
            {
               this.§=n§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §4!p§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §"Z§
      {
         var _loc6_:§+!1§;
         (_loc6_ = new §+!1§(param1,param2,param3,param4,param5)).§9P§ = this.§!=§;
         this.§=n§.push(_loc6_);
         return _loc6_;
      }
      
      public function §&>§(... rest) : §"Z§
      {
         var _loc2_:§@u§ = null;
         var _loc3_:§&!j§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=n§.indexOf(_loc2_);
            this.§=n§.splice(_loc4_,1);
         }
         _loc3_ = new §&!j§(rest,true);
         _loc3_.§9P§ = this.§!=§;
         this.§=n§.push(_loc3_);
         return _loc3_;
      }
      
      public function §["!§(... rest) : §"Z§
      {
         var _loc2_:§@u§ = null;
         var _loc3_:§&!j§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=n§.indexOf(_loc2_);
            this.§=n§.splice(_loc4_,1);
         }
         _loc3_ = new §&!j§(rest,false);
         _loc3_.§9P§ = this.§!=§;
         this.§=n§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§3!f§ = true;
      }
      
      public function resume() : void
      {
         this.§3!f§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§"Z§ = null;
         if(this.§3!f§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§=n§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§=n§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§=n§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
