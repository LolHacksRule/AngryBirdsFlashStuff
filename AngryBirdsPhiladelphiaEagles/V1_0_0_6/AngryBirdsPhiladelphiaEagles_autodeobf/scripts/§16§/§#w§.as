package §16§
{
   import §!@§.§^!5§;
   import §-A§.§,G§;
   import §<@§.§1!E§;
   import §[8§.§0e§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#w§
   {
      
      public static const §=!'§:String = "serializationJSON";
      
      public static const § n§:String = "serializationURLParameters";
      
      public static const §0`§:String = "7ad51q648a3a1afb71278a4dz79838e";
      
      public static const §&!?§:Vector.<String> = Vector.<String>(["d4a50f26687b5f428e97811edd7d27b5325a90fd","aea80166563c0b964a90fd0c46ad41d6913f2638","5afa60dbdac0c45e39d34d9c99daa7e5926cdf31","723d8a9546afc80a92e799dfaf5bf22d7ff12ef5","3cfe4fadad900f5e07861422b67a32412d6a1a54","23312be24f0d34fbe173c5783e9cdf3eff6ed2a5","52ad3de0bfb259ea023695aa43cf60d05eacf147","0d9842194cde3189e291804879260852bc2fd52d","39bce1b13e75ea0586cb686d0c253ab499dca439","985f9cc1fc339e4f10663619620638fd96a0c2a4","3fc91d906ab9aef282d5f636ae509d725c4ff541","ad401b74134e6491d343edb89f46fa2af6ac15fd","e9014fe4da68abf3c096b5fb539b114aa60dc4a8","4bede192cdbee8ca149a74dc5a7a76f3782c541f","14a744a47f29b8885036d017cbef52ebd7cc11d5","f681cbd682e3d0b2364f98618a9b5037058f2d74"]);
      
      public static const §"J§:int = 2;
      
      public static var §0n§:String = "";
      
      public static var §1!6§:int = 0;
       
      
      private var §5s§:URLLoader;
      
      private var §0x§:§,G§;
      
      private var §8l§:Boolean = false;
      
      public function §#w§(param1:Object, param2:String, param3:§,G§, param4:String)
      {
         super();
         var _loc5_:Date;
         var _loc6_:int = (_loc5_ = new Date()).hours * 60 + _loc5_.minutes;
         §1!6§ = _loc6_;
         this.§5s§ = new §1!E§();
         this.§0x§ = param3;
         var _loc7_:URLRequest;
         (_loc7_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§5s§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §=!'§:
               _loc7_.contentType = "application/json";
               _loc7_.data = §^!5§.encode(param1);
               break;
            case § n§:
               _loc7_.data = this.§[0§(param1);
         }
         this.§5s§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§5s§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§>4§);
         this.§5s§.addEventListener(IOErrorEvent.IO_ERROR,this.§?!3§);
         _loc7_.url = param2;
         this.§8l§ = false;
         this.§5s§.load(_loc7_);
      }
      
      public static function §&2§(param1:String) : String
      {
         var _loc2_:String = §#w§.§0`§;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = §0e§.§ G§(param1.substring(_loc3_) + _loc2_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function §%0§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §&!?§.length)
         {
            if(§&!?§[_loc2_] == param1)
            {
               if(§&!?§[_loc2_] != §0n§)
               {
                  §0n§ = §&!?§[_loc2_];
               }
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §"n§() : int
      {
         return §%0§(§0n§);
      }
      
      private static function §?k§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public function get §"4§() : Boolean
      {
         return this.§8l§;
      }
      
      private function §;!C§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§0x§.onComplete(param1);
         this.§8l§ = true;
         this.removeEventListeners();
      }
      
      private function §>4§(param1:HTTPStatusEvent) : void
      {
         this.§0x§.§>4§(param1);
      }
      
      private function §?!3§(param1:IOErrorEvent) : void
      {
         this.§0x§.§?!3§(param1);
         this.removeEventListeners();
      }
      
      public function get §0!=§() : URLLoader
      {
         return this.§5s§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§5s§)
         {
            this.§5s§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§>4§);
            this.§5s§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§5s§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?!3§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§5s§)
         {
            this.§5s§.close();
            this.§5s§ = null;
         }
         if(this.§0x§)
         {
            this.§0x§ = null;
         }
      }
      
      private function §[0§(param1:Object) : URLVariables
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
