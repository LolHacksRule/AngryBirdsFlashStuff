package §9U§
{
   import §^!&§.§;C§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §<!?§ extends §4!K§
   {
       
      
      private var §39§:Vector.<URLLoader>;
      
      public function §<!?§(param1:String, param2:Number)
      {
         this.§39§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§]!W§.§["§ == "Google")
         {
            _loc3_ = new URLRequest(§-v§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§5j§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@N§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§39§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§-v§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§5j§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@N§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§39§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §4A§();
         this.§[!"§();
      }
      
      private function §[!"§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§39§)
         {
            this.§`!!§(_loc1_);
            this.§<t§(_loc1_);
         }
         this.§39§ = new Vector.<URLLoader>();
      }
      
      private function §5j§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §@N§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§`!!§(param1.target as URLLoader);
         this.§<t§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §;C§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §@1§(§4!H§.§?W§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§`!!§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§<t§(param1.target as URLLoader);
         §;C§.log((param1.target as URLLoader).data);
         §;C§.log("[HTTPConnection] ioError: " + param1.text);
         §&!G§(§4!H§.§?W§(_loc2_));
      }
      
      private function §`!!§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§@N§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §<t§(param1:URLLoader) : void
      {
         if(this.§39§.indexOf(param1) > -1)
         {
            this.§39§.splice(this.§39§.indexOf(param1),1);
         }
      }
   }
}
