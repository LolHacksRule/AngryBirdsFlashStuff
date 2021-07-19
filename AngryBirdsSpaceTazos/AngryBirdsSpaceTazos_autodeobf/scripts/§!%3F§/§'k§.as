package §!?§
{
   import §+!h§.§]"1§;
   import §,!3§.§#"C§;
   import §7!0§.§-!^§;
   import §7!B§.§@!^§;
   import §]!g§.§2!y§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §'k§
   {
      
      public static const §;!^§:String = "serializationJSON";
      
      public static const §3X§:String = "serializationURLParameters";
      
      public static const §8F§:String = "eksXzijs0jkph212jlAjs2nwU23S02j3";
      
      public static const §!!Q§:String = "Mc8sk3Nf93jnfIdf73j5nt7sbq7alpi8";
      
      private static const §^y§:String = "|";
      
      private static const §"'§:int = 500;
       
      
      private var §6!Y§:URLLoader;
      
      private var §+!2§:§-!^§;
      
      private var §?!4§:Boolean = false;
      
      public function §'k§(param1:Object, param2:String, param3:§-!^§, param4:String)
      {
         super();
         this.§6!Y§ = new §]"1§();
         this.§+!2§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§6!Y§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §;!^§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §#"C§.encode(param1);
               break;
            case §3X§:
               _loc5_.data = this.§!!d§(param1);
         }
         this.§6!Y§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§6!Y§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9o§);
         this.§6!Y§.addEventListener(IOErrorEvent.IO_ERROR,this.§[G§);
         _loc5_.url = param2;
         this.§?!4§ = false;
         this.§6!Y§.load(_loc5_);
      }
      
      public static function §0!K§(param1:Object) : String
      {
         return §2!y§.§;v§([param1.levelId,param1.score,§@!^§.§[!Q§.id,§8F§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §6d§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §8F§;
         return §2!y§.§;v§(_loc2_);
      }
      
      public static function §5-§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §!!Q§;
         _loc3_ = §2!y§.§;v§(param1 + §^y§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §2!y§.§;v§(_loc3_ + §^y§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §!!2§(param1:Object) : String
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc2_:Array = [];
         _loc2_.push(param1.levelId);
         _loc2_.push(param1.score + "");
         _loc2_.push(§8F§);
         var _loc3_:String = param1.gamePlay;
         var _loc4_:Array = _loc3_.split(":");
         for each(_loc5_ in _loc4_)
         {
            _loc2_.push(_loc5_);
         }
         _loc2_.push(param1.userId);
         _loc7_ = (_loc6_ = param1.blocks).split(",");
         for each(_loc5_ in _loc7_)
         {
            _loc2_.push(_loc5_);
         }
         _loc8_ = "";
         _loc9_ = "";
         _loc10_ = 0;
         while(_loc10_ < _loc2_.length)
         {
            _loc8_ += _loc2_[_loc10_];
            if(_loc10_ < §"'§)
            {
               _loc9_ = §2!y§.§;v§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§"'§ < _loc2_.length)
         {
            _loc9_ = §2!y§.§;v§(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      private static function §5!m§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public static function §&f§(param1:String, param2:int, param3:int, param4:String) : String
      {
         var _loc5_:String = §8F§;
         var _loc6_:String = (_loc6_ = (_loc6_ = (_loc6_ = "") + _loc5_) + §^y§) + param2;
         _loc5_ = §2!y§.§;v§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + §^y§) + param3;
         _loc5_ = §2!y§.§;v§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + §^y§) + param4;
         _loc5_ = §2!y§.§;v§(_loc6_);
         _loc6_ = (_loc6_ += _loc5_) + param1;
         _loc5_ = §2!y§.§;v§(_loc6_);
         return _loc6_.length > 0 ? _loc5_ : null;
      }
      
      public function get §1!8§() : Boolean
      {
         return this.§?!4§;
      }
      
      private function §'!0§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§+!2§.onComplete(param1);
         this.§?!4§ = true;
         this.removeEventListeners();
      }
      
      private function §9o§(param1:HTTPStatusEvent) : void
      {
         this.§+!2§.§9o§(param1);
      }
      
      private function §[G§(param1:IOErrorEvent) : void
      {
         this.§+!2§.§[G§(param1);
         this.removeEventListeners();
      }
      
      public function get §?!y§() : URLLoader
      {
         return this.§6!Y§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§6!Y§)
         {
            this.§6!Y§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9o§);
            this.§6!Y§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§6!Y§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[G§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§6!Y§)
         {
            this.§6!Y§.close();
            this.§6!Y§ = null;
         }
         if(this.§+!2§)
         {
            this.§+!2§ = null;
         }
      }
      
      private function §!!d§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
   }
}
