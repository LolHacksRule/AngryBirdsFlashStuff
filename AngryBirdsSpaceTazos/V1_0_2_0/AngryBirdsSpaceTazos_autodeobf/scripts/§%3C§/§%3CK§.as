package §<§
{
   import §7"+§.*;
   
   public class §<K§
   {
      
      public static const §?"+§:Function = §>!Q§.easeIn;
      
      public static const §1Y§:Function = §!^§.easeIn;
      
      public static const §^!s§:Function = §!^§.easeOut;
      
      public static const §""@§:Function = §;"B§.easeOut;
      
      public static const §?b§:Function = §;"B§.easeIn;
      
      public static const §56§:Function = §#g§.easeOut;
      
      public static const §""6§:Function = §#g§.easeIn;
      
      public static const §6!r§:Function = §[_§.easeOut;
      
      public static const §6!K§:Function = §[_§.easeIn;
      
      private static var §&!<§:§<K§;
       
      
      protected var §#!#§:Vector.<§=D§>;
      
      protected var §@>§:Boolean;
      
      protected var §]"D§:Boolean = true;
      
      public function §<K§()
      {
         this.§#!#§ = new Vector.<§=D§>();
         super();
      }
      
      public static function get §<"B§() : §<K§
      {
         if(!§&!<§)
         {
            §&!<§ = new §<K§();
         }
         return §&!<§;
      }
      
      public function set §@"3§(param1:Boolean) : void
      {
         this.§]"D§ = param1;
      }
      
      public function §8!^§() : void
      {
         var _loc2_:§=D§ = null;
         var _loc1_:int = this.§#!#§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#!#§[_loc1_];
            if(_loc2_.§5!Y§)
            {
               this.§#!#§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §`!c§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §=D§
      {
         param5 = param5 || §>!Q§.easeIn;
         var _loc6_:§8"@§;
         (_loc6_ = new §8"@§(param1,param2,param3,param4,param5)).§@"3§ = this.§]"D§;
         this.§#!#§.push(_loc6_);
         return _loc6_;
      }
      
      public function §]"B§(... rest) : §=D§
      {
         var _loc2_:§1"&§ = null;
         var _loc3_:§;R§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§#!#§.indexOf(_loc2_);
            this.§#!#§.splice(_loc4_,1);
         }
         _loc3_ = new §;R§(rest,true);
         _loc3_.§@"3§ = this.§]"D§;
         this.§#!#§.push(_loc3_);
         return _loc3_;
      }
      
      public function §-!E§(... rest) : §=D§
      {
         var _loc2_:§1"&§ = null;
         var _loc3_:§;R§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§#!#§.indexOf(_loc2_);
            this.§#!#§.splice(_loc4_,1);
         }
         _loc3_ = new §;R§(rest,false);
         _loc3_.§@"3§ = this.§]"D§;
         this.§#!#§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§@>§ = true;
      }
      
      public function resume() : void
      {
         this.§@>§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§=D§ = null;
         if(this.§@>§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!#§.length)
         {
            _loc3_ = this.§#!#§[_loc2_];
            _loc3_.update(param1);
            if(_loc3_.isCompleted)
            {
               this.§#!#§.splice(_loc2_,1);
               _loc3_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
