package §`y§
{
   import §!4§.§=!Z§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §0!5§ extends §>!T§
   {
       
      
      private var §07§:Vector.<URLLoader>;
      
      public function §0!5§(param1:String, param2:Number)
      {
         this.§07§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§4!T§.§&>§ == "Google")
         {
            _loc3_ = new URLRequest(§-a§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§8!3§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§ ?§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§07§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§-a§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§8!3§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§ ?§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§07§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §%<§();
         this.§<!W§();
      }
      
      private function §<!W§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§07§)
         {
            this.§9!_§(_loc1_);
            this.§ ![§(_loc1_);
         }
         this.§07§ = new Vector.<URLLoader>();
      }
      
      private function §8!3§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function § ?§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§9!_§(param1.target as URLLoader);
         this.§ ![§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §=!Z§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §0!G§(§>y§.§>!E§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§9!_§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§ ![§(param1.target as URLLoader);
         §=!Z§.log((param1.target as URLLoader).data);
         §=!Z§.log("[HTTPConnection] ioError: " + param1.text);
         §8L§(§>y§.§>!E§(_loc2_));
      }
      
      private function §9!_§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§ ?§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function § ![§(param1:URLLoader) : void
      {
         if(this.§07§.indexOf(param1) > -1)
         {
            this.§07§.splice(this.§07§.indexOf(param1),1);
         }
      }
   }
}
