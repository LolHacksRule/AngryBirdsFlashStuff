package §&#S§
{
   import § §.*;
   
   public class §""Z§
   {
      
      public static const §?!Y§:Function = §%!h§.easeIn;
      
      public static const §8O§:Function = §&"X§.easeIn;
      
      public static const §0"2§:Function = §&"X§.easeOut;
      
      public static const §-0§:Function = §7#L§.easeOut;
      
      public static const §[$1§:Function = §7#L§.easeIn;
      
      public static const §+!O§:Function = §7M§.easeOut;
      
      public static const §=E§:Function = §7M§.easeIn;
      
      public static const §="r§:Function = §8#P§.easeOut;
      
      public static const §"#v§:Function = §8#P§.easeIn;
      
      private static var §,!m§:§""Z§;
       
      
      protected var §"=§:Vector.<§^#[§>;
      
      protected var §5G§:Boolean;
      
      protected var §`"v§:Boolean = true;
      
      public function §""Z§()
      {
         this.§"=§ = new Vector.<§^#[§>();
         super();
      }
      
      public static function get §3!]§() : §""Z§
      {
         if(!§,!m§)
         {
            §,!m§ = new §""Z§();
         }
         return §,!m§;
      }
      
      public function set §>$&§(param1:Boolean) : void
      {
         this.§`"v§ = param1;
      }
      
      public function §`N§() : void
      {
         var _loc2_:§^#[§ = null;
         var _loc1_:int = this.§"=§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§"=§[_loc1_];
            if(_loc2_.§#"V§)
            {
               this.§"=§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §5"0§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null, param6:Number = 0.0) : §^#[§
      {
         param5 = param5 || §%!h§.easeIn;
         var _loc7_:§+t§;
         (_loc7_ = new §+t§(param1,param2,param3,param4,param5)).§>$&§ = this.§`"v§;
         _loc7_.§^#O§ = param6;
         this.§"=§.push(_loc7_);
         return _loc7_;
      }
      
      public function §[$2§(... rest) : §^#[§
      {
         var _loc2_:§^#[§ = null;
         var _loc3_:§7#n§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§"=§.indexOf(_loc2_);
            this.§"=§.splice(_loc4_,1);
         }
         _loc3_ = new §7#n§(rest,true);
         _loc3_.§>$&§ = this.§`"v§;
         this.§"=§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[u§(param1:Array) : §^#[§
      {
         var _loc2_:§^#[§ = null;
         var _loc3_:§7#n§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§"=§.indexOf(_loc2_);
            this.§"=§.splice(_loc4_,1);
         }
         _loc3_ = new §7#n§(param1,true);
         _loc3_.§>$&§ = this.§`"v§;
         this.§"=§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[#h§(... rest) : §^#[§
      {
         var _loc2_:§^#[§ = null;
         var _loc3_:§7#n§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§"=§.indexOf(_loc2_);
            this.§"=§.splice(_loc4_,1);
         }
         _loc3_ = new §7#n§(rest,false);
         _loc3_.§>$&§ = this.§`"v§;
         this.§"=§.push(_loc3_);
         return _loc3_;
      }
      
      public function §]"i§(param1:Array) : §^#[§
      {
         var _loc2_:§^#[§ = null;
         var _loc3_:§7#n§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§"=§.indexOf(_loc2_);
            this.§"=§.splice(_loc4_,1);
         }
         _loc3_ = new §7#n§(param1,false);
         _loc3_.§>$&§ = this.§`"v§;
         this.§"=§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§5G§ = true;
      }
      
      public function resume() : void
      {
         this.§5G§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§5G§)
         {
            return;
         }
         if(this.§"=§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§^#[§> = this.§"=§.concat();
         var _loc3_:§^#[§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§"=§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§"=§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§"=§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
