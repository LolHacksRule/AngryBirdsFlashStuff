package §+?§
{
   import §+!"§.§5!<§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §3!<§ extends §2V§
   {
       
      
      private var § 7§:Vector.<URLLoader>;
      
      public function §3!<§(param1:String, param2:Number)
      {
         this.§ 7§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§03§.§]7§ == "Google")
         {
            _loc3_ = new URLRequest(§'y§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+@§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§",§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§ 7§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§'y§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+@§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§",§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§ 7§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §,M§();
         this.§>u§();
      }
      
      private function §>u§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§ 7§)
         {
            this.§3!#§(_loc1_);
            this.§<K§(_loc1_);
         }
         this.§ 7§ = new Vector.<URLLoader>();
      }
      
      private function §+@§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §",§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§3!#§(param1.target as URLLoader);
         this.§<K§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §5!<§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         § !"§(§ 3§.§&x§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§3!#§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§<K§(param1.target as URLLoader);
         §5!<§.log((param1.target as URLLoader).data);
         §5!<§.log("[HTTPConnection] ioError: " + param1.text);
         §8=§(§ 3§.§&x§(_loc2_));
      }
      
      private function §3!#§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§",§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §<K§(param1:URLLoader) : void
      {
         if(this.§ 7§.indexOf(param1) > -1)
         {
            this.§ 7§.splice(this.§ 7§.indexOf(param1),1);
         }
      }
   }
}
