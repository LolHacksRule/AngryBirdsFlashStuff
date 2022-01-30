package §&M§
{
   import §0!$§.§#!-§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §;+§ extends §'!0§
   {
       
      
      private var § !b§:Vector.<URLLoader>;
      
      public function §;+§(param1:String, param2:Number)
      {
         this.§ !b§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§^!A§.§`g§ == "Google")
         {
            _loc3_ = new URLRequest(§`#§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§56§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§throw§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§0C§);
            _loc4_.load(_loc3_);
            this.§ !b§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§`#§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§56§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§throw§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§0C§);
            _loc4_.load(_loc3_);
            this.§ !b§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §+[§();
         this.§+@§();
      }
      
      private function §+@§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§ !b§)
         {
            this.§+!o§(_loc1_);
            this.§-!K§(_loc1_);
         }
         this.§ !b§ = new Vector.<URLLoader>();
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
      
      private function §throw§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§+!o§(param1.target as URLLoader);
         this.§-!K§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §#!-§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §''§(§`!7§.§+!K§((param1.target as URLLoader).data));
      }
      
      private function §0C§(param1:IOErrorEvent) : void
      {
         this.§+!o§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§-!K§(param1.target as URLLoader);
         §#!-§.log((param1.target as URLLoader).data);
         §#!-§.log("[HTTPConnection] ioError: " + param1.text);
         § h§(§`!7§.§+!K§(_loc2_));
      }
      
      private function §+!o§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§throw§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§0C§);
      }
      
      private function §-!K§(param1:URLLoader) : void
      {
         if(this.§ !b§.indexOf(param1) > -1)
         {
            this.§ !b§.splice(this.§ !b§.indexOf(param1),1);
         }
      }
   }
}
