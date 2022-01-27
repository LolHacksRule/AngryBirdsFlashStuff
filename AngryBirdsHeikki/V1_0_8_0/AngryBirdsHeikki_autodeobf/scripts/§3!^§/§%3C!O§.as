package §3!^§
{
   import §'m§.§"1§;
   import §+E§.§ 0§;
   import §-Y§.§]!Q§;
   import §0;§.§]U§;
   import §1!J§.§>!Q§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §<!O§
   {
      
      public static const §#e§:String = "serializationJSON";
      
      public static const §]!D§:String = "serializationURLParameters";
      
      public static const §@T§:String = "k8Lc1LQwgJncfdXwONoZUYd6vQM6gE8W";
      
      private static const §%!`§:int = 500;
       
      
      private var §4!$§:URLLoader;
      
      private var §>R§:§>!Q§;
      
      private var §"C§:Boolean = false;
      
      public function §<!O§(param1:Object, param2:String, param3:§>!Q§, param4:String)
      {
         super();
         this.§4!$§ = new §]!Q§();
         this.§>R§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§4!$§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §#e§:
               _loc5_.contentType = "application/json";
               _loc5_.data = § 0§.encode(param1);
               break;
            case §]!D§:
               _loc5_.data = this.§!!!§(param1);
         }
         this.§4!$§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§4!$§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1`§);
         this.§4!$§.addEventListener(IOErrorEvent.IO_ERROR,this.§"W§);
         _loc5_.url = param2;
         this.§"C§ = false;
         this.§4!$§.load(_loc5_);
      }
      
      public static function §?!E§(param1:Object) : String
      {
         return §"1§.§%O§([param1.levelId,param1.score,§]U§.§`a§.id,§@T§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §#!5§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §@T§;
         return §"1§.§%O§(_loc2_);
      }
      
      public static function §]!6§(param1:Object) : String
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
         _loc2_.push(§@T§);
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
            if(_loc10_ < §%!`§)
            {
               _loc9_ = §"1§.§%O§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§%!`§ < _loc2_.length)
         {
            _loc9_ = §"1§.§%O§(_loc8_ + _loc9_);
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
      
      public function get §3!7§() : Boolean
      {
         return this.§"C§;
      }
      
      private function § Y§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§>R§.onComplete(param1);
         this.§"C§ = true;
         this.removeEventListeners();
      }
      
      private function §1`§(param1:HTTPStatusEvent) : void
      {
         this.§>R§.§1`§(param1);
      }
      
      private function §"W§(param1:IOErrorEvent) : void
      {
         this.§>R§.§"W§(param1);
         this.removeEventListeners();
      }
      
      public function get §2!<§() : URLLoader
      {
         return this.§4!$§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§4!$§)
         {
            this.§4!$§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1`§);
            this.§4!$§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§4!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§"W§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§4!$§)
         {
            this.§4!$§.close();
            this.§4!$§ = null;
         }
         if(this.§>R§)
         {
            this.§>R§ = null;
         }
      }
      
      private function §!!!§(param1:Object) : URLVariables
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
