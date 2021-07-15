package §?@§
{
   import §8!O§.*;
   
   public class §'^§
   {
      
      public static const §&!O§:Function = §+!T§.easeIn;
      
      public static const §'!I§:Function = §^P§.easeIn;
      
      public static const §-9§:Function = §^P§.easeOut;
      
      public static const §=!q§:Function = §]!n§.easeOut;
      
      public static const §>!$§:Function = §]!n§.easeIn;
      
      public static const §-!T§:Function = §0g§.easeOut;
      
      public static const §+!A§:Function = §0g§.easeIn;
      
      public static const §"P§:Function = §`§.easeOut;
      
      public static const §8H§:Function = §`§.easeIn;
      
      private static var §-!D§:§'^§;
       
      
      protected var §9!5§:Vector.<§9!k§>;
      
      protected var §=2§:Boolean;
      
      protected var §5l§:Boolean = true;
      
      public function §'^§()
      {
         this.§9!5§ = new Vector.<§9!k§>();
         super();
      }
      
      public static function get §2Z§() : §'^§
      {
         if(!§-!D§)
         {
            §-!D§ = new §'^§();
         }
         return §-!D§;
      }
      
      public function set §<d§(param1:Boolean) : void
      {
         this.§5l§ = param1;
      }
      
      public function §2!$§() : void
      {
         var _loc2_:§9!k§ = null;
         var _loc1_:int = this.§9!5§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!5§[_loc1_];
            if(_loc2_.§`F§)
            {
               this.§9!5§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §!!f§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §9!k§
      {
         param5 = param5 || §+!T§.easeIn;
         var _loc6_:§<c§;
         (_loc6_ = new §<c§(param1,param2,param3,param4,param5)).§<d§ = this.§5l§;
         this.§9!5§.push(_loc6_);
         return _loc6_;
      }
      
      public function §7!%§(... rest) : §9!k§
      {
         var _loc2_:§9!k§ = null;
         var _loc3_:§if§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9!5§.indexOf(_loc2_);
            this.§9!5§.splice(_loc4_,1);
         }
         _loc3_ = new §if§(rest,true);
         _loc3_.§<d§ = this.§5l§;
         this.§9!5§.push(_loc3_);
         return _loc3_;
      }
      
      public function §5;§(... rest) : §9!k§
      {
         var _loc2_:§9!k§ = null;
         var _loc3_:§if§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9!5§.indexOf(_loc2_);
            this.§9!5§.splice(_loc4_,1);
         }
         _loc3_ = new §if§(rest,false);
         _loc3_.§<d§ = this.§5l§;
         this.§9!5§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§=2§ = true;
      }
      
      public function resume() : void
      {
         this.§=2§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§=2§)
         {
            return;
         }
         if(this.§9!5§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§9!k§> = this.§9!5§.concat();
         var _loc3_:§9!k§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§9!5§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§9!5§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§9!5§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
