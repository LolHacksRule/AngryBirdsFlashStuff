package § !Z§
{
   import §8<§.§<!7§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §^5§ extends §0q§
   {
       
      
      private var §;!G§:Vector.<URLLoader>;
      
      public function §^5§(param1:String, param2:Number)
      {
         this.§;!G§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§0V§.§^!>§ == "Google")
         {
            _loc3_ = new URLRequest(§^H§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§[!a§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§3h§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§&M§);
            _loc4_.load(_loc3_);
            this.§;!G§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§^H§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§[!a§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§3h§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§&M§);
            _loc4_.load(_loc3_);
            this.§;!G§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §-]§();
         this.§[^§();
      }
      
      private function §[^§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§;!G§)
         {
            this.§,>§(_loc1_);
            this.§=!E§(_loc1_);
         }
         this.§;!G§ = new Vector.<URLLoader>();
      }
      
      private function §[!a§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §3h§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§,>§(param1.target as URLLoader);
         this.§=!E§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §<!7§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §?m§(§5!g§.§`F§((param1.target as URLLoader).data));
      }
      
      private function §&M§(param1:IOErrorEvent) : void
      {
         this.§,>§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§=!E§(param1.target as URLLoader);
         §<!7§.log((param1.target as URLLoader).data);
         §<!7§.log("[HTTPConnection] ioError: " + param1.text);
         §"!M§(§5!g§.§`F§(_loc2_));
      }
      
      private function §,>§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§3h§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§&M§);
      }
      
      private function §=!E§(param1:URLLoader) : void
      {
         if(this.§;!G§.indexOf(param1) > -1)
         {
            this.§;!G§.splice(this.§;!G§.indexOf(param1),1);
         }
      }
   }
}
