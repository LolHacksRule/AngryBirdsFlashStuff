package §]p§
{
   import §1!I§.§1X§;
   import §6g§.§&N§;
   import §;!2§.§,>§;
   import §;f§.§&!$§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §^s§
   {
      
      public static const §<r§:String = "serializationJSON";
      
      public static const §&a§:String = "serializationURLParameters";
      
      public static const §39§:String = "7ad51q648a3a1afb71278a4dz79838e";
      
      public static const §+u§:Vector.<String> = Vector.<String>(["d4a50f26687b5f428e97811edd7d27b5325a90fd","aea80166563c0b964a90fd0c46ad41d6913f2638","5afa60dbdac0c45e39d34d9c99daa7e5926cdf31","723d8a9546afc80a92e799dfaf5bf22d7ff12ef5","3cfe4fadad900f5e07861422b67a32412d6a1a54","23312be24f0d34fbe173c5783e9cdf3eff6ed2a5","52ad3de0bfb259ea023695aa43cf60d05eacf147","0d9842194cde3189e291804879260852bc2fd52d","39bce1b13e75ea0586cb686d0c253ab499dca439","985f9cc1fc339e4f10663619620638fd96a0c2a4","3fc91d906ab9aef282d5f636ae509d725c4ff541","ad401b74134e6491d343edb89f46fa2af6ac15fd","e9014fe4da68abf3c096b5fb539b114aa60dc4a8","4bede192cdbee8ca149a74dc5a7a76f3782c541f","14a744a47f29b8885036d017cbef52ebd7cc11d5","f681cbd682e3d0b2364f98618a9b5037058f2d74"]);
      
      public static const §]k§:int = 2;
      
      public static var §3!2§:String = "";
      
      public static var §==§:int = 0;
       
      
      private var §5o§:URLLoader;
      
      private var §3;§:§&N§;
      
      private var §9f§:Boolean = false;
      
      public function §^s§(param1:Object, param2:String, param3:§&N§, param4:String)
      {
         super();
         var _loc5_:Date;
         var _loc6_:int = (_loc5_ = new Date()).hours * 60 + _loc5_.minutes;
         §==§ = _loc6_;
         this.§5o§ = new §&!$§();
         this.§3;§ = param3;
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§5o§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §<r§:
               _loc7_.contentType = "application/json";
               _loc7_.data = §,>§.encode(param1);
               break;
            case §&a§:
               _loc7_.data = this.§5w§(param1);
         }
         this.§5o§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§5o§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9>§);
         this.§5o§.addEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
         _loc7_.url = param2;
         this.§9f§ = false;
         this.§5o§.load(_loc7_);
      }
      
      public static function §?0§(param1:String) : String
      {
         var _loc2_:String = §^s§.§39§;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = §1X§.§null§(param1.substring(_loc3_) + _loc2_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function §+d§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §+u§.length)
         {
            if(§+u§[_loc2_] == param1)
            {
               if(§+u§[_loc2_] != §3!2§)
               {
                  §3!2§ = §+u§[_loc2_];
               }
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §<I§() : int
      {
         return §+d§(§3!2§);
      }
      
      private static function §null §(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public function get §7_§() : Boolean
      {
         return this.§9f§;
      }
      
      private function §[!"§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§3;§.onComplete(param1);
         this.§9f§ = true;
         this.removeEventListeners();
      }
      
      private function §9>§(param1:HTTPStatusEvent) : void
      {
         this.§3;§.§9>§(param1);
      }
      
      private function §'r§(param1:IOErrorEvent) : void
      {
         this.§3;§.§'r§(param1);
         this.removeEventListeners();
      }
      
      public function get §=`§() : URLLoader
      {
         return this.§5o§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§5o§)
         {
            this.§5o§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9>§);
            this.§5o§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§5o§)
         {
            this.§5o§.close();
            this.§5o§ = null;
         }
         if(this.§3;§)
         {
            this.§3;§ = null;
         }
      }
      
      private function §5w§(param1:Object) : URLVariables
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
