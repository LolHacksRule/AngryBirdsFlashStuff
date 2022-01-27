package §9!U§
{
   import § 3§.*;
   
   public class §@F§
   {
      
      public static const §0"2§:Function = §7i§.easeIn;
      
      public static const §,!q§:Function = §%7§.easeIn;
      
      public static const §=p§:Function = §%7§.easeOut;
      
      public static const §%<§:Function = §@1§.easeOut;
      
      public static const §<">§:Function = §@1§.easeIn;
      
      public static const §%!#§:Function = §;!M§.easeOut;
      
      public static const §-!@§:Function = §;!M§.easeIn;
      
      public static const §>!<§:Function = §=g§.easeOut;
      
      public static const §'_§:Function = §=g§.easeIn;
      
      private static var §<!S§:§@F§;
       
      
      protected var §%§:Vector.<§^"3§>;
      
      protected var §8!t§:Boolean;
      
      protected var §%"A§:Boolean = true;
      
      public function §@F§()
      {
         this.§%§ = new Vector.<§^"3§>();
         super();
      }
      
      public static function get §8!J§() : §@F§
      {
         if(!§<!S§)
         {
            §<!S§ = new §@F§();
         }
         return §<!S§;
      }
      
      public function set §43§(param1:Boolean) : void
      {
         this.§%"A§ = param1;
      }
      
      public function §;6§() : void
      {
         var _loc2_:§^"3§ = null;
         var _loc1_:int = this.§%§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§%§[_loc1_];
            if(_loc2_.§!5§)
            {
               this.§%§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §&6§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §^"3§
      {
         param5 = param5 || §7i§.easeIn;
         var _loc6_:§=d§;
         (_loc6_ = new §=d§(param1,param2,param3,param4,param5)).§43§ = this.§%"A§;
         this.§%§.push(_loc6_);
         return _loc6_;
      }
      
      public function §!W§(... rest) : §^"3§
      {
         var _loc2_:§^"3§ = null;
         var _loc3_:§^""§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§%§.indexOf(_loc2_);
            this.§%§.splice(_loc4_,1);
         }
         _loc3_ = new §^""§(rest,true);
         _loc3_.§43§ = this.§%"A§;
         this.§%§.push(_loc3_);
         return _loc3_;
      }
      
      public function §^"&§(... rest) : §^"3§
      {
         var _loc2_:§^"3§ = null;
         var _loc3_:§^""§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§%§.indexOf(_loc2_);
            this.§%§.splice(_loc4_,1);
         }
         _loc3_ = new §^""§(rest,false);
         _loc3_.§43§ = this.§%"A§;
         this.§%§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§8!t§ = true;
      }
      
      public function resume() : void
      {
         this.§8!t§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§^"3§ = null;
         if(this.§8!t§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§%§.length)
         {
            _loc3_ = this.§%§[_loc2_];
            _loc3_.update(param1);
            if(_loc3_.isCompleted)
            {
               this.§%§.splice(_loc2_,1);
               _loc3_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
