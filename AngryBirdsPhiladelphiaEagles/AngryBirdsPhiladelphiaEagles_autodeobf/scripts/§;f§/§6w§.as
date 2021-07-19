package §;f§
{
   import §`K§.§ L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §6w§ extends §00§
   {
       
      
      private var §^!N§:Vector.<URLLoader>;
      
      public function §6w§(param1:String, param2:Number)
      {
         this.§^!N§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§7P§.§7v§ == "Google")
         {
            _loc3_ = new URLRequest(§`P§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§5w§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§0!!§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
            _loc4_.load(_loc3_);
            this.§^!N§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§`P§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§5w§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§0!!§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
            _loc4_.load(_loc3_);
            this.§^!N§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §`h§();
         this.§9u§();
      }
      
      private function §9u§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§^!N§)
         {
            this.§3e§(_loc1_);
            this.§!!'§(_loc1_);
         }
         this.§^!N§ = new Vector.<URLLoader>();
      }
      
      private function §5w§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §0!!§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§3e§(param1.target as URLLoader);
         this.§!!'§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            § L§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §#?§(§=!<§.§]D§((param1.target as URLLoader).data));
      }
      
      private function §'r§(param1:IOErrorEvent) : void
      {
         this.§3e§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§!!'§(param1.target as URLLoader);
         § L§.log((param1.target as URLLoader).data);
         § L§.log("[HTTPConnection] ioError: " + param1.text);
         §>!D§(§=!<§.§]D§(_loc2_));
      }
      
      private function §3e§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§0!!§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'r§);
      }
      
      private function §!!'§(param1:URLLoader) : void
      {
         if(this.§^!N§.indexOf(param1) > -1)
         {
            this.§^!N§.splice(this.§^!N§.indexOf(param1),1);
         }
      }
   }
}
