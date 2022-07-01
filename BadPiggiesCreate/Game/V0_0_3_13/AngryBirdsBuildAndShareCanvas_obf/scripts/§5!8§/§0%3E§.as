package §5!8§
{
   import §&W§.§7L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §0>§ extends §7a§
   {
       
      
      private var §>!H§:Vector.<URLLoader>;
      
      public function §0>§(param1:String, param2:Number)
      {
         this.§>!H§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§1u§.§%!U§ == "Google")
         {
            _loc3_ = new URLRequest(§>!G§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^!z§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§case §);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>z§);
            _loc4_.load(_loc3_);
            this.§>!H§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§>!G§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§^!z§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§case §);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>z§);
            _loc4_.load(_loc3_);
            this.§>!H§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §?!2§();
         this.§,x§();
      }
      
      private function §,x§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§>!H§)
         {
            this.§]!>§(_loc1_);
            this.§]!@§(_loc1_);
         }
         this.§>!H§ = new Vector.<URLLoader>();
      }
      
      private function §^!z§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §case §(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§]!>§(param1.target as URLLoader);
         this.§]!@§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §7L§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §1!'§(§2"0§.§5"!§((param1.target as URLLoader).data));
      }
      
      private function §>z§(param1:IOErrorEvent) : void
      {
         this.§]!>§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§]!@§(param1.target as URLLoader);
         §7L§.log((param1.target as URLLoader).data);
         §7L§.log("[HTTPConnection] ioError: " + param1.text);
         §#L§(§2"0§.§5"!§(_loc2_));
      }
      
      private function §]!>§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§case §);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§>z§);
      }
      
      private function §]!@§(param1:URLLoader) : void
      {
         if(this.§>!H§.indexOf(param1) > -1)
         {
            this.§>!H§.splice(this.§>!H§.indexOf(param1),1);
         }
      }
   }
}
