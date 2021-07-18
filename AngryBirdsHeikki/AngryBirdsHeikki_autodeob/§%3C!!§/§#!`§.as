package §<!!§
{
   import §!!7§.§"c§;
   import §-!5§.§1!_§;
   import §3Y§.§4!_§;
   import §9I§.§>!=§;
   import §^V§.§4S§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#!`§
   {
      
      public static const §`!1§:String = "serializationJSON";
      
      public static const §,!`§:String = "serializationURLParameters";
      
      public static const §5!Z§:String = "k8Lc1LQwgJncfdXwONoZUYd6vQM6gE8W";
      
      private static const §0`§:int = 500;
       
      
      private var §%U§:URLLoader;
      
      private var §`k§:§>!=§;
      
      private var §>!K§:Boolean = false;
      
      public function §#!`§(param1:Object, param2:String, param3:§>!=§, param4:String)
      {
         super();
         this.§%U§ = new §4S§();
         this.§`k§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§%U§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §`!1§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §"c§.encode(param1);
               break;
            case §,!`§:
               _loc5_.data = this.§9o§(param1);
         }
         this.§%U§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§%U§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3!X§);
         this.§%U§.addEventListener(IOErrorEvent.IO_ERROR,this.§'z§);
         _loc5_.url = param2;
         this.§>!K§ = false;
         this.§%U§.load(_loc5_);
      }
      
      public static function §,!;§(param1:Object) : String
      {
         return §1!_§.§,!G§([param1.levelId,param1.score,§4!_§.§2!4§.id,§5!Z§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §,!1§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §5!Z§;
         return §1!_§.§,!G§(_loc2_);
      }
      
      public static function §9M§(param1:Object) : String
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
         _loc2_.push(§5!Z§);
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
            if(_loc10_ < §0`§)
            {
               _loc9_ = §1!_§.§,!G§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§0`§ < _loc2_.length)
         {
            _loc9_ = §1!_§.§,!G§(_loc8_ + _loc9_);
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
      
      public function get §^!^§() : Boolean
      {
         return this.§>!K§;
      }
      
      private function §1!P§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§`k§.onComplete(param1);
         this.§>!K§ = true;
         this.removeEventListeners();
      }
      
      private function §3!X§(param1:HTTPStatusEvent) : void
      {
         this.§`k§.§3!X§(param1);
      }
      
      private function §'z§(param1:IOErrorEvent) : void
      {
         this.§`k§.§'z§(param1);
         this.removeEventListeners();
      }
      
      public function get §%!6§() : URLLoader
      {
         return this.§%U§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§%U§)
         {
            this.§%U§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3!X§);
            this.§%U§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§%U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'z§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§%U§)
         {
            this.§%U§.close();
            this.§%U§ = null;
         }
         if(this.§`k§)
         {
            this.§`k§ = null;
         }
      }
      
      private function §9o§(param1:Object) : URLVariables
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
