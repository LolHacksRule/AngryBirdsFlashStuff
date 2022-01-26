package §%!1§
{
   import §-!6§.§>I§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §`!&§ extends §3V§
   {
       
      
      private var §?m§:Vector.<URLLoader>;
      
      public function §`!&§(param1:String, param2:Number)
      {
         this.§?m§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§%E§.§class§ == "Google")
         {
            _loc3_ = new URLRequest(§,O§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§;E§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>[§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§?m§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§,O§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§;E§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>[§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§?m§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §<a§();
         this.§3!#§();
      }
      
      private function §3!#§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§?m§)
         {
            this.§`![§(_loc1_);
            this.§8`§(_loc1_);
         }
         this.§?m§ = new Vector.<URLLoader>();
      }
      
      private function §;E§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §>[§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§`![§(param1.target as URLLoader);
         this.§8`§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §>I§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §[z§(§9!"§.§^e§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§`![§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§8`§(param1.target as URLLoader);
         §>I§.log((param1.target as URLLoader).data);
         §>I§.log("[HTTPConnection] ioError: " + param1.text);
         §'W§(§9!"§.§^e§(_loc2_));
      }
      
      private function §`![§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§>[§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §8`§(param1:URLLoader) : void
      {
         if(this.§?m§.indexOf(param1) > -1)
         {
            this.§?m§.splice(this.§?m§.indexOf(param1),1);
         }
      }
   }
}
