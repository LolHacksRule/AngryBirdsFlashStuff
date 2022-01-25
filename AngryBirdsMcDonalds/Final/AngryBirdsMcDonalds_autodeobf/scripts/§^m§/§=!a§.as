package §^m§
{
   import §+Y§.*;
   
   public class §=!a§
   {
      
      public static const §>B§:Function = §>m§.easeIn;
      
      public static const §,!L§:Function = §=U§.easeIn;
      
      public static const §^5§:Function = §=U§.easeOut;
      
      public static const §'m§:Function = §3!$§.easeOut;
      
      public static const §[!5§:Function = §3!$§.easeIn;
      
      public static const §0>§:Function = §6O§.easeOut;
      
      public static const §;!k§:Function = §6O§.easeIn;
      
      public static const §%!R§:Function = §!K§.easeOut;
      
      public static const §@!m§:Function = §!K§.easeIn;
      
      private static var §5! §:§=!a§;
       
      
      protected var §,?§:Vector.<§-!O§>;
      
      protected var §=!P§:Boolean;
      
      protected var §8!<§:Boolean = true;
      
      public function §=!a§()
      {
         this.§,?§ = new Vector.<§-!O§>();
         super();
      }
      
      public static function get §9$§() : §=!a§
      {
         if(!§5! §)
         {
            §5! § = new §=!a§();
         }
         return §5! §;
      }
      
      public function set §@p§(param1:Boolean) : void
      {
         this.§8!<§ = param1;
      }
      
      public function §9[§() : void
      {
         var _loc2_:§-!O§ = null;
         var _loc1_:int = this.§,?§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,?§[_loc1_];
            if(_loc2_.§2!^§)
            {
               this.§,?§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §9!H§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §-!O§
      {
         param5 = param5 || §>m§.easeIn;
         var _loc6_:§ !1§;
         (_loc6_ = new § !1§(param1,param2,param3,param4,param5)).§@p§ = this.§8!<§;
         this.§,?§.push(_loc6_);
         return _loc6_;
      }
      
      public function §?W§(... rest) : §-!O§
      {
         var _loc2_:§"!_§ = null;
         var _loc3_:§1!Y§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,?§.indexOf(_loc2_);
            this.§,?§.splice(_loc4_,1);
         }
         _loc3_ = new §1!Y§(rest,true);
         _loc3_.§@p§ = this.§8!<§;
         this.§,?§.push(_loc3_);
         return _loc3_;
      }
      
      public function §@!4§(... rest) : §-!O§
      {
         var _loc2_:§"!_§ = null;
         var _loc3_:§1!Y§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,?§.indexOf(_loc2_);
            this.§,?§.splice(_loc4_,1);
         }
         _loc3_ = new §1!Y§(rest,false);
         _loc3_.§@p§ = this.§8!<§;
         this.§,?§.push(_loc3_);
         return _loc3_;
      }
      
      public function §-!3§() : void
      {
         this.§=!P§ = true;
      }
      
      public function §!!F§() : void
      {
         this.§=!P§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§-!O§ = null;
         if(this.§=!P§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,?§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§,?§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§,?§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
