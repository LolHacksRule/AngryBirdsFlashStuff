package §5R§
{
   import § !1§.§ !A§;
   import §!!r§.§&!D§;
   import §!!s§.§;4§;
   import §!"4§.§;";§;
   import §""=§.§#R§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §=F§
   {
      
      public static const §8"H§:String = "serializationJSON";
      
      public static const §=! §:String = "serializationURLParameters";
      
      public static const §%v§:String = "eksXzijs0jkph212jlAjs2nwU23S02j3";
      
      public static const §"">§:String = "Mc8sk3Nf93jnfIdf73j5nt7sbq7alpi8";
      
      private static const §`!I§:String = "|";
      
      private static const §3J§:int = 500;
       
      
      private var §?n§:URLLoader;
      
      private var §0G§:§&!D§;
      
      private var §%!j§:Boolean = false;
      
      public function §=F§(param1:Object, param2:String, param3:§&!D§, param4:String)
      {
         super();
         this.§?n§ = new §#R§();
         this.§0G§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§?n§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §8"H§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §;4§.encode(param1);
               break;
            case §=! §:
               _loc5_.data = this.§3!t§(param1);
         }
         this.§?n§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§?n§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.dynamic);
         this.§?n§.addEventListener(IOErrorEvent.IO_ERROR,this.§1x§);
         _loc5_.url = param2;
         this.§%!j§ = false;
         this.§?n§.load(_loc5_);
      }
      
      public static function §+h§(param1:Object) : String
      {
         return § !A§.§<_§([param1.levelId,param1.score,§;";§.§5!D§.id,§%v§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §8"+§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §%v§;
         return § !A§.§<_§(_loc2_);
      }
      
      public static function § Z§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §"">§;
         _loc3_ = § !A§.§<_§(param1 + §`!I§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = § !A§.§<_§(_loc3_ + §`!I§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §>D§(param1:Object) : String
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
         _loc2_.push(§%v§);
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
            if(_loc10_ < §3J§)
            {
               _loc9_ = § !A§.§<_§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§3J§ < _loc2_.length)
         {
            _loc9_ = § !A§.§<_§(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      private static function §;!E§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public static function § ![§(param1:String, param2:int, param3:int, param4:String) : String
      {
         var _loc5_:String = §%v§;
         var _loc6_:String = (_loc6_ = (_loc6_ = (_loc6_ = "") + _loc5_) + §`!I§) + param2;
         _loc5_ = § !A§.§<_§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + §`!I§) + param3;
         _loc5_ = § !A§.§<_§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + §`!I§) + param4;
         _loc5_ = § !A§.§<_§(_loc6_);
         _loc6_ = (_loc6_ += _loc5_) + param1;
         _loc5_ = § !A§.§<_§(_loc6_);
         return _loc6_.length > 0 ? _loc5_ : null;
      }
      
      public function get §&"+§() : Boolean
      {
         return this.§%!j§;
      }
      
      private function §`!t§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§0G§.onComplete(param1);
         this.§%!j§ = true;
         this.removeEventListeners();
      }
      
      private function dynamic(param1:HTTPStatusEvent) : void
      {
         this.§0G§.dynamic(param1);
      }
      
      private function §1x§(param1:IOErrorEvent) : void
      {
         this.§0G§.§1x§(param1);
         this.removeEventListeners();
      }
      
      public function get §1"4§() : URLLoader
      {
         return this.§?n§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§?n§)
         {
            this.§?n§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.dynamic);
            this.§?n§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§?n§.removeEventListener(IOErrorEvent.IO_ERROR,this.§1x§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§?n§)
         {
            this.§?n§.close();
            this.§?n§ = null;
         }
         if(this.§0G§)
         {
            this.§0G§ = null;
         }
      }
      
      private function §3!t§(param1:Object) : URLVariables
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
