package §&!F§
{
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §5G§.§?,§;
   import §;!]§.§`!V§;
   import §=!g§.§!!@§;
   import §?R§.§7!M§;
   import §[h§.§4I§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §"!d§
   {
      
      public static const §!+§:String = "login";
      
      public static const §>z§:String = "GetActiveLevels";
      
      public static const §0E§:String = "GetActiveSpotPrize";
      
      public static const §^1§:String = "LevelStart";
      
      public static const §#u§:String = "useItem";
      
      public static const §]c§:String = "UseFreePlay";
      
      public static const §9!F§:String = "UpdateSpotPrizeWin";
      
      public static const §1!Q§:String = "LevelComplete";
      
      public static const §]q§:String = "RefreshSession";
      
      public static const §9X§:String = "serializationJSON";
      
      public static const §8n§:String = "serializationURLParameters";
      
      private static const §6!3§:String = "2lsiv93osdunx5a3lkdjf2ao8j2i3hg4";
      
      public static const §"[§:String = "cknb2jk1mcb2w3ns9bv92ks8kh10ksbs";
      
      private static const §=!§:String = "|";
      
      public static const §"!Q§:int = 1;
      
      public static const §7!c§:int = 3;
      
      public static const §;,§:String = "CheetosCredit";
      
      private static const §"e§:int = 500;
       
      
      private var §4!8§:URLLoader;
      
      private var §<!O§:§7Z§;
      
      private var §,>§:Boolean = false;
      
      public function §"!d§(param1:Object, param2:String, param3:§7Z§, param4:String)
      {
         super();
         this.§4!8§ = new URLLoader();
         this.§<!O§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§4!8§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §9X§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §`!V§.encode(param1);
               break;
            case §8n§:
               _loc5_.data = this.§""§(param1);
         }
         this.§4!8§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§4!8§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHttpStatus);
         this.§4!8§.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         _loc5_.url = param2;
         this.§,>§ = false;
         this.§4!8§.load(_loc5_);
      }
      
      private static function §,_§(param1:*, param2:int = 0) : void
      {
         var _loc4_:* = null;
         for(_loc4_ in param1)
         {
            §,_§(param1[_loc4_],param2 + 1);
         }
      }
      
      public static function § !_§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §6!3§;
         return §7!M§.§^E§(_loc2_);
      }
      
      public static function §0#§(param1:Object) : String
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
         _loc2_.push(param1.stars + "");
         _loc2_.push(§6!3§);
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
            if(_loc10_ <= §"e§)
            {
               _loc9_ = §7!M§.§^E§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§"e§ < _loc2_.length)
         {
            _loc9_ = §7!M§.§^E§(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      public static function §!!9§(param1:String) : String
      {
         return §7!M§.§^E§([param1,§>f§.§%!`§.§6!W§,§6!3§].join(§=!§));
      }
      
      public static function §+!5§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §"[§;
         _loc3_ = §7!M§.§^E§(param1 + §=!§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §7!M§.§^E§(_loc3_ + §=!§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §>%§() : String
      {
         return §>f§.§5!`§ + "." + §"!d§.§!!9§(§>f§.§5!`§);
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §[!U§.§ !=§((param1.currentTarget as URLLoader).data);
         var _loc3_:Boolean = false;
         if(_loc2_.error)
         {
            if(_loc2_.error == "SESSION_EXPIRED")
            {
               §!!@§.§%Q§("reportSessionError",_loc2_.error);
               §>f§.logout();
               _loc3_ = true;
            }
            else if(_loc2_.error == "SESSION_INVALID")
            {
               §!!@§.§%Q§("reportSessionError",_loc2_.error);
               §>f§.logout();
               _loc3_ = true;
            }
         }
         if(!_loc3_)
         {
            this.§<!O§.onComplete(param1);
         }
         this.§,>§ = true;
         this.removeEventListeners();
      }
      
      private function onHttpStatus(param1:HTTPStatusEvent) : void
      {
         this.§<!O§.onHttpStatus(param1);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§<!O§.onIOError(param1);
         this.removeEventListeners();
         §?,§.sCheetosPopups.showPopup(§&O§.ERROR,§4I§.getText("Error"));
      }
      
      private function removeEventListeners() : void
      {
         if(this.§4!8§)
         {
            this.§4!8§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.onHttpStatus);
            this.§4!8§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§4!8§.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         }
      }
      
      private function §""§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§4!8§)
         {
            this.§4!8§.close();
            this.§4!8§ = null;
         }
         if(this.§<!O§)
         {
            this.§<!O§ = null;
         }
      }
   }
}
