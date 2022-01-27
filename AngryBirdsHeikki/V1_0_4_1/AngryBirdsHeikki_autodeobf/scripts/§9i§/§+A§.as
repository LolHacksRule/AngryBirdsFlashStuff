package §9i§
{
   import §1!6§.§ !3§;
   import §23§.§4!;§;
   import §9!&§.§[!`§;
   import §;<§.§%!I§;
   import §^!#§.§"!-§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §+A§
   {
      
      public static const §<!&§:String = "serializationJSON";
      
      public static const §,=§:String = "serializationURLParameters";
      
      public static const §1!0§:String = "k8Lc1LQwgJncfdXwONoZUYd6vQM6gE8W";
      
      private static const §+6§:int = 500;
       
      
      private var §<!R§:URLLoader;
      
      private var § §:§%!I§;
      
      private var § 6§:Boolean = false;
      
      public function §+A§(param1:Object, param2:String, param3:§%!I§, param4:String)
      {
         super();
         this.§<!R§ = new §"!-§();
         this.§ § = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§<!R§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §<!&§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §[!`§.encode(param1);
               break;
            case §,=§:
               _loc5_.data = this.§@l§(param1);
         }
         this.§<!R§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§<!R§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1x§);
         this.§<!R§.addEventListener(IOErrorEvent.IO_ERROR,this.§<!L§);
         _loc5_.url = param2;
         this.§ 6§ = false;
         this.§<!R§.load(_loc5_);
      }
      
      public static function §2$§(param1:Object) : String
      {
         return §4!;§.§@!8§([param1.levelId,param1.score,§ !3§.§ ^§.id,§1!0§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §&n§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §1!0§;
         return §4!;§.§@!8§(_loc2_);
      }
      
      public static function § !b§(param1:Object) : String
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
         _loc2_.push(§1!0§);
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
            if(_loc10_ < §+6§)
            {
               _loc9_ = §4!;§.§@!8§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§+6§ < _loc2_.length)
         {
            _loc9_ = §4!;§.§@!8§(_loc8_ + _loc9_);
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
      
      public function get §-S§() : Boolean
      {
         return this.§ 6§;
      }
      
      private function §@!E§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§ §.onComplete(param1);
         this.§ 6§ = true;
         this.removeEventListeners();
      }
      
      private function §1x§(param1:HTTPStatusEvent) : void
      {
         this.§ §.§1x§(param1);
      }
      
      private function §<!L§(param1:IOErrorEvent) : void
      {
         this.§ §.§<!L§(param1);
         this.removeEventListeners();
      }
      
      public function get §;;§() : URLLoader
      {
         return this.§<!R§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§<!R§)
         {
            this.§<!R§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1x§);
            this.§<!R§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§<!R§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<!L§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§<!R§)
         {
            this.§<!R§.close();
            this.§<!R§ = null;
         }
         if(this.§ §)
         {
            this.§ § = null;
         }
      }
      
      private function §@l§(param1:Object) : URLVariables
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
