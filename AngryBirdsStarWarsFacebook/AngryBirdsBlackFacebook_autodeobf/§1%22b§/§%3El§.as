package §1"b§
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public final class §>l§
   {
      
      private static const §%#0§:Dictionary = new Dictionary(true);
      
      private static const §;",§:Dictionary = new Dictionary(true);
      
      private static var §4!B§:Vector.<§+;§> = new Vector.<§+;§>();
      
      private static const §4+§:Shape = new Shape();
      
      private static var §+B§:Boolean = false;
       
      
      private const §%#0§:Dictionary = new Dictionary(true);
      
      private const §;",§:Dictionary = new Dictionary(true);
      
      private var §4!B§:Vector.<§+;§>;
      
      private const §4+§:Shape = new Shape();
      
      private var §+B§:Boolean = false;
      
      public function §>l§()
      {
         this.§4!B§ = new Vector.<§+;§>();
         super();
      }
      
      public static function §#!"§(param1:§,A§, param2:* = null, param3:Object = null, param4:Number = -1) : void
      {
         var _loc5_:§+;§;
         (_loc5_ = new §+;§()).message = param1;
         _loc5_.§#!0§ = param3;
         _loc5_.§%L§ = param4;
         _loc5_.data = param2;
         if(param4 <= 0 || !§+B§)
         {
            §"!,§(_loc5_);
            return;
         }
         _loc5_.§%L§ += getTimer();
         §4!B§.push(_loc5_);
      }
      
      private static function §"!,§(param1:§+;§) : void
      {
         var _loc6_:Dictionary = null;
         var _loc7_:§8"?§ = null;
         var _loc8_:Function = null;
         var _loc2_:§,A§ = param1.message;
         var _loc3_:Object = param1.§#!0§;
         var _loc4_:Object = param1.data;
         var _loc5_:§7",§;
         (_loc5_ = new §7",§()).message = _loc2_;
         _loc5_.§@Z§ = param1.§#!0§;
         _loc5_.data = param1.data;
         if(§%#0§[_loc2_] != null)
         {
            _loc6_ = §%#0§[_loc2_];
            for each(_loc7_ in _loc6_)
            {
               _loc7_.§4"U§(_loc5_);
            }
         }
         if(§;",§[_loc2_] != null)
         {
            _loc6_ = §;",§[_loc2_];
            for each(_loc8_ in _loc6_)
            {
               switch(_loc8_.length)
               {
                  case 1:
                     _loc8_(_loc5_);
                     break;
                  case 0:
                     _loc8_();
                     break;
               }
            }
         }
      }
      
      private static function §?"d§(param1:Event = null) : void
      {
         var _loc4_:§+;§ = null;
         if(§4!B§.length == 0)
         {
            return;
         }
         var _loc2_:uint = getTimer();
         var _loc3_:int = §4!B§.length;
         while(_loc3_--)
         {
            if((_loc4_ = §4!B§[_loc3_]).§%L§ <= _loc2_)
            {
               §"!,§(_loc4_);
               §4!B§.splice(_loc3_,1);
            }
         }
      }
      
      public static function §'!c§(param1:§8"?§, param2:§,A§) : void
      {
         if(§%#0§[param2] == null)
         {
            return;
         }
         delete §%#0§[param2][param1];
      }
      
      public static function §^#0§(param1:§8"?§, param2:§,A§, ... rest) : void
      {
         §^!9§(param1,param2);
         for each(param2 in rest)
         {
            §^!9§(param1,param2);
         }
      }
      
      private static function §^!9§(param1:§8"?§, param2:§,A§) : void
      {
         var _loc3_:Dictionary = null;
         if(§%#0§[param2] != null)
         {
            _loc3_ = §%#0§[param2];
         }
         else
         {
            _loc3_ = §%#0§[param2] = new Dictionary(true);
         }
         _loc3_[param1] = param1;
      }
      
      public static function addCallback(param1:§,A§, param2:Function, ... rest) : void
      {
         §0!z§(param2,param1);
         for each(param1 in rest)
         {
            §0!z§(param2,param1);
         }
      }
      
      private static function §0!z§(param1:Function, param2:§,A§) : void
      {
         var _loc3_:Dictionary = null;
         if(§;",§[param2] != null)
         {
            _loc3_ = §;",§[param2];
         }
         else
         {
            _loc3_ = §;",§[param2] = new Dictionary(true);
         }
         _loc3_[param1] = param1;
      }
      
      public static function §&z§(param1:§,A§, param2:Function) : void
      {
         if(§;",§[param1] == null)
         {
            return;
         }
         delete §;",§[param1][param2];
      }
      
      public static function get §7+§() : Boolean
      {
         return §+B§;
      }
      
      public static function set §7+§(param1:Boolean) : void
      {
         §+B§ = param1;
         if(§+B§)
         {
            §4+§.addEventListener(Event.ENTER_FRAME,§?"d§);
         }
         else
         {
            §4+§.removeEventListener(Event.ENTER_FRAME,§?"d§);
         }
      }
      
      public function §#!"§(param1:§,A§, param2:* = null, param3:Object = null, param4:Number = -1) : void
      {
         var _loc5_:§+;§;
         (_loc5_ = new §+;§()).message = param1;
         _loc5_.§#!0§ = param3;
         _loc5_.§%L§ = param4;
         _loc5_.data = param2;
         if(param4 <= 0 || !this.§+B§)
         {
            this.§"!,§(_loc5_);
            return;
         }
         _loc5_.§%L§ += getTimer();
         this.§4!B§.push(_loc5_);
      }
      
      private function §"!,§(param1:§+;§) : void
      {
         var _loc6_:Dictionary = null;
         var _loc7_:§8"?§ = null;
         var _loc8_:Function = null;
         var _loc2_:§,A§ = param1.message;
         var _loc3_:Object = param1.§#!0§;
         var _loc4_:Object = param1.data;
         var _loc5_:§7",§;
         (_loc5_ = new §7",§()).message = _loc2_;
         _loc5_.§@Z§ = param1.§#!0§;
         _loc5_.data = param1.data;
         if(this.§%#0§[_loc2_] != null)
         {
            _loc6_ = this.§%#0§[_loc2_];
            for each(_loc7_ in _loc6_)
            {
               _loc7_.§4"U§(_loc5_);
            }
         }
         if(this.§;",§[_loc2_] != null)
         {
            _loc6_ = this.§;",§[_loc2_];
            for each(_loc8_ in _loc6_)
            {
               switch(_loc8_.length)
               {
                  case 1:
                     _loc8_(_loc5_);
                     break;
                  case 0:
                     _loc8_();
                     break;
               }
            }
         }
      }
      
      private function §?"d§(param1:Event = null) : void
      {
         var _loc4_:§+;§ = null;
         if(this.§4!B§.length == 0)
         {
            return;
         }
         var _loc2_:uint = getTimer();
         var _loc3_:int = this.§4!B§.length;
         while(_loc3_--)
         {
            if((_loc4_ = this.§4!B§[_loc3_]).§%L§ <= _loc2_)
            {
               this.§"!,§(_loc4_);
               this.§4!B§.splice(_loc3_,1);
            }
         }
      }
      
      public function §'!c§(param1:§8"?§, param2:§,A§) : void
      {
         if(this.§%#0§[param2] == null)
         {
            return;
         }
         delete this.§%#0§[param2][param1];
      }
      
      public function §^#0§(param1:§8"?§, param2:§,A§, ... rest) : void
      {
         this.§^!9§(param1,param2);
         for each(param2 in rest)
         {
            this.§^!9§(param1,param2);
         }
      }
      
      private function §^!9§(param1:§8"?§, param2:§,A§) : void
      {
         var _loc3_:Dictionary = null;
         if(this.§%#0§[param2] != null)
         {
            _loc3_ = this.§%#0§[param2];
         }
         else
         {
            _loc3_ = this.§%#0§[param2] = new Dictionary(true);
         }
         _loc3_[param1] = param1;
      }
      
      public function addCallback(param1:§,A§, param2:Function, ... rest) : void
      {
         this.§0!z§(param2,param1);
         for each(param1 in rest)
         {
            this.§0!z§(param2,param1);
         }
      }
      
      private function §0!z§(param1:Function, param2:§,A§) : void
      {
         var _loc3_:Dictionary = null;
         if(this.§;",§[param2] != null)
         {
            _loc3_ = this.§;",§[param2];
         }
         else
         {
            _loc3_ = this.§;",§[param2] = new Dictionary(true);
         }
         _loc3_[param1] = param1;
      }
      
      public function §&z§(param1:§,A§, param2:Function) : void
      {
         if(this.§;",§[param1] == null)
         {
            return;
         }
         delete this.§;",§[param1][param2];
      }
      
      public function get §7+§() : Boolean
      {
         return this.§+B§;
      }
      
      public function set §7+§(param1:Boolean) : void
      {
         this.§+B§ = param1;
         if(this.§+B§)
         {
            this.§4+§.addEventListener(Event.ENTER_FRAME,this.§?"d§);
         }
         else
         {
            this.§4+§.removeEventListener(Event.ENTER_FRAME,this.§?"d§);
         }
      }
   }
}
