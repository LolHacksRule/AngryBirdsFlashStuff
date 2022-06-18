package § $%§
{
   import §<"p§.§?!T§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §+#k§ extends §##m§
   {
       
      
      private var §&#q§:Vector.<URLLoader>;
      
      public function §+#k§(param1:String, param2:Number)
      {
         this.§&#q§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§ $7§.§!$4§ == "Google")
         {
            _loc3_ = new URLRequest(§2J§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!"#§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§<#§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
            _loc4_.load(_loc3_);
            this.§&#q§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§2J§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§!"#§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§<#§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
            _loc4_.load(_loc3_);
            this.§&#q§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §&#>§();
         this.§>!p§();
      }
      
      private function §>!p§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§&#q§)
         {
            this.§0"f§(_loc1_);
            this.§2#D§(_loc1_);
         }
         this.§&#q§ = new Vector.<URLLoader>();
      }
      
      private function §!"#§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §<#§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§0"f§(param1.target as URLLoader);
         this.§2#D§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §?!T§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §["o§(§&J§.§3"N§((param1.target as URLLoader).data));
      }
      
      private function §3"`§(param1:IOErrorEvent) : void
      {
         this.§0"f§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§2#D§(param1.target as URLLoader);
         §?!T§.log((param1.target as URLLoader).data);
         §?!T§.log("[HTTPConnection] ioError: " + param1.text);
         §=!§(§&J§.§3"N§(_loc2_));
      }
      
      private function §0"f§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§<#§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
      }
      
      private function §2#D§(param1:URLLoader) : void
      {
         if(this.§&#q§.indexOf(param1) > -1)
         {
            this.§&#q§.splice(this.§&#q§.indexOf(param1),1);
         }
      }
   }
}
