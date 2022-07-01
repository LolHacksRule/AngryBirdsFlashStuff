package §?u§
{
   import §!"§.§^!7§;
   import §#G§.§8A§;
   import §<I§.§<k§;
   import §=j§.§?<§;
   import com.angrybirds.utils.§?z§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §48§
   {
      
      public static const §6!^§:String = "serializationJSON";
      
      public static const §[M§:String = "serializationURLParameters";
      
      public static const §,!W§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const §"!s§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const §8!w§:String = "|";
      
      private static const §<!q§:int = 500;
       
      
      private var §`Q§:URLLoader;
      
      private var §?!3§:§?z§;
      
      private var §5!Q§:Boolean = false;
      
      public function §48§(param1:Object, param2:String, param3:§?z§, param4:String)
      {
         super();
         this.§`Q§ = new §?<§();
         this.§?!3§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§`Q§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §6!^§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §8A§.encode(param1);
               break;
            case §[M§:
               _loc5_.data = this.§8!M§(param1);
         }
         this.§`Q§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§`Q§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%+§);
         this.§`Q§.addEventListener(IOErrorEvent.IO_ERROR,this.§5" §);
         _loc5_.url = param2;
         this.§5!Q§ = false;
         this.§`Q§.load(_loc5_);
      }
      
      public static function §%!U§(param1:Object) : String
      {
         return §<k§.§`8§([param1.levelId,param1.score,§^!7§.§[!!§.id,§,!W§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §"f§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §,!W§;
         return §<k§.§`8§(_loc2_);
      }
      
      public static function §"O§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §"!s§;
         _loc3_ = §<k§.§`8§(param1 + §8!w§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §<k§.§`8§(_loc3_ + §8!w§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §<q§(param1:Object) : String
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
         _loc2_.push(§,!W§);
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
            if(_loc10_ <= §<!q§)
            {
               _loc9_ = §<k§.§`8§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§<!q§ < _loc2_.length)
         {
            _loc9_ = §<k§.§`8§(_loc8_ + _loc9_);
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
      
      public function get §+!^§() : Boolean
      {
         return this.§5!Q§;
      }
      
      private function §"Q§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§?!3§.onComplete(param1);
         this.§5!Q§ = true;
         this.removeEventListeners();
      }
      
      private function §%+§(param1:HTTPStatusEvent) : void
      {
         this.§?!3§.§%+§(param1);
      }
      
      private function §5" §(param1:IOErrorEvent) : void
      {
         this.§?!3§.§5" §(param1);
         this.removeEventListeners();
      }
      
      public function get §+"§() : URLLoader
      {
         return this.§`Q§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§`Q§)
         {
            this.§`Q§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%+§);
            this.§`Q§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§`Q§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5" §);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§`Q§)
         {
            this.§`Q§.close();
            this.§`Q§ = null;
         }
         if(this.§?!3§)
         {
            this.§?!3§ = null;
         }
      }
      
      private function §8!M§(param1:Object) : URLVariables
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
