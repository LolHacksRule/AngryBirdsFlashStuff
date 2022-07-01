package §#!`§
{
   import §!T§.§`v§;
   import §,n§.§;!h§;
   import §6!C§.§<!R§;
   import §=X§.§3j§;
   import com.angrybirds.utils.§finally§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §4!#§
   {
      
      public static const §;0§:String = "serializationJSON";
      
      public static const §>!z§:String = "serializationURLParameters";
      
      public static const §?6§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const §<0§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const §4!m§:String = "|";
      
      private static const §+" §:int = 500;
       
      
      private var §]!e§:URLLoader;
      
      private var §7"0§:§finally§;
      
      private var §'!2§:Boolean = false;
      
      public function §4!#§(param1:Object, param2:String, param3:§finally§, param4:String)
      {
         super();
         this.§]!e§ = new §<!R§();
         this.§7"0§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§]!e§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §;0§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §;!h§.encode(param1);
               break;
            case §>!z§:
               _loc5_.data = this.§^!+§(param1);
         }
         this.§]!e§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§]!e§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!R§);
         this.§]!e§.addEventListener(IOErrorEvent.IO_ERROR,this.§4!E§);
         _loc5_.url = param2;
         this.§'!2§ = false;
         this.§]!e§.load(_loc5_);
      }
      
      public static function static(param1:Object) : String
      {
         return §`v§.§catch§([param1.levelId,param1.score,§3j§.§2_§.id,§?6§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §=y§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §?6§;
         return §`v§.§catch§(_loc2_);
      }
      
      public static function §=!M§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §<0§;
         _loc3_ = §`v§.§catch§(param1 + §4!m§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §`v§.§catch§(_loc3_ + §4!m§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §]H§(param1:Object) : String
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
         _loc2_.push(§?6§);
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
            if(_loc10_ <= §+" §)
            {
               _loc9_ = §`v§.§catch§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§+" § < _loc2_.length)
         {
            _loc9_ = §`v§.§catch§(_loc8_ + _loc9_);
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
      
      public function get §"u§() : Boolean
      {
         return this.§'!2§;
      }
      
      private function §6!9§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§7"0§.onComplete(param1);
         this.§'!2§ = true;
         this.removeEventListeners();
      }
      
      private function §+!R§(param1:HTTPStatusEvent) : void
      {
         this.§7"0§.§+!R§(param1);
      }
      
      private function §4!E§(param1:IOErrorEvent) : void
      {
         this.§7"0§.§4!E§(param1);
         this.removeEventListeners();
      }
      
      public function get §"^§() : URLLoader
      {
         return this.§]!e§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§]!e§)
         {
            this.§]!e§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!R§);
            this.§]!e§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§]!e§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!E§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§]!e§)
         {
            this.§]!e§.close();
            this.§]!e§ = null;
         }
         if(this.§7"0§)
         {
            this.§7"0§ = null;
         }
      }
      
      private function §^!+§(param1:Object) : URLVariables
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
