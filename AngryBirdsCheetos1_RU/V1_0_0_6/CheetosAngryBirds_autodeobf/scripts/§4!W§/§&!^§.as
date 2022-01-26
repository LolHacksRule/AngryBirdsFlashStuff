package §4!W§
{
   import §'D§.§8e§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §&!^§ extends §?!S§
   {
       
      
      private var §7m§:Vector.<URLLoader>;
      
      public function §&!^§(param1:String, param2:Number)
      {
         this.§7m§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§]H§.§[!!§ == "Google")
         {
            _loc3_ = new URLRequest(§@;§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§@q§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§%!S§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§7m§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§@;§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§@q§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§%!S§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§7m§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §;!R§();
         this.§!'§();
      }
      
      private function §!'§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§7m§)
         {
            this.§6!N§(_loc1_);
            this.§;>§(_loc1_);
         }
         this.§7m§ = new Vector.<URLLoader>();
      }
      
      private function §@q§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §%!S§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§6!N§(param1.target as URLLoader);
         this.§;>§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §8e§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §0V§(§!;§.§[!Q§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§6!N§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§;>§(param1.target as URLLoader);
         §8e§.log((param1.target as URLLoader).data);
         §8e§.log("[HTTPConnection] ioError: " + param1.text);
         §+o§(§!;§.§[!Q§(_loc2_));
      }
      
      private function §6!N§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§%!S§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §;>§(param1:URLLoader) : void
      {
         if(this.§7m§.indexOf(param1) > -1)
         {
            this.§7m§.splice(this.§7m§.indexOf(param1),1);
         }
      }
   }
}
