package §#!O§
{
   import §,!L§.*;
   
   public class §"!t§
   {
      
      public static const §=i§:Function = §%_§.easeIn;
      
      public static const §="=§:Function = §?"1§.easeIn;
      
      public static const §+"%§:Function = §?"1§.easeOut;
      
      public static const §]!o§:Function = §7!9§.easeOut;
      
      public static const §&!p§:Function = §7!9§.easeIn;
      
      public static const §@!Q§:Function = §+4§.easeOut;
      
      public static const §`V§:Function = §+4§.easeIn;
      
      public static const §=!c§:Function = §]!C§.easeOut;
      
      public static const §;!B§:Function = §]!C§.easeIn;
      
      private static var §?!?§:§"!t§;
       
      
      protected var §,&§:Vector.<§9!o§>;
      
      protected var §!B§:Boolean;
      
      protected var §7"§:Boolean = true;
      
      public function §"!t§()
      {
         this.§,&§ = new Vector.<§9!o§>();
         super();
      }
      
      public static function get §3R§() : §"!t§
      {
         if(!§?!?§)
         {
            §?!?§ = new §"!t§();
         }
         return §?!?§;
      }
      
      public function set § 6§(param1:Boolean) : void
      {
         this.§7"§ = param1;
      }
      
      public function §>"%§() : void
      {
         var _loc2_:§9!o§ = null;
         var _loc1_:int = this.§,&§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,&§[_loc1_];
            if(_loc2_.§3"&§)
            {
               this.§,&§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §2m§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §9!o§
      {
         param5 = param5 || §%_§.easeIn;
         var _loc6_:§="!§;
         (_loc6_ = new §="!§(param1,param2,param3,param4,param5)).§ 6§ = this.§7"§;
         this.§,&§.push(_loc6_);
         return _loc6_;
      }
      
      public function §!!G§(... rest) : §9!o§
      {
         var _loc2_:§9!o§ = null;
         var _loc3_:§8!<§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,&§.indexOf(_loc2_);
            this.§,&§.splice(_loc4_,1);
         }
         _loc3_ = new §8!<§(rest,true);
         _loc3_.§ 6§ = this.§7"§;
         this.§,&§.push(_loc3_);
         return _loc3_;
      }
      
      public function §&"9§(... rest) : §9!o§
      {
         var _loc2_:§9!o§ = null;
         var _loc3_:§8!<§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,&§.indexOf(_loc2_);
            this.§,&§.splice(_loc4_,1);
         }
         _loc3_ = new §8!<§(rest,false);
         _loc3_.§ 6§ = this.§7"§;
         this.§,&§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§!B§ = true;
      }
      
      public function resume() : void
      {
         this.§!B§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§9!o§ = null;
         if(this.§!B§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,&§.length)
         {
            _loc3_ = this.§,&§[_loc2_];
            _loc3_.update(param1);
            if(_loc3_.isCompleted)
            {
               this.§,&§.splice(_loc2_,1);
               _loc3_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
