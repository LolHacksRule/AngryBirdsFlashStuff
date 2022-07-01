package §>"2§
{
   import §%Q§.*;
   
   public class §<y§
   {
      
      public static const §6[§:Function = §#!r§.easeIn;
      
      public static const §#",§:Function = §#,§.easeIn;
      
      public static const §^!b§:Function = §#,§.easeOut;
      
      public static const §-!]§:Function = §<!@§.easeOut;
      
      public static const §]1§:Function = §<!@§.easeIn;
      
      public static const §9!=§:Function = §[!;§.easeOut;
      
      public static const §>G§:Function = §[!;§.easeIn;
      
      public static const §11§:Function = §3Z§.easeOut;
      
      public static const §;C§:Function = §3Z§.easeIn;
      
      private static var §,5§:§<y§;
       
      
      protected var §9! §:Vector.<§%!Y§>;
      
      protected var §+!?§:Boolean;
      
      protected var §!!D§:Boolean = true;
      
      public function §<y§()
      {
         this.§9! § = new Vector.<§%!Y§>();
         super();
      }
      
      public static function get §,l§() : §<y§
      {
         if(!§,5§)
         {
            §,5§ = new §<y§();
         }
         return §,5§;
      }
      
      public function set §;!=§(param1:Boolean) : void
      {
         this.§!!D§ = param1;
      }
      
      public function §="1§() : void
      {
         var _loc2_:§%!Y§ = null;
         var _loc1_:int = this.§9! §.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9! §[_loc1_];
            if(_loc2_.§6!§)
            {
               this.§9! §.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §]!C§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §%!Y§
      {
         param5 = param5 || §#!r§.easeIn;
         var _loc6_:§5G§;
         (_loc6_ = new §5G§(param1,param2,param3,param4,param5)).§;!=§ = this.§!!D§;
         this.§9! §.push(_loc6_);
         return _loc6_;
      }
      
      public function §'!^§(... rest) : §%!Y§
      {
         var _loc2_:§55§ = null;
         var _loc3_:§]!#§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9! §.indexOf(_loc2_);
            this.§9! §.splice(_loc4_,1);
         }
         _loc3_ = new §]!#§(rest,true);
         _loc3_.§;!=§ = this.§!!D§;
         this.§9! §.push(_loc3_);
         return _loc3_;
      }
      
      public function §=!D§(... rest) : §%!Y§
      {
         var _loc2_:§55§ = null;
         var _loc3_:§]!#§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9! §.indexOf(_loc2_);
            this.§9! §.splice(_loc4_,1);
         }
         _loc3_ = new §]!#§(rest,false);
         _loc3_.§;!=§ = this.§!!D§;
         this.§9! §.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§+!?§ = true;
      }
      
      public function resume() : void
      {
         this.§+!?§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§%!Y§ = null;
         if(this.§+!?§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§9! §.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§9! §[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§9! §.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
