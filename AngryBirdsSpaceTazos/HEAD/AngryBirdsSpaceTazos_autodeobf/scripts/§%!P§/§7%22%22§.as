package §%!P§
{
   import §3!-§.§&!+§;
   import §5"@§.§1!N§;
   import §8!i§.§@!H§;
   import §[z§.§[!A§;
   import §]!r§.§3!'§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §7""§
   {
      
      public static const §4!8§:String = "serializationJSON";
      
      public static const § h§:String = "serializationURLParameters";
      
      public static const § !z§:String = "eksXzijs0jkph212jlAjs2nwU23S02j3";
      
      public static const §&!3§:String = "Mc8sk3Nf93jnfIdf73j5nt7sbq7alpi8";
      
      private static const §?J§:String = "|";
      
      private static const §3E§:int = 500;
       
      
      private var §[@§:URLLoader;
      
      private var §,"D§:§[!A§;
      
      private var §null §:Boolean = false;
      
      public function §7""§(param1:Object, param2:String, param3:§[!A§, param4:String)
      {
         super();
         this.§[@§ = new §@!H§();
         this.§,"D§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§[@§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §4!8§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §&!+§.encode(param1);
               break;
            case § h§:
               _loc5_.data = this.§%!a§(param1);
         }
         this.§[@§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§[@§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&U§);
         this.§[@§.addEventListener(IOErrorEvent.IO_ERROR,this.§[!J§);
         _loc5_.url = param2;
         this.§null § = false;
         this.§[@§.load(_loc5_);
      }
      
      public static function §4E§(param1:Object) : String
      {
         return §3!'§.§3">§([param1.levelId,param1.score,§1!N§.§<!u§.id,§ !z§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §^!`§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += § !z§;
         return §3!'§.§3">§(_loc2_);
      }
      
      public static function §7"6§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §&!3§;
         _loc3_ = §3!'§.§3">§(param1 + §?J§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §3!'§.§3">§(_loc3_ + §?J§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §;"'§(param1:Object) : String
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
         _loc2_.push(§ !z§);
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
            if(_loc10_ < §3E§)
            {
               _loc9_ = §3!'§.§3">§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§3E§ < _loc2_.length)
         {
            _loc9_ = §3!'§.§3">§(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      private static function §%!E§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public static function §]"=§(param1:String, param2:int, param3:int, param4:String) : String
      {
         var _loc5_:String = § !z§;
         var _loc6_:String = (_loc6_ = (_loc6_ = (_loc6_ = "") + _loc5_) + §?J§) + param2;
         _loc5_ = §3!'§.§3">§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + §?J§) + param3;
         _loc5_ = §3!'§.§3">§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + §?J§) + param4;
         _loc5_ = §3!'§.§3">§(_loc6_);
         _loc6_ = (_loc6_ += _loc5_) + param1;
         _loc5_ = §3!'§.§3">§(_loc6_);
         return _loc6_.length > 0 ? _loc5_ : null;
      }
      
      public function get §7!#§() : Boolean
      {
         return this.§null §;
      }
      
      private function §=">§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§,"D§.onComplete(param1);
         this.§null § = true;
         this.removeEventListeners();
      }
      
      private function §&U§(param1:HTTPStatusEvent) : void
      {
         this.§,"D§.§&U§(param1);
      }
      
      private function §[!J§(param1:IOErrorEvent) : void
      {
         this.§,"D§.§[!J§(param1);
         this.removeEventListeners();
      }
      
      public function get §?`§() : URLLoader
      {
         return this.§[@§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§[@§)
         {
            this.§[@§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&U§);
            this.§[@§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§[@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!J§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§[@§)
         {
            this.§[@§.close();
            this.§[@§ = null;
         }
         if(this.§,"D§)
         {
            this.§,"D§ = null;
         }
      }
      
      private function §%!a§(param1:Object) : URLVariables
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
