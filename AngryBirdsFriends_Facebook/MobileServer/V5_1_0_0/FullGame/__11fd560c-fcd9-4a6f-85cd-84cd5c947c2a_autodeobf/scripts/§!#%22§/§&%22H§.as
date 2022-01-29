package §!#"§
{
   import §##C§.*;
   
   public class §&"H§
   {
      
      public static const §-t§:Function = §=i§.easeIn;
      
      public static const §=>§:Function = §5d§.easeIn;
      
      public static const §9"_§:Function = §5d§.easeOut;
      
      public static const §!!;§:Function = §'!'§.easeOut;
      
      public static const §;a§:Function = §'!'§.easeIn;
      
      public static const §9"Y§:Function = §5_§.easeOut;
      
      public static const §?#l§:Function = §5_§.easeIn;
      
      public static const §finally§:Function = §73§.easeOut;
      
      public static const §=#C§:Function = §73§.easeIn;
      
      private static var §!c§:§&"H§;
       
      
      protected var §`#4§:Vector.<§7Y§>;
      
      protected var §3#"§:Boolean;
      
      protected var §2!I§:Boolean = true;
      
      public function §&"H§()
      {
         this.§`#4§ = new Vector.<§7Y§>();
         super();
      }
      
      public static function get §6!§() : §&"H§
      {
         if(!§!c§)
         {
            §!c§ = new §&"H§();
         }
         return §!c§;
      }
      
      public function set §9"D§(param1:Boolean) : void
      {
         this.§2!I§ = param1;
      }
      
      public function § $0§() : void
      {
         var _loc2_:§7Y§ = null;
         var _loc1_:int = this.§`#4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§`#4§[_loc1_];
            if(_loc2_.§0! §)
            {
               this.§`#4§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §6C§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null, param6:Number = 0.0) : §7Y§
      {
         param5 = param5 || §=i§.easeIn;
         var _loc7_:§^!N§;
         (_loc7_ = new §^!N§(param1,param2,param3,param4,param5)).§9"D§ = this.§2!I§;
         _loc7_.§"'§ = param6;
         this.§`#4§.push(_loc7_);
         return _loc7_;
      }
      
      public function §5!j§(... rest) : §7Y§
      {
         var _loc2_:§7Y§ = null;
         var _loc3_:§-#=§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`#4§.indexOf(_loc2_);
            this.§`#4§.splice(_loc4_,1);
         }
         _loc3_ = new §-#=§(rest,true);
         _loc3_.§9"D§ = this.§2!I§;
         this.§`#4§.push(_loc3_);
         return _loc3_;
      }
      
      public function §'!K§(param1:Array) : §7Y§
      {
         var _loc2_:§7Y§ = null;
         var _loc3_:§-#=§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§`#4§.indexOf(_loc2_);
            this.§`#4§.splice(_loc4_,1);
         }
         _loc3_ = new §-#=§(param1,true);
         _loc3_.§9"D§ = this.§2!I§;
         this.§`#4§.push(_loc3_);
         return _loc3_;
      }
      
      public function §>##§(... rest) : §7Y§
      {
         var _loc2_:§7Y§ = null;
         var _loc3_:§-#=§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`#4§.indexOf(_loc2_);
            this.§`#4§.splice(_loc4_,1);
         }
         _loc3_ = new §-#=§(rest,false);
         _loc3_.§9"D§ = this.§2!I§;
         this.§`#4§.push(_loc3_);
         return _loc3_;
      }
      
      public function §'"c§(param1:Array) : §7Y§
      {
         var _loc2_:§7Y§ = null;
         var _loc3_:§-#=§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§`#4§.indexOf(_loc2_);
            this.§`#4§.splice(_loc4_,1);
         }
         _loc3_ = new §-#=§(param1,false);
         _loc3_.§9"D§ = this.§2!I§;
         this.§`#4§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§3#"§ = true;
      }
      
      public function resume() : void
      {
         this.§3#"§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§3#"§)
         {
            return;
         }
         if(this.§`#4§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§7Y§> = this.§`#4§.concat();
         var _loc3_:§7Y§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§`#4§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§`#4§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§`#4§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
