package §3"%§
{
   import §"I§.§=!U§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §[u§ extends §7!=§
   {
       
      
      private var §<i§:Vector.<URLLoader>;
      
      public function §[u§(param1:String, param2:Number)
      {
         this.§<i§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§>K§.§@9§ == "Google")
         {
            _loc3_ = new URLRequest(§?!;§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§7A§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§1!Y§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§&!`§);
            _loc4_.load(_loc3_);
            this.§<i§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§?!;§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§7A§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§1!Y§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§&!`§);
            _loc4_.load(_loc3_);
            this.§<i§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §,U§();
         this.§!r§();
      }
      
      private function §!r§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§<i§)
         {
            this.§>!;§(_loc1_);
            this.§[<§(_loc1_);
         }
         this.§<i§ = new Vector.<URLLoader>();
      }
      
      private function §7A§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §1!Y§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§>!;§(param1.target as URLLoader);
         this.§[<§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §=!U§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §@`§(§<!,§.§;U§((param1.target as URLLoader).data));
      }
      
      private function §&!`§(param1:IOErrorEvent) : void
      {
         this.§>!;§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§[<§(param1.target as URLLoader);
         §=!U§.log((param1.target as URLLoader).data);
         §=!U§.log("[HTTPConnection] ioError: " + param1.text);
         §[g§(§<!,§.§;U§(_loc2_));
      }
      
      private function §>!;§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§1!Y§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§&!`§);
      }
      
      private function §[<§(param1:URLLoader) : void
      {
         if(this.§<i§.indexOf(param1) > -1)
         {
            this.§<i§.splice(this.§<i§.indexOf(param1),1);
         }
      }
   }
}
