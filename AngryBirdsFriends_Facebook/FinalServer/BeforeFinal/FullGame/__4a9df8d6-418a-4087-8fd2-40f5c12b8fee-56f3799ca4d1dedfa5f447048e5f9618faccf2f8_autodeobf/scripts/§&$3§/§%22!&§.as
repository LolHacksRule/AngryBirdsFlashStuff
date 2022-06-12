package §&$3§
{
   import §-#o§.*;
   
   public class §"!&§
   {
      
      public static const §="L§:Function = § #w§.easeIn;
      
      public static const §^F§:Function = §7!#§.easeIn;
      
      public static const §0!§:Function = §7!#§.easeOut;
      
      public static const §%# §:Function = §-!w§.easeOut;
      
      public static const §6!j§:Function = §-!w§.easeIn;
      
      public static const §1!6§:Function = §9"E§.easeOut;
      
      public static const §-"v§:Function = §9"E§.easeIn;
      
      public static const §?#+§:Function = §>"6§.easeOut;
      
      public static const §@!B§:Function = §>"6§.easeIn;
      
      private static var §1$8§:§"!&§;
       
      
      protected var §1#_§:Vector.<§0#m§>;
      
      protected var §+"q§:Boolean;
      
      protected var §`4§:Boolean = true;
      
      public function §"!&§()
      {
         this.§1#_§ = new Vector.<§0#m§>();
         super();
      }
      
      public static function get §`"H§() : §"!&§
      {
         if(!§1$8§)
         {
            §1$8§ = new §"!&§();
         }
         return §1$8§;
      }
      
      public function set §+"3§(param1:Boolean) : void
      {
         this.§`4§ = param1;
      }
      
      public function § "N§() : void
      {
         var _loc2_:§0#m§ = null;
         var _loc1_:int = this.§1#_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1#_§[_loc1_];
            if(_loc2_.§=F§)
            {
               this.§1#_§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §1"W§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null, param6:Number = 0.0) : §0#m§
      {
         param5 = param5 || § #w§.easeIn;
         var _loc7_:§9"8§;
         (_loc7_ = new §9"8§(param1,param2,param3,param4,param5)).§+"3§ = this.§`4§;
         _loc7_.§ !K§ = param6;
         this.§1#_§.push(_loc7_);
         return _loc7_;
      }
      
      public function §;#r§(... rest) : §0#m§
      {
         var _loc2_:§0#m§ = null;
         var _loc3_:§]$!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§1#_§.indexOf(_loc2_);
            this.§1#_§.splice(_loc4_,1);
         }
         _loc3_ = new §]$!§(rest,true);
         _loc3_.§+"3§ = this.§`4§;
         this.§1#_§.push(_loc3_);
         return _loc3_;
      }
      
      public function §7#?§(param1:Array) : §0#m§
      {
         var _loc2_:§0#m§ = null;
         var _loc3_:§]$!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§1#_§.indexOf(_loc2_);
            this.§1#_§.splice(_loc4_,1);
         }
         _loc3_ = new §]$!§(param1,true);
         _loc3_.§+"3§ = this.§`4§;
         this.§1#_§.push(_loc3_);
         return _loc3_;
      }
      
      public function §?"§(... rest) : §0#m§
      {
         var _loc2_:§0#m§ = null;
         var _loc3_:§]$!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§1#_§.indexOf(_loc2_);
            this.§1#_§.splice(_loc4_,1);
         }
         _loc3_ = new §]$!§(rest,false);
         _loc3_.§+"3§ = this.§`4§;
         this.§1#_§.push(_loc3_);
         return _loc3_;
      }
      
      public function §4"C§(param1:Array) : §0#m§
      {
         var _loc2_:§0#m§ = null;
         var _loc3_:§]$!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§1#_§.indexOf(_loc2_);
            this.§1#_§.splice(_loc4_,1);
         }
         _loc3_ = new §]$!§(param1,false);
         _loc3_.§+"3§ = this.§`4§;
         this.§1#_§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§+"q§ = true;
      }
      
      public function resume() : void
      {
         this.§+"q§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§+"q§)
         {
            return;
         }
         if(this.§1#_§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§0#m§> = this.§1#_§.concat();
         var _loc3_:§0#m§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§1#_§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§1#_§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§1#_§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
