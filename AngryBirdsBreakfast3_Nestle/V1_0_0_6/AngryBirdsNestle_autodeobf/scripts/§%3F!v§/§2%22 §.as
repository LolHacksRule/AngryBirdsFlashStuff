package §?!v§
{
   import §&!k§.§]!q§;
   import §&M§.§#&§;
   import §63§.§^!!§;
   import §<!L§.§7q§;
   import com.angrybirds.utils.§0;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §2" §
   {
      
      public static const §0!<§:String = "serializationJSON";
      
      public static const §?o§:String = "serializationURLParameters";
      
      public static const §#!m§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const §]""§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const §#!@§:String = "|";
      
      private static const §'r§:int = 500;
       
      
      private var §0^§:URLLoader;
      
      private var §4$§:§0;§;
      
      private var §,l§:Boolean = false;
      
      public function §2" §(param1:Object, param2:String, param3:§0;§, param4:String)
      {
         super();
         this.§0^§ = new §#&§();
         this.§4$§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§0^§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §0!<§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §]!q§.encode(param1);
               break;
            case §?o§:
               _loc5_.data = this.§56§(param1);
         }
         this.§0^§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§0^§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&k§);
         this.§0^§.addEventListener(IOErrorEvent.IO_ERROR,this.§0C§);
         _loc5_.url = param2;
         this.§,l§ = false;
         this.§0^§.load(_loc5_);
      }
      
      public static function §"5§(param1:Object) : String
      {
         return §7q§.§0!3§([param1.levelId,param1.score,§^!!§.§+A§.id,§#!m§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §?!a§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §#!m§;
         return §7q§.§0!3§(_loc2_);
      }
      
      public static function § "§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §]""§;
         _loc3_ = §7q§.§0!3§(param1 + §#!@§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §7q§.§0!3§(_loc3_ + §#!@§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §;"$§(param1:Object) : String
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
         _loc2_.push(§#!m§);
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
            if(_loc10_ <= §'r§)
            {
               _loc9_ = §7q§.§0!3§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§'r§ < _loc2_.length)
         {
            _loc9_ = §7q§.§0!3§(_loc8_ + _loc9_);
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
      
      public function get §]!W§() : Boolean
      {
         return this.§,l§;
      }
      
      private function §<!x§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§4$§.onComplete(param1);
         this.§,l§ = true;
         this.removeEventListeners();
      }
      
      private function §&k§(param1:HTTPStatusEvent) : void
      {
         this.§4$§.§&k§(param1);
      }
      
      private function §0C§(param1:IOErrorEvent) : void
      {
         this.§4$§.§0C§(param1);
         this.removeEventListeners();
      }
      
      public function get §6!s§() : URLLoader
      {
         return this.§0^§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§0^§)
         {
            this.§0^§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§&k§);
            this.§0^§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§0^§.removeEventListener(IOErrorEvent.IO_ERROR,this.§0C§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§0^§)
         {
            this.§0^§.close();
            this.§0^§ = null;
         }
         if(this.§4$§)
         {
            this.§4$§ = null;
         }
      }
      
      private function §56§(param1:Object) : URLVariables
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
