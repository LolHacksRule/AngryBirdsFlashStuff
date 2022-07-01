package §3@§
{
   import §!! §.§!!M§;
   import §"q§.§6,§;
   import §2,§.§[8§;
   import §6![§.§,!T§;
   import com.angrybirds.utils.§#!z§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §=W§
   {
      
      public static const §"!x§:String = "serializationJSON";
      
      public static const §"!+§:String = "serializationURLParameters";
      
      public static const §[Y§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const § !Y§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const §^!U§:String = "|";
      
      private static const §-z§:int = 500;
       
      
      private var § Q§:URLLoader;
      
      private var § !S§:§#!z§;
      
      private var §6!h§:Boolean = false;
      
      public function §=W§(param1:Object, param2:String, param3:§#!z§, param4:String)
      {
         super();
         this.§ Q§ = new §[8§();
         this.§ !S§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§ Q§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §"!x§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §!!M§.encode(param1);
               break;
            case §"!+§:
               _loc5_.data = this.§5H§(param1);
         }
         this.§ Q§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§ Q§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9!@§);
         this.§ Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§@!2§);
         _loc5_.url = param2;
         this.§6!h§ = false;
         this.§ Q§.load(_loc5_);
      }
      
      public static function §0!t§(param1:Object) : String
      {
         return §,!T§.§>g§([param1.levelId,param1.score,§6,§.§-Q§.id,§[Y§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §76§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §[Y§;
         return §,!T§.§>g§(_loc2_);
      }
      
      public static function §-m§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = § !Y§;
         _loc3_ = §,!T§.§>g§(param1 + §^!U§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §,!T§.§>g§(_loc3_ + §^!U§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §`!o§(param1:Object) : String
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
         _loc2_.push(§[Y§);
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
            if(_loc10_ <= §-z§)
            {
               _loc9_ = §,!T§.§>g§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§-z§ < _loc2_.length)
         {
            _loc9_ = §,!T§.§>g§(_loc8_ + _loc9_);
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
      
      public function get §>!6§() : Boolean
      {
         return this.§6!h§;
      }
      
      private function §;![§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§ !S§.onComplete(param1);
         this.§6!h§ = true;
         this.removeEventListeners();
      }
      
      private function §9!@§(param1:HTTPStatusEvent) : void
      {
         this.§ !S§.§9!@§(param1);
      }
      
      private function §@!2§(param1:IOErrorEvent) : void
      {
         this.§ !S§.§@!2§(param1);
         this.removeEventListeners();
      }
      
      public function get §?5§() : URLLoader
      {
         return this.§ Q§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§ Q§)
         {
            this.§ Q§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9!@§);
            this.§ Q§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§ Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§@!2§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§ Q§)
         {
            this.§ Q§.close();
            this.§ Q§ = null;
         }
         if(this.§ !S§)
         {
            this.§ !S§ = null;
         }
      }
      
      private function §5H§(param1:Object) : URLVariables
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
