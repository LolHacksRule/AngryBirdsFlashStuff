package §><§
{
   import §6!_§.*;
   
   public class §0!M§
   {
      
      public static const §7!%§:Function = §`Y§.easeIn;
      
      public static const §5!9§:Function = §4"!§.easeIn;
      
      public static const § !#§:Function = §4"!§.easeOut;
      
      public static const §,!w§:Function = §+=§.easeOut;
      
      public static const include:Function = §+=§.easeIn;
      
      public static const §"!&§:Function = §9A§.easeOut;
      
      public static const § !j§:Function = §9A§.easeIn;
      
      public static const §;!i§:Function = § !E§.easeOut;
      
      public static const §=!a§:Function = § !E§.easeIn;
      
      private static var §,"'§:§0!M§;
       
      
      protected var §"!Y§:Vector.<§=!i§>;
      
      protected var §4!1§:Boolean;
      
      protected var §[v§:Boolean = true;
      
      public function §0!M§()
      {
         this.§"!Y§ = new Vector.<§=!i§>();
         super();
      }
      
      public static function get §?!+§() : §0!M§
      {
         if(!§,"'§)
         {
            §,"'§ = new §0!M§();
         }
         return §,"'§;
      }
      
      public function set §;d§(param1:Boolean) : void
      {
         this.§[v§ = param1;
      }
      
      public function §"!V§() : void
      {
         var _loc2_:§=!i§ = null;
         var _loc1_:int = this.§"!Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§"!Y§[_loc1_];
            if(_loc2_.§0!m§)
            {
               this.§"!Y§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §3d§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §=!i§
      {
         param5 = param5 || §`Y§.easeIn;
         var _loc6_:§<z§;
         (_loc6_ = new §<z§(param1,param2,param3,param4,param5)).§;d§ = this.§[v§;
         this.§"!Y§.push(_loc6_);
         return _loc6_;
      }
      
      public function §4!t§(... rest) : §=!i§
      {
         var _loc2_:§=!i§ = null;
         var _loc3_:§]!v§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§"!Y§.indexOf(_loc2_);
            this.§"!Y§.splice(_loc4_,1);
         }
         _loc3_ = new §]!v§(rest,true);
         _loc3_.§;d§ = this.§[v§;
         this.§"!Y§.push(_loc3_);
         return _loc3_;
      }
      
      public function §3!J§(... rest) : §=!i§
      {
         var _loc2_:§=!i§ = null;
         var _loc3_:§]!v§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§"!Y§.indexOf(_loc2_);
            this.§"!Y§.splice(_loc4_,1);
         }
         _loc3_ = new §]!v§(rest,false);
         _loc3_.§;d§ = this.§[v§;
         this.§"!Y§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§4!1§ = true;
      }
      
      public function resume() : void
      {
         this.§4!1§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§4!1§)
         {
            return;
         }
         if(this.§"!Y§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§=!i§> = this.§"!Y§.concat();
         var _loc3_:§=!i§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§"!Y§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§"!Y§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§"!Y§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
