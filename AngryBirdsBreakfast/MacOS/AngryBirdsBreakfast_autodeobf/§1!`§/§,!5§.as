package §1!`§
{
   import each.§!!'§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §,!5§ extends § !a§
   {
       
      
      private var §=!'§:Vector.<URLLoader>;
      
      public function §,!5§(param1:String, param2:Number)
      {
         this.§=!'§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§8!s§.§3!t§ == "Google")
         {
            _loc3_ = new URLRequest(§=U§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§<!H§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§!F§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
            _loc4_.load(_loc3_);
            this.§=!'§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§=U§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§<!H§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§!F§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
            _loc4_.load(_loc3_);
            this.§=!'§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §4f§();
         this.§+!l§();
      }
      
      private function §+!l§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§=!'§)
         {
            this.§"!m§(_loc1_);
            this.§<;§(_loc1_);
         }
         this.§=!'§ = new Vector.<URLLoader>();
      }
      
      private function §<!H§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §!F§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§"!m§(param1.target as URLLoader);
         this.§<;§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §!!'§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §!8§(§#i§.§>"$§((param1.target as URLLoader).data));
      }
      
      private function §=o§(param1:IOErrorEvent) : void
      {
         this.§"!m§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§<;§(param1.target as URLLoader);
         §!!'§.log((param1.target as URLLoader).data);
         §!!'§.log("[HTTPConnection] ioError: " + param1.text);
         §7[§(§#i§.§>"$§(_loc2_));
      }
      
      private function §"!m§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§!F§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
      }
      
      private function §<;§(param1:URLLoader) : void
      {
         if(this.§=!'§.indexOf(param1) > -1)
         {
            this.§=!'§.splice(this.§=!'§.indexOf(param1),1);
         }
      }
   }
}
