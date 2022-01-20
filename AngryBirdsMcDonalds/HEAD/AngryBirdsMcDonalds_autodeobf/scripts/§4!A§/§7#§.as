package §4!A§
{
   import §4!o§.*;
   
   public class §7#§
   {
      
      public static const §[q§:Function = §&!0§.easeIn;
      
      public static const §,o§:Function = §#"§.easeIn;
      
      public static const §^!0§:Function = §#"§.easeOut;
      
      public static const §'!9§:Function = §8v§.easeOut;
      
      public static const §8!d§:Function = §8v§.easeIn;
      
      public static const §2c§:Function = §7!V§.easeOut;
      
      public static const §5!a§:Function = §7!V§.easeIn;
      
      public static const §4@§:Function = §4s§.easeOut;
      
      public static const §=Y§:Function = §4s§.easeIn;
      
      private static var §5y§:§7#§;
       
      
      protected var §[!8§:Vector.<§0Y§>;
      
      protected var §+!=§:Boolean;
      
      protected var §=!%§:Boolean = true;
      
      public function §7#§()
      {
         this.§[!8§ = new Vector.<§0Y§>();
         super();
      }
      
      public static function get §5!!§() : §7#§
      {
         if(!§5y§)
         {
            §5y§ = new §7#§();
         }
         return §5y§;
      }
      
      public function set §^!L§(param1:Boolean) : void
      {
         this.§=!%§ = param1;
      }
      
      public function §=!G§() : void
      {
         var _loc2_:§0Y§ = null;
         var _loc1_:int = this.§[!8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§[!8§[_loc1_];
            if(_loc2_.§'!]§)
            {
               this.§[!8§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §30§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §0Y§
      {
         param5 = param5 || §&!0§.easeIn;
         var _loc6_:§@!?§;
         (_loc6_ = new §@!?§(param1,param2,param3,param4,param5)).§^!L§ = this.§=!%§;
         this.§[!8§.push(_loc6_);
         return _loc6_;
      }
      
      public function §;j§(... rest) : §0Y§
      {
         var _loc2_:§3!"§ = null;
         var _loc3_:§]!;§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§[!8§.indexOf(_loc2_);
            this.§[!8§.splice(_loc4_,1);
         }
         _loc3_ = new §]!;§(rest,true);
         _loc3_.§^!L§ = this.§=!%§;
         this.§[!8§.push(_loc3_);
         return _loc3_;
      }
      
      public function §%N§(... rest) : §0Y§
      {
         var _loc2_:§3!"§ = null;
         var _loc3_:§]!;§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§[!8§.indexOf(_loc2_);
            this.§[!8§.splice(_loc4_,1);
         }
         _loc3_ = new §]!;§(rest,false);
         _loc3_.§^!L§ = this.§=!%§;
         this.§[!8§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[,§() : void
      {
         this.§+!=§ = true;
      }
      
      public function §3!M§() : void
      {
         this.§+!=§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§0Y§ = null;
         if(this.§+!=§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!8§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§[!8§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§[!8§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
