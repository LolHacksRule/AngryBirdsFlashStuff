package §5!O§
{
   import §4V§.§@!Y§;
   import §9!D§.§`!9§;
   import §?5§.§6!^§;
   import §?j§.§4W§;
   import §^E§.§9!Q§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §%!O§
   {
      
      public static const §4!-§:String = "serializationJSON";
      
      public static const §%>§:String = "serializationURLParameters";
      
      public static const §2x§:String = "k8Lc1LQwgJncfdXwONoZUYd6vQM6gE8W";
      
      private static const §>F§:int = 500;
       
      
      private var §7!K§:URLLoader;
      
      private var §5!U§:§@!Y§;
      
      private var §,w§:Boolean = false;
      
      public function §%!O§(param1:Object, param2:String, param3:§@!Y§, param4:String)
      {
         super();
         this.§7!K§ = new §`!9§();
         this.§5!U§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§7!K§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §4!-§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §4W§.encode(param1);
               break;
            case §%>§:
               _loc5_.data = this.§?!U§(param1);
         }
         this.§7!K§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§7!K§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^;§);
         this.§7!K§.addEventListener(IOErrorEvent.IO_ERROR,this.§6R§);
         _loc5_.url = param2;
         this.§,w§ = false;
         this.§7!K§.load(_loc5_);
      }
      
      public static function §=c§(param1:Object) : String
      {
         return §6!^§.§8o§([param1.levelId,param1.score,§9!Q§.§4u§.id,§2x§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §,t§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §2x§;
         return §6!^§.§8o§(_loc2_);
      }
      
      public static function §+y§(param1:Object) : String
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
         _loc2_.push(§2x§);
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
            if(_loc10_ < §>F§)
            {
               _loc9_ = §6!^§.§8o§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§>F§ < _loc2_.length)
         {
            _loc9_ = §6!^§.§8o§(_loc8_ + _loc9_);
         }
         return _loc9_;
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
      
      public function get §4! §() : Boolean
      {
         return this.§,w§;
      }
      
      private function §`!Y§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§5!U§.onComplete(param1);
         this.§,w§ = true;
         this.removeEventListeners();
      }
      
      private function §^;§(param1:HTTPStatusEvent) : void
      {
         this.§5!U§.§^;§(param1);
      }
      
      private function §6R§(param1:IOErrorEvent) : void
      {
         this.§5!U§.§6R§(param1);
         this.removeEventListeners();
      }
      
      public function get § in§() : URLLoader
      {
         return this.§7!K§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§7!K§)
         {
            this.§7!K§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^;§);
            this.§7!K§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§7!K§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6R§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§7!K§)
         {
            this.§7!K§.close();
            this.§7!K§ = null;
         }
         if(this.§5!U§)
         {
            this.§5!U§ = null;
         }
      }
      
      private function §?!U§(param1:Object) : URLVariables
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
