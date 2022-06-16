package §2E§
{
   import §-!m§.*;
   
   public class §&p§
   {
      
      public static const §-Z§:Function = §4!Y§.easeIn;
      
      public static const §@s§:Function = §-m§.easeIn;
      
      public static const §%"8§:Function = §-m§.easeOut;
      
      public static const §get §:Function = §[f§.easeOut;
      
      public static const §7?§:Function = §[f§.easeIn;
      
      public static const §>!i§:Function = §8"<§.easeOut;
      
      public static const §9"5§:Function = §8"<§.easeIn;
      
      public static const §^!m§:Function = §6"J§.easeOut;
      
      public static const §9!J§:Function = §6"J§.easeIn;
      
      private static var §`"$§:§&p§;
       
      
      protected var §,!=§:Vector.<§2l§>;
      
      protected var §5L§:Boolean;
      
      protected var §@!9§:Boolean = true;
      
      public function §&p§()
      {
         this.§,!=§ = new Vector.<§2l§>();
         super();
      }
      
      public static function get §1[§() : §&p§
      {
         if(!§`"$§)
         {
            §`"$§ = new §&p§();
         }
         return §`"$§;
      }
      
      public function set § !`§(param1:Boolean) : void
      {
         this.§@!9§ = param1;
      }
      
      public function §2!e§() : void
      {
         var _loc2_:§2l§ = null;
         var _loc1_:int = this.§,!=§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!=§[_loc1_];
            if(_loc2_.§=!h§)
            {
               this.§,!=§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §7!3§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §2l§
      {
         param5 = param5 || §4!Y§.easeIn;
         var _loc6_:§!t§;
         (_loc6_ = new §!t§(param1,param2,param3,param4,param5)).§ !`§ = this.§@!9§;
         this.§,!=§.push(_loc6_);
         return _loc6_;
      }
      
      public function §=!i§(... rest) : §2l§
      {
         var _loc2_:§8!B§ = null;
         var _loc3_:§;!]§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,!=§.indexOf(_loc2_);
            this.§,!=§.splice(_loc4_,1);
         }
         _loc3_ = new §;!]§(rest,true);
         _loc3_.§ !`§ = this.§@!9§;
         this.§,!=§.push(_loc3_);
         return _loc3_;
      }
      
      public function §3"3§(... rest) : §2l§
      {
         var _loc2_:§8!B§ = null;
         var _loc3_:§;!]§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,!=§.indexOf(_loc2_);
            this.§,!=§.splice(_loc4_,1);
         }
         _loc3_ = new §;!]§(rest,false);
         _loc3_.§ !`§ = this.§@!9§;
         this.§,!=§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§5L§ = true;
      }
      
      public function resume() : void
      {
         this.§5L§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§2l§ = null;
         if(this.§5L§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!=§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§,!=§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§,!=§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
