package §5!1§
{
   import §=,§.*;
   
   public class §"!X§
   {
      
      public static const §"!2§:Function = §2!D§.easeIn;
      
      public static const §else §:Function = §5!e§.easeIn;
      
      public static const §='§:Function = §5!e§.easeOut;
      
      public static const §%!5§:Function = §-x§.easeOut;
      
      public static const §=!K§:Function = §-x§.easeIn;
      
      public static const §?[§:Function = §3%§.easeOut;
      
      public static const §%z§:Function = §3%§.easeIn;
      
      public static const §@4§:Function = §=!6§.easeOut;
      
      public static const §<!e§:Function = §=!6§.easeIn;
      
      private static var §2I§:§"!X§;
       
      
      protected var §8o§:Vector.<§&C§>;
      
      protected var §6Q§:Boolean;
      
      protected var § !Z§:Boolean = true;
      
      public function §"!X§()
      {
         this.§8o§ = new Vector.<§&C§>();
         super();
      }
      
      public static function get § s§() : §"!X§
      {
         if(!§2I§)
         {
            §2I§ = new §"!X§();
         }
         return §2I§;
      }
      
      public function set §,!P§(param1:Boolean) : void
      {
         this.§ !Z§ = param1;
      }
      
      public function §"!`§() : void
      {
         var _loc2_:§&C§ = null;
         var _loc1_:int = this.§8o§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§8o§[_loc1_];
            if(_loc2_.§<!-§)
            {
               this.§8o§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §%!;§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §&C§
      {
         param5 = param5 || §2!D§.easeIn;
         var _loc6_:§use §;
         (_loc6_ = new §use §(param1,param2,param3,param4,param5)).§,!P§ = this.§ !Z§;
         this.§8o§.push(_loc6_);
         return _loc6_;
      }
      
      public function §=!,§(... rest) : §&C§
      {
         var _loc2_:§^Q§ = null;
         var _loc3_:§ get§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§8o§.indexOf(_loc2_);
            this.§8o§.splice(_loc4_,1);
         }
         _loc3_ = new § get§(rest,true);
         _loc3_.§,!P§ = this.§ !Z§;
         this.§8o§.push(_loc3_);
         return _loc3_;
      }
      
      public function §0<§(... rest) : §&C§
      {
         var _loc2_:§^Q§ = null;
         var _loc3_:§ get§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§8o§.indexOf(_loc2_);
            this.§8o§.splice(_loc4_,1);
         }
         _loc3_ = new § get§(rest,false);
         _loc3_.§,!P§ = this.§ !Z§;
         this.§8o§.push(_loc3_);
         return _loc3_;
      }
      
      public function §99§() : void
      {
         this.§6Q§ = true;
      }
      
      public function §^e§() : void
      {
         this.§6Q§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§&C§ = null;
         if(this.§6Q§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§8o§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§8o§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§8o§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
