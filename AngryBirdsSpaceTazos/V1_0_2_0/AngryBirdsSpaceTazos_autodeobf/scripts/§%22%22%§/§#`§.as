package §""%§
{
   import §4!x§.§`[§;
   import §6!J§.§ try§;
   import §6"6§.§40§;
   import §7r§.§8y§;
   import §`"!§.§6"=§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#`§
   {
      
      public static const §-n§:String = "serializationJSON";
      
      public static const §7!?§:String = "serializationURLParameters";
      
      public static const §%U§:String = "eksXzijs0jkph212jlAjs2nwU23S02j3";
      
      public static const §<"4§:String = "Mc8sk3Nf93jnfIdf73j5nt7sbq7alpi8";
      
      private static const §]"4§:String = "|";
      
      private static const §0!#§:int = 500;
       
      
      private var §+!2§:URLLoader;
      
      private var §4""§:§`[§;
      
      private var §'!G§:Boolean = false;
      
      public function §#`§(param1:Object, param2:String, param3:§`[§, param4:String)
      {
         super();
         this.§+!2§ = new §6"=§();
         this.§4""§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§+!2§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §-n§:
               _loc5_.contentType = "application/json";
               _loc5_.data = § try§.encode(param1);
               break;
            case §7!?§:
               _loc5_.data = this.§`"A§(param1);
         }
         this.§+!2§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§+!2§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§"!7§);
         this.§+!2§.addEventListener(IOErrorEvent.IO_ERROR,this.§5"9§);
         _loc5_.url = param2;
         this.§'!G§ = false;
         this.§+!2§.load(_loc5_);
      }
      
      public static function §@!t§(param1:Object) : String
      {
         return §8y§.§%!W§([param1.levelId,param1.score,§40§.§9!7§.id,§%U§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §>!g§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §%U§;
         return §8y§.§%!W§(_loc2_);
      }
      
      public static function §<!w§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §<"4§;
         _loc3_ = §8y§.§%!W§(param1 + §]"4§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §8y§.§%!W§(_loc3_ + §]"4§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §5%§(param1:Object) : String
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
         _loc2_.push(§%U§);
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
            if(_loc10_ < §0!#§)
            {
               _loc9_ = §8y§.§%!W§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§0!#§ < _loc2_.length)
         {
            _loc9_ = §8y§.§%!W§(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      private static function §]!`§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public static function §5!`§(param1:String, param2:int, param3:int, param4:String) : String
      {
         var _loc5_:String = §%U§;
         var _loc6_:String = (_loc6_ = (_loc6_ = (_loc6_ = "") + _loc5_) + §]"4§) + param2;
         _loc5_ = §8y§.§%!W§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + §]"4§) + param3;
         _loc5_ = §8y§.§%!W§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + §]"4§) + param4;
         _loc5_ = §8y§.§%!W§(_loc6_);
         _loc6_ = (_loc6_ += _loc5_) + param1;
         _loc5_ = §8y§.§%!W§(_loc6_);
         return _loc6_.length > 0 ? _loc5_ : null;
      }
      
      public function get §=t§() : Boolean
      {
         return this.§'!G§;
      }
      
      private function §"!1§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§4""§.onComplete(param1);
         this.§'!G§ = true;
         this.removeEventListeners();
      }
      
      private function §"!7§(param1:HTTPStatusEvent) : void
      {
         this.§4""§.§"!7§(param1);
      }
      
      private function §5"9§(param1:IOErrorEvent) : void
      {
         this.§4""§.§5"9§(param1);
         this.removeEventListeners();
      }
      
      public function get §2"F§() : URLLoader
      {
         return this.§+!2§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§+!2§)
         {
            this.§+!2§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§"!7§);
            this.§+!2§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§+!2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"9§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§+!2§)
         {
            this.§+!2§.close();
            this.§+!2§ = null;
         }
         if(this.§4""§)
         {
            this.§4""§ = null;
         }
      }
      
      private function §`"A§(param1:Object) : URLVariables
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
