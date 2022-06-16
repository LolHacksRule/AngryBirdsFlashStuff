package §[!-§
{
   import §[x§.§%3§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §&"'§ extends §?!Z§
   {
       
      
      private var §'!"§:Vector.<URLLoader>;
      
      public function §&"'§(param1:String, param2:Number)
      {
         this.§'!"§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§4-§.§@!6§ == "Google")
         {
            _loc3_ = new URLRequest(§+!=§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§]! §(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>!x§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
            _loc4_.load(_loc3_);
            this.§'!"§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§+!=§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§]! §(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§>!x§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
            _loc4_.load(_loc3_);
            this.§'!"§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §!!;§();
         this.§+s§();
      }
      
      private function §+s§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§'!"§)
         {
            this.§""D§(_loc1_);
            this.§try§(_loc1_);
         }
         this.§'!"§ = new Vector.<URLLoader>();
      }
      
      private function §]! §(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §>!x§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§""D§(param1.target as URLLoader);
         this.§try§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §%3§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §4!'§(§7!%§.§6W§((param1.target as URLLoader).data));
      }
      
      private function §<5§(param1:IOErrorEvent) : void
      {
         this.§""D§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§try§(param1.target as URLLoader);
         §%3§.log((param1.target as URLLoader).data);
         §%3§.log("[HTTPConnection] ioError: " + param1.text);
         §?t§(§7!%§.§6W§(_loc2_));
      }
      
      private function §""D§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§>!x§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
      }
      
      private function §try§(param1:URLLoader) : void
      {
         if(this.§'!"§.indexOf(param1) > -1)
         {
            this.§'!"§.splice(this.§'!"§.indexOf(param1),1);
         }
      }
   }
}
