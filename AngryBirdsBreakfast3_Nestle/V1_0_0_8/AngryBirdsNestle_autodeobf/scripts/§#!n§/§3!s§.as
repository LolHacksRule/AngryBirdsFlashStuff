package §#!n§
{
   import §&!>§.§2!V§;
   import §2J§.§7!-§;
   import §@!#§.§'!m§;
   import §]!5§.§`"§;
   import com.angrybirds.utils.§[!k§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §3!s§
   {
      
      public static const §5%§:String = "serializationJSON";
      
      public static const §8!$§:String = "serializationURLParameters";
      
      public static const §`w§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const §5!F§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const §,!3§:String = "|";
      
      private static const §9!"§:int = 500;
       
      
      private var §9!P§:URLLoader;
      
      private var §`!_§:§[!k§;
      
      private var §'!5§:Boolean = false;
      
      public function §3!s§(param1:Object, param2:String, param3:§[!k§, param4:String)
      {
         super();
         this.§9!P§ = new §`"§();
         this.§`!_§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§9!P§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §5%§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §7!-§.encode(param1);
               break;
            case §8!$§:
               _loc5_.data = this.§,!<§(param1);
         }
         this.§9!P§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§9!P§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§0!n§);
         this.§9!P§.addEventListener(IOErrorEvent.IO_ERROR,this.§4J§);
         _loc5_.url = param2;
         this.§'!5§ = false;
         this.§9!P§.load(_loc5_);
      }
      
      public static function §0!7§(param1:Object) : String
      {
         return §'!m§.§"y§([param1.levelId,param1.score,§2!V§.§'!U§.id,§`w§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §'!;§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §`w§;
         return §'!m§.§"y§(_loc2_);
      }
      
      public static function § ,§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §5!F§;
         _loc3_ = §'!m§.§"y§(param1 + §,!3§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §'!m§.§"y§(_loc3_ + §,!3§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §@!S§(param1:Object) : String
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
         _loc2_.push(§`w§);
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
            if(_loc10_ <= §9!"§)
            {
               _loc9_ = §'!m§.§"y§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§9!"§ < _loc2_.length)
         {
            _loc9_ = §'!m§.§"y§(_loc8_ + _loc9_);
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
      
      public function get §4!P§() : Boolean
      {
         return this.§'!5§;
      }
      
      private function §;!W§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§`!_§.onComplete(param1);
         this.§'!5§ = true;
         this.removeEventListeners();
      }
      
      private function §0!n§(param1:HTTPStatusEvent) : void
      {
         this.§`!_§.§0!n§(param1);
      }
      
      private function §4J§(param1:IOErrorEvent) : void
      {
         this.§`!_§.§4J§(param1);
         this.removeEventListeners();
      }
      
      public function get §@""§() : URLLoader
      {
         return this.§9!P§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§9!P§)
         {
            this.§9!P§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§0!n§);
            this.§9!P§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§9!P§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4J§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§9!P§)
         {
            this.§9!P§.close();
            this.§9!P§ = null;
         }
         if(this.§`!_§)
         {
            this.§`!_§ = null;
         }
      }
      
      private function §,!<§(param1:Object) : URLVariables
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
