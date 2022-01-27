package §^!#§
{
   import §%!$§.§[Z§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §&E§ extends §6h§
   {
       
      
      private var §?p§:Vector.<URLLoader>;
      
      public function §&E§(param1:String, param2:Number)
      {
         this.§?p§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§9!!§.§3!5§ == "Google")
         {
            _loc3_ = new URLRequest(§%!J§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§@l§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@>§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<!L§);
            _loc4_.load(_loc3_);
            this.§?p§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§%!J§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§@l§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@>§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<!L§);
            _loc4_.load(_loc3_);
            this.§?p§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §%!K§();
         this.§`z§();
      }
      
      private function §`z§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§?p§)
         {
            this.§9w§(_loc1_);
            this.§8!Y§(_loc1_);
         }
         this.§?p§ = new Vector.<URLLoader>();
      }
      
      private function §@l§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §@>§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§9w§(param1.target as URLLoader);
         this.§8!Y§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §[Z§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §]1§(§3&§.§1!%§((param1.target as URLLoader).data));
      }
      
      private function §<!L§(param1:IOErrorEvent) : void
      {
         this.§9w§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§8!Y§(param1.target as URLLoader);
         §[Z§.log((param1.target as URLLoader).data);
         §[Z§.log("[HTTPConnection] ioError: " + param1.text);
         §3!J§(§3&§.§1!%§(_loc2_));
      }
      
      private function §9w§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§@>§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§<!L§);
      }
      
      private function §8!Y§(param1:URLLoader) : void
      {
         if(this.§?p§.indexOf(param1) > -1)
         {
            this.§?p§.splice(this.§?p§.indexOf(param1),1);
         }
      }
   }
}
