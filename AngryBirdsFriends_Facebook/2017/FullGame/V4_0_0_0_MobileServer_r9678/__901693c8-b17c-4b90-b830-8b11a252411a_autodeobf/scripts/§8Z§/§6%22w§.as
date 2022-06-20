package §8Z§
{
   import §2`§.*;
   
   public class §6"w§
   {
      
      public static const § # §:Function = §^!;§.easeIn;
      
      public static const §1#h§:Function = §5!z§.easeIn;
      
      public static const §2!i§:Function = §5!z§.easeOut;
      
      public static const §'#v§:Function = §<"I§.easeOut;
      
      public static const §]i§:Function = §<"I§.easeIn;
      
      public static const §@"!§:Function = §3@§.easeOut;
      
      public static const § O§:Function = §3@§.easeIn;
      
      public static const §#"3§:Function = §;"d§.easeOut;
      
      public static const §;k§:Function = §;"d§.easeIn;
      
      private static var §%#b§:§6"w§;
       
      
      protected var §<""§:Vector.<§`!s§>;
      
      protected var § !#§:Boolean;
      
      protected var §?!N§:Boolean = true;
      
      public function §6"w§()
      {
         this.§<""§ = new Vector.<§`!s§>();
         super();
      }
      
      public static function get § "D§() : §6"w§
      {
         if(!§%#b§)
         {
            §%#b§ = new §6"w§();
         }
         return §%#b§;
      }
      
      public function set §!#j§(param1:Boolean) : void
      {
         this.§?!N§ = param1;
      }
      
      public function §-#@§() : void
      {
         var _loc2_:§`!s§ = null;
         var _loc1_:int = this.§<""§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§<""§[_loc1_];
            if(_loc2_.§+"+§)
            {
               this.§<""§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §""3§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null, param6:Number = 0.0) : §`!s§
      {
         param5 = param5 || §^!;§.easeIn;
         var _loc7_:§>$6§;
         (_loc7_ = new §>$6§(param1,param2,param3,param4,param5)).§!#j§ = this.§?!N§;
         _loc7_.§?Y§ = param6;
         this.§<""§.push(_loc7_);
         return _loc7_;
      }
      
      public function §5"L§(... rest) : §`!s§
      {
         var _loc2_:§`!s§ = null;
         var _loc3_:§2!7§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§<""§.indexOf(_loc2_);
            this.§<""§.splice(_loc4_,1);
         }
         _loc3_ = new §2!7§(rest,true);
         _loc3_.§!#j§ = this.§?!N§;
         this.§<""§.push(_loc3_);
         return _loc3_;
      }
      
      public function §=!1§(param1:Array) : §`!s§
      {
         var _loc2_:§`!s§ = null;
         var _loc3_:§2!7§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§<""§.indexOf(_loc2_);
            this.§<""§.splice(_loc4_,1);
         }
         _loc3_ = new §2!7§(param1,true);
         _loc3_.§!#j§ = this.§?!N§;
         this.§<""§.push(_loc3_);
         return _loc3_;
      }
      
      public function §=!b§(... rest) : §`!s§
      {
         var _loc2_:§`!s§ = null;
         var _loc3_:§2!7§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§<""§.indexOf(_loc2_);
            this.§<""§.splice(_loc4_,1);
         }
         _loc3_ = new §2!7§(rest,false);
         _loc3_.§!#j§ = this.§?!N§;
         this.§<""§.push(_loc3_);
         return _loc3_;
      }
      
      public function §;"s§(param1:Array) : §`!s§
      {
         var _loc2_:§`!s§ = null;
         var _loc3_:§2!7§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§<""§.indexOf(_loc2_);
            this.§<""§.splice(_loc4_,1);
         }
         _loc3_ = new §2!7§(param1,false);
         _loc3_.§!#j§ = this.§?!N§;
         this.§<""§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§ !#§ = true;
      }
      
      public function resume() : void
      {
         this.§ !#§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§ !#§)
         {
            return;
         }
         if(this.§<""§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§`!s§> = this.§<""§.concat();
         var _loc3_:§`!s§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§<""§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§<""§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§<""§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
