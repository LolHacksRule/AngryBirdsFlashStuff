package §`"!§
{
   import §""<§.§#N§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §"!-§ extends §"!V§
   {
       
      
      private var §@[§:Vector.<URLLoader>;
      
      public function §"!-§(param1:String, param2:Number)
      {
         this.§@[§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§<t§.§`w§ == "Google")
         {
            _loc3_ = new URLRequest(§="9§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§`"A§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>!T§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5"9§);
            _loc4_.load(_loc3_);
            this.§@[§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§="9§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§`"A§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>!T§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§5"9§);
            _loc4_.load(_loc3_);
            this.§@[§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §=#§();
         this.§ var§();
      }
      
      private function § var§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§@[§)
         {
            this.§!6§(_loc1_);
            this.§`!A§(_loc1_);
         }
         this.§@[§ = new Vector.<URLLoader>();
      }
      
      private function §`"A§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §>!T§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§!6§(param1.target as URLLoader);
         this.§`!A§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §#N§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §6"F§(§1!K§.§'_§((param1.target as URLLoader).data));
      }
      
      private function §5"9§(param1:IOErrorEvent) : void
      {
         this.§!6§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§`!A§(param1.target as URLLoader);
         §#N§.log((param1.target as URLLoader).data);
         §#N§.log("[HTTPConnection] ioError: " + param1.text);
         §"'§(§1!K§.§'_§(_loc2_));
      }
      
      private function §!6§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§>!T§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"9§);
      }
      
      private function §`!A§(param1:URLLoader) : void
      {
         if(this.§@[§.indexOf(param1) > -1)
         {
            this.§@[§.splice(this.§@[§.indexOf(param1),1);
         }
      }
   }
}
