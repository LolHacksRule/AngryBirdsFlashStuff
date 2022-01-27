package §=u§
{
   import §]!K§.*;
   
   public class §!D§
   {
      
      public static const §8"&§:Function = §@!1§.easeIn;
      
      public static const §=S§:Function = §=d§.easeIn;
      
      public static const §7"-§:Function = §=d§.easeOut;
      
      public static const §!!R§:Function = §,!H§.easeOut;
      
      public static const §=!t§:Function = §,!H§.easeIn;
      
      public static const §3K§:Function = §%!n§.easeOut;
      
      public static const §>K§:Function = §%!n§.easeIn;
      
      public static const §<"G§:Function = §+D§.easeOut;
      
      public static const § "#§:Function = §+D§.easeIn;
      
      private static var §1'§:§!D§;
       
      
      protected var §+!j§:Vector.<§ "1§>;
      
      protected var §%"&§:Boolean;
      
      protected var §1"G§:Boolean = true;
      
      public function §!D§()
      {
         this.§+!j§ = new Vector.<§ "1§>();
         super();
      }
      
      public static function get §[!1§() : §!D§
      {
         if(!§1'§)
         {
            §1'§ = new §!D§();
         }
         return §1'§;
      }
      
      public function set §>!d§(param1:Boolean) : void
      {
         this.§1"G§ = param1;
      }
      
      public function §+'§() : void
      {
         var _loc2_:§ "1§ = null;
         var _loc1_:int = this.§+!j§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!j§[_loc1_];
            if(_loc2_.§%S§)
            {
               this.§+!j§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §1"<§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : § "1§
      {
         param5 = param5 || §@!1§.easeIn;
         var _loc6_:§%!K§;
         (_loc6_ = new §%!K§(param1,param2,param3,param4,param5)).§>!d§ = this.§1"G§;
         this.§+!j§.push(_loc6_);
         return _loc6_;
      }
      
      public function §"!D§(... rest) : § "1§
      {
         var _loc2_:§ ">§ = null;
         var _loc3_:§3S§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+!j§.indexOf(_loc2_);
            this.§+!j§.splice(_loc4_,1);
         }
         _loc3_ = new §3S§(rest,true);
         _loc3_.§>!d§ = this.§1"G§;
         this.§+!j§.push(_loc3_);
         return _loc3_;
      }
      
      public function §7!$§(... rest) : § "1§
      {
         var _loc2_:§ ">§ = null;
         var _loc3_:§3S§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+!j§.indexOf(_loc2_);
            this.§+!j§.splice(_loc4_,1);
         }
         _loc3_ = new §3S§(rest,false);
         _loc3_.§>!d§ = this.§1"G§;
         this.§+!j§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§%"&§ = true;
      }
      
      public function resume() : void
      {
         this.§%"&§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§ "1§ = null;
         if(this.§%"&§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!j§.length)
         {
            _loc3_ = this.§+!j§[_loc2_];
            _loc3_.update(param1);
            if(_loc3_.isCompleted)
            {
               this.§+!j§.splice(_loc2_,1);
               _loc3_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
