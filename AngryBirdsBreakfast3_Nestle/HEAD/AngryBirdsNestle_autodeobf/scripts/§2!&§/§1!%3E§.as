package §2!&§
{
   import §24§.;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §1!>§ extends §<!B§
   {
       
      
      private var §?!n§:Vector.<URLLoader>;
      
      public function §1!>§(param1:String, param2:Number)
      {
         this.§?!n§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§+h§.§-z§ == "Google")
         {
            _loc3_ = new URLRequest(§8!=§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§6!P§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§ s§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
            _loc4_.load(_loc3_);
            this.§?!n§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§8!=§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§6!P§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§ s§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
            _loc4_.load(_loc3_);
            this.§?!n§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §&"1§();
         this.§7b§();
      }
      
      private function §7b§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§?!n§)
         {
            this.§+!K§(_loc1_);
            this.§=T§(_loc1_);
         }
         this.§?!n§ = new Vector.<URLLoader>();
      }
      
      private function §6!P§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function § s§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§+!K§(param1.target as URLLoader);
         this.§=T§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §#7§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §=!#§(§`!+§.§^!`§((param1.target as URLLoader).data));
      }
      
      private function §'![§(param1:IOErrorEvent) : void
      {
         this.§+!K§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§=T§(param1.target as URLLoader);
         §#7§.log((param1.target as URLLoader).data);
         §#7§.log("[HTTPConnection] ioError: " + param1.text);
         §4^§(§`!+§.§^!`§(_loc2_));
      }
      
      private function §+!K§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§ s§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'![§);
      }
      
      private function §=T§(param1:URLLoader) : void
      {
         if(this.§?!n§.indexOf(param1) > -1)
         {
            this.§?!n§.splice(this.§?!n§.indexOf(param1),1);
         }
      }
   }
}
