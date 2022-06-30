package §;c§
{
   import §1!K§.§>!<§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §-3§ extends §6-§
   {
       
      
      private var §>x§:Vector.<URLLoader>;
      
      public function §-3§(param1:String, param2:Number)
      {
         this.§>x§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§[!T§.§25§ == "Google")
         {
            _loc3_ = new URLRequest(§='§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+g§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§9l§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<!3§);
            _loc4_.load(_loc3_);
            this.§>x§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§='§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+g§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§9l§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<!3§);
            _loc4_.load(_loc3_);
            this.§>x§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §8!M§();
         this.§<q§();
      }
      
      private function §<q§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§>x§)
         {
            this.§+u§(_loc1_);
            this.§6x§(_loc1_);
         }
         this.§>x§ = new Vector.<URLLoader>();
      }
      
      private function §+g§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §9l§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§+u§(param1.target as URLLoader);
         this.§6x§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §>!<§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §+!2§(§%D§.§<!_§((param1.target as URLLoader).data));
      }
      
      private function §<!3§(param1:IOErrorEvent) : void
      {
         this.§+u§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§6x§(param1.target as URLLoader);
         §>!<§.log((param1.target as URLLoader).data);
         §>!<§.log("[HTTPConnection] ioError: " + param1.text);
         §@t§(§%D§.§<!_§(_loc2_));
      }
      
      private function §+u§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§9l§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§<!3§);
      }
      
      private function §6x§(param1:URLLoader) : void
      {
         if(this.§>x§.indexOf(param1) > -1)
         {
            this.§>x§.splice(this.§>x§.indexOf(param1),1);
         }
      }
   }
}
