package §<!0§
{
   import §%a§.*;
   
   public class §%g§
   {
      
      public static const §@!>§:Function = §0h§.easeIn;
      
      public static const §3!'§:Function = §`J§.easeIn;
      
      public static const §`!S§:Function = §`J§.easeOut;
      
      public static const §?W§:Function = §;#§.easeOut;
      
      public static const §"!3§:Function = §;#§.easeIn;
      
      public static const §#^§:Function = §"!S§.easeOut;
      
      public static const §0J§:Function = §"!S§.easeIn;
      
      public static const §7!<§:Function = §@!+§.easeOut;
      
      public static const §4U§:Function = §@!+§.easeIn;
      
      private static var §@f§:§%g§;
       
      
      protected var §>l§:Vector.<§'c§>;
      
      protected var §`!"§:Boolean;
      
      protected var §,s§:Boolean = true;
      
      public function §%g§()
      {
         this.§>l§ = new Vector.<§'c§>();
         super();
      }
      
      public static function get §'I§() : §%g§
      {
         if(!§@f§)
         {
            §@f§ = new §%g§();
         }
         return §@f§;
      }
      
      public function set §[!#§(param1:Boolean) : void
      {
         this.§,s§ = param1;
      }
      
      public function §77§() : void
      {
         var _loc2_:§'c§ = null;
         var _loc1_:int = this.§>l§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>l§[_loc1_];
            if(_loc2_.§8!F§)
            {
               this.§>l§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §5!0§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §'c§
      {
         param5 = param5 || §0h§.easeIn;
         var _loc6_:§9!G§;
         (_loc6_ = new §9!G§(param1,param2,param3,param4,param5)).§[!#§ = this.§,s§;
         this.§>l§.push(_loc6_);
         return _loc6_;
      }
      
      public function §!!7§(... rest) : §'c§
      {
         var _loc2_:§`v§ = null;
         var _loc3_:§-z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§>l§.indexOf(_loc2_);
            this.§>l§.splice(_loc4_,1);
         }
         _loc3_ = new §-z§(rest,true);
         _loc3_.§[!#§ = this.§,s§;
         this.§>l§.push(_loc3_);
         return _loc3_;
      }
      
      public function §9!Y§(... rest) : §'c§
      {
         var _loc2_:§`v§ = null;
         var _loc3_:§-z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§>l§.indexOf(_loc2_);
            this.§>l§.splice(_loc4_,1);
         }
         _loc3_ = new §-z§(rest,false);
         _loc3_.§[!#§ = this.§,s§;
         this.§>l§.push(_loc3_);
         return _loc3_;
      }
      
      public function §@0§() : void
      {
         this.§`!"§ = true;
      }
      
      public function §,R§() : void
      {
         this.§`!"§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§'c§ = null;
         if(this.§`!"§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§>l§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§>l§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§>l§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
