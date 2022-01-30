package §[j§
{
   import §,!<§.§0V§;
   import §-!G§.§!!Y§;
   import §3"%§.§?!H§;
   import §4!V§.§8!?§;
   import com.angrybirds.utils.§!!^§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §%p§
   {
      
      public static const §#0§:String = "serializationJSON";
      
      public static const § !a§:String = "serializationURLParameters";
      
      public static const §;7§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const §0"2§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const §0!!§:String = "|";
      
      private static const §1,§:int = 500;
       
      
      private var §`>§:URLLoader;
      
      private var §^!+§:§!!^§;
      
      private var §^b§:Boolean = false;
      
      public function §%p§(param1:Object, param2:String, param3:§!!^§, param4:String)
      {
         super();
         this.§`>§ = new §?!H§();
         this.§^!+§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§`>§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §#0§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §8!?§.encode(param1);
               break;
            case § !a§:
               _loc5_.data = this.§7A§(param1);
         }
         this.§`>§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§`>§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9>§);
         this.§`>§.addEventListener(IOErrorEvent.IO_ERROR,this.§&!`§);
         _loc5_.url = param2;
         this.§^b§ = false;
         this.§`>§.load(_loc5_);
      }
      
      public static function §"!z§(param1:Object) : String
      {
         return §0V§.§"e§([param1.levelId,param1.score,§!!Y§.§'S§.id,§;7§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §3m§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §;7§;
         return §0V§.§"e§(_loc2_);
      }
      
      public static function §5v§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §0"2§;
         _loc3_ = §0V§.§"e§(param1 + §0!!§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §0V§.§"e§(_loc3_ + §0!!§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §#!<§(param1:Object) : String
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
         _loc2_.push(§;7§);
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
            if(_loc10_ <= §1,§)
            {
               _loc9_ = §0V§.§"e§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§1,§ < _loc2_.length)
         {
            _loc9_ = §0V§.§"e§(_loc8_ + _loc9_);
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
      
      public function get §4!w§() : Boolean
      {
         return this.§^b§;
      }
      
      private function §?V§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§^!+§.onComplete(param1);
         this.§^b§ = true;
         this.removeEventListeners();
      }
      
      private function §9>§(param1:HTTPStatusEvent) : void
      {
         this.§^!+§.§9>§(param1);
      }
      
      private function §&!`§(param1:IOErrorEvent) : void
      {
         this.§^!+§.§&!`§(param1);
         this.removeEventListeners();
      }
      
      public function get §'O§() : URLLoader
      {
         return this.§`>§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§`>§)
         {
            this.§`>§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9>§);
            this.§`>§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§`>§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!`§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§`>§)
         {
            this.§`>§.close();
            this.§`>§ = null;
         }
         if(this.§^!+§)
         {
            this.§^!+§ = null;
         }
      }
      
      private function §7A§(param1:Object) : URLVariables
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
