package §;"5§
{
   import §=J§.*;
   
   public class §6"W§
   {
      
      public static const §[X§:Function = §&P§.easeIn;
      
      public static const §%#T§:Function = §##]§.easeIn;
      
      public static const §9"$§:Function = §##]§.easeOut;
      
      public static const §,$8§:Function = §4#"§.easeOut;
      
      public static const §4-§:Function = §4#"§.easeIn;
      
      public static const §>#B§:Function = §7!§.easeOut;
      
      public static const §4#T§:Function = §7!§.easeIn;
      
      public static const §5"d§:Function = §<"_§.easeOut;
      
      public static const §%$C§:Function = §<"_§.easeIn;
      
      private static var §+#!§:§6"W§;
       
      
      protected var § #t§:Vector.<§@"§>;
      
      protected var §2!f§:Boolean;
      
      protected var §7#M§:Boolean = true;
      
      public function §6"W§()
      {
         this.§ #t§ = new Vector.<§@"§>();
         super();
      }
      
      public static function get §+!,§() : §6"W§
      {
         if(!§+#!§)
         {
            §+#!§ = new §6"W§();
         }
         return §+#!§;
      }
      
      public function set §!o§(param1:Boolean) : void
      {
         this.§7#M§ = param1;
      }
      
      public function §^$D§() : void
      {
         var _loc2_:§@"§ = null;
         var _loc1_:int = this.§ #t§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ #t§[_loc1_];
            if(_loc2_.§5z§)
            {
               this.§ #t§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §9!n§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null, param6:Number = 0.0) : §@"§
      {
         param5 = param5 || §&P§.easeIn;
         var _loc7_:§1"h§;
         (_loc7_ = new §1"h§(param1,param2,param3,param4,param5)).§!o§ = this.§7#M§;
         _loc7_.§@n§ = param6;
         this.§ #t§.push(_loc7_);
         return _loc7_;
      }
      
      public function §8$>§(... rest) : §@"§
      {
         var _loc2_:§@"§ = null;
         var _loc3_:§2"E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ #t§.indexOf(_loc2_);
            this.§ #t§.splice(_loc4_,1);
         }
         _loc3_ = new §2"E§(rest,true);
         _loc3_.§!o§ = this.§7#M§;
         this.§ #t§.push(_loc3_);
         return _loc3_;
      }
      
      public function §;"x§(param1:Array) : §@"§
      {
         var _loc2_:§@"§ = null;
         var _loc3_:§2"E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§ #t§.indexOf(_loc2_);
            this.§ #t§.splice(_loc4_,1);
         }
         _loc3_ = new §2"E§(param1,true);
         _loc3_.§!o§ = this.§7#M§;
         this.§ #t§.push(_loc3_);
         return _loc3_;
      }
      
      public function §9S§(... rest) : §@"§
      {
         var _loc2_:§@"§ = null;
         var _loc3_:§2"E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ #t§.indexOf(_loc2_);
            this.§ #t§.splice(_loc4_,1);
         }
         _loc3_ = new §2"E§(rest,false);
         _loc3_.§!o§ = this.§7#M§;
         this.§ #t§.push(_loc3_);
         return _loc3_;
      }
      
      public function §1#6§(param1:Array) : §@"§
      {
         var _loc2_:§@"§ = null;
         var _loc3_:§2"E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§ #t§.indexOf(_loc2_);
            this.§ #t§.splice(_loc4_,1);
         }
         _loc3_ = new §2"E§(param1,false);
         _loc3_.§!o§ = this.§7#M§;
         this.§ #t§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§2!f§ = true;
      }
      
      public function resume() : void
      {
         this.§2!f§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§2!f§)
         {
            return;
         }
         if(this.§ #t§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§@"§> = this.§ #t§.concat();
         var _loc3_:§@"§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§ #t§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§ #t§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§ #t§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
