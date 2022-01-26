package §#!2§
{
   import §'m§.§^S§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §-!C§ extends §]9§
   {
       
      
      private var §5b§:Vector.<URLLoader>;
      
      public function §-!C§(param1:String, param2:Number)
      {
         this.§5b§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§0T§.§]!>§ == "Google")
         {
            _loc3_ = new URLRequest(§0!@§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3$§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+Q§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§5b§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§0!@§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3$§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+Q§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§5b§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §'9§();
         this.§,=§();
      }
      
      private function §,=§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§5b§)
         {
            this.§6g§(_loc1_);
            this.§9!#§(_loc1_);
         }
         this.§5b§ = new Vector.<URLLoader>();
      }
      
      private function §3$§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §+Q§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§6g§(param1.target as URLLoader);
         this.§9!#§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §^S§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §74§(§3!-§.§"'§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§6g§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§9!#§(param1.target as URLLoader);
         §^S§.log((param1.target as URLLoader).data);
         §^S§.log("[HTTPConnection] ioError: " + param1.text);
         §8f§(§3!-§.§"'§(_loc2_));
      }
      
      private function §6g§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§+Q§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §9!#§(param1:URLLoader) : void
      {
         if(this.§5b§.indexOf(param1) > -1)
         {
            this.§5b§.splice(this.§5b§.indexOf(param1),1);
         }
      }
   }
}
