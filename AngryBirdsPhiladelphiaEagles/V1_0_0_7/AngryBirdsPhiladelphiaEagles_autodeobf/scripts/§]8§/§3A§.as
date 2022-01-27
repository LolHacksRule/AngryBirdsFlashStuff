package §]8§
{
   import §!6§.§3!5§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §3A§ extends §04§
   {
       
      
      private var §`9§:Vector.<URLLoader>;
      
      public function §3A§(param1:String, param2:Number)
      {
         this.§`9§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§6v§.§+V§ == "Google")
         {
            _loc3_ = new URLRequest(§1,§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§false§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§7X§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§0w§);
            _loc4_.load(_loc3_);
            this.§`9§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§1,§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§false§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§7X§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§0w§);
            _loc4_.load(_loc3_);
            this.§`9§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §=V§();
         this.§<!O§();
      }
      
      private function §<!O§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§`9§)
         {
            this.§4!,§(_loc1_);
            this.§[G§(_loc1_);
         }
         this.§`9§ = new Vector.<URLLoader>();
      }
      
      private function §false§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §7X§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§4!,§(param1.target as URLLoader);
         this.§[G§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §3!5§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §@u§(§8L§.§'?§((param1.target as URLLoader).data));
      }
      
      private function §0w§(param1:IOErrorEvent) : void
      {
         this.§4!,§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§[G§(param1.target as URLLoader);
         §3!5§.log((param1.target as URLLoader).data);
         §3!5§.log("[HTTPConnection] ioError: " + param1.text);
         §3!7§(§8L§.§'?§(_loc2_));
      }
      
      private function §4!,§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§7X§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§0w§);
      }
      
      private function §[G§(param1:URLLoader) : void
      {
         if(this.§`9§.indexOf(param1) > -1)
         {
            this.§`9§.splice(this.§`9§.indexOf(param1),1);
         }
      }
   }
}
