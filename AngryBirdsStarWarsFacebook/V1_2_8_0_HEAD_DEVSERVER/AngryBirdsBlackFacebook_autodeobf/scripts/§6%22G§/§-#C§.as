package §6"G§
{
   import §3y§.*;
   
   public class §-#C§
   {
      
      public static const §["c§:Function = §3#§.easeIn;
      
      public static const §0l§:Function = §9!Z§.easeIn;
      
      public static const §>v§:Function = §9!Z§.easeOut;
      
      public static const §]"0§:Function = §9r§.easeOut;
      
      public static const §#t§:Function = §9r§.easeIn;
      
      public static const § !^§:Function = § #P§.easeOut;
      
      public static const §+#4§:Function = § #P§.easeIn;
      
      public static const §9"5§:Function = §&"t§.easeOut;
      
      public static const §?%§:Function = §&"t§.easeIn;
      
      private static var §=!h§:§-#C§;
       
      
      protected var §9!o§:Vector.<§ #B§>;
      
      protected var §7!q§:Boolean;
      
      protected var §4"q§:Boolean = true;
      
      public function §-#C§()
      {
         this.§9!o§ = new Vector.<§ #B§>();
         super();
      }
      
      public static function get §%!E§() : §-#C§
      {
         if(!§=!h§)
         {
            §=!h§ = new §-#C§();
         }
         return §=!h§;
      }
      
      public function set §;"8§(param1:Boolean) : void
      {
         this.§4"q§ = param1;
      }
      
      public function §##M§() : void
      {
         var _loc2_:§ #B§ = null;
         var _loc1_:int = this.§9!o§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!o§[_loc1_];
            if(_loc2_.§>h§)
            {
               this.§9!o§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §^!H§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null, param6:Number = 0.0) : § #B§
      {
         param5 = param5 || §3#§.easeIn;
         var _loc7_:§9Z§;
         (_loc7_ = new §9Z§(param1,param2,param3,param4,param5)).§;"8§ = this.§4"q§;
         _loc7_.§]!X§ = param6;
         this.§9!o§.push(_loc7_);
         return _loc7_;
      }
      
      public function §^$§(... rest) : § #B§
      {
         var _loc2_:§ #B§ = null;
         var _loc3_:§[#-§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9!o§.indexOf(_loc2_);
            this.§9!o§.splice(_loc4_,1);
         }
         _loc3_ = new §[#-§(rest,true);
         _loc3_.§;"8§ = this.§4"q§;
         this.§9!o§.push(_loc3_);
         return _loc3_;
      }
      
      public function §'#T§(... rest) : § #B§
      {
         var _loc2_:§ #B§ = null;
         var _loc3_:§[#-§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9!o§.indexOf(_loc2_);
            this.§9!o§.splice(_loc4_,1);
         }
         _loc3_ = new §[#-§(rest,false);
         _loc3_.§;"8§ = this.§4"q§;
         this.§9!o§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§7!q§ = true;
      }
      
      public function resume() : void
      {
         this.§7!q§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§7!q§)
         {
            return;
         }
         if(this.§9!o§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§ #B§> = this.§9!o§.concat();
         var _loc3_:§ #B§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§9!o§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§9!o§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§9!o§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
