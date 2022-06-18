package § null§
{
   import §0r§.*;
   
   public class §5"<§
   {
      
      public static const §5!p§:Function = §7$-§.easeIn;
      
      public static const §[u§:Function = §@b§.easeIn;
      
      public static const §&"1§:Function = §@b§.easeOut;
      
      public static const §6=§:Function = §3#G§.easeOut;
      
      public static const §`#3§:Function = §3#G§.easeIn;
      
      public static const §8"z§:Function = §`#?§.easeOut;
      
      public static const §]#b§:Function = §`#?§.easeIn;
      
      public static const §;#+§:Function = §3"q§.easeOut;
      
      public static const §>#!§:Function = §3"q§.easeIn;
      
      private static var §!#m§:§5"<§;
       
      
      protected var §2#e§:Vector.<§0!N§>;
      
      protected var §6x§:Boolean;
      
      protected var §=$B§:Boolean = true;
      
      public function §5"<§()
      {
         this.§2#e§ = new Vector.<§0!N§>();
         super();
      }
      
      public static function get §3"1§() : §5"<§
      {
         if(!§!#m§)
         {
            §!#m§ = new §5"<§();
         }
         return §!#m§;
      }
      
      public function set §7-§(param1:Boolean) : void
      {
         this.§=$B§ = param1;
      }
      
      public function §^#>§() : void
      {
         var _loc2_:§0!N§ = null;
         var _loc1_:int = this.§2#e§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2#e§[_loc1_];
            if(_loc2_.§7!z§)
            {
               this.§2#e§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §3#§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null, param6:Number = 0.0) : §0!N§
      {
         param5 = param5 || §7$-§.easeIn;
         var _loc7_:§0"?§;
         (_loc7_ = new §0"?§(param1,param2,param3,param4,param5)).§7-§ = this.§=$B§;
         _loc7_.§]"O§ = param6;
         this.§2#e§.push(_loc7_);
         return _loc7_;
      }
      
      public function §!"[§(... rest) : §0!N§
      {
         var _loc2_:§0!N§ = null;
         var _loc3_:§'x§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§2#e§.indexOf(_loc2_);
            this.§2#e§.splice(_loc4_,1);
         }
         _loc3_ = new §'x§(rest,true);
         _loc3_.§7-§ = this.§=$B§;
         this.§2#e§.push(_loc3_);
         return _loc3_;
      }
      
      public function §0!!§(param1:Array) : §0!N§
      {
         var _loc2_:§0!N§ = null;
         var _loc3_:§'x§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§2#e§.indexOf(_loc2_);
            this.§2#e§.splice(_loc4_,1);
         }
         _loc3_ = new §'x§(param1,true);
         _loc3_.§7-§ = this.§=$B§;
         this.§2#e§.push(_loc3_);
         return _loc3_;
      }
      
      public function §]#6§(... rest) : §0!N§
      {
         var _loc2_:§0!N§ = null;
         var _loc3_:§'x§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§2#e§.indexOf(_loc2_);
            this.§2#e§.splice(_loc4_,1);
         }
         _loc3_ = new §'x§(rest,false);
         _loc3_.§7-§ = this.§=$B§;
         this.§2#e§.push(_loc3_);
         return _loc3_;
      }
      
      public function §3"m§(param1:Array) : §0!N§
      {
         var _loc2_:§0!N§ = null;
         var _loc3_:§'x§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§2#e§.indexOf(_loc2_);
            this.§2#e§.splice(_loc4_,1);
         }
         _loc3_ = new §'x§(param1,false);
         _loc3_.§7-§ = this.§=$B§;
         this.§2#e§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§6x§ = true;
      }
      
      public function resume() : void
      {
         this.§6x§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§6x§)
         {
            return;
         }
         if(this.§2#e§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§0!N§> = this.§2#e§.concat();
         var _loc3_:§0!N§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§2#e§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§2#e§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§2#e§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
