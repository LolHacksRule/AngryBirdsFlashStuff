package §;$§
{
   import §&!b§.§ c§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §^Y§ extends § use§
   {
       
      
      private var §]!H§:Vector.<URLLoader>;
      
      public function §^Y§(param1:String, param2:Number)
      {
         this.§]!H§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§0M§.§`3§ == "Google")
         {
            _loc3_ = new URLRequest(§^9§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§<D§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§]!Z§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>!6§);
            _loc4_.load(_loc3_);
            this.§]!H§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§^9§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§<D§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§]!Z§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>!6§);
            _loc4_.load(_loc3_);
            this.§]!H§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         § !>§();
         this.§6u§();
      }
      
      private function §6u§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§]!H§)
         {
            this.§67§(_loc1_);
            this.§<R§(_loc1_);
         }
         this.§]!H§ = new Vector.<URLLoader>();
      }
      
      private function §<D§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §]!Z§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§67§(param1.target as URLLoader);
         this.§<R§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            § c§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §@!,§(§@l§.§7j§((param1.target as URLLoader).data));
      }
      
      private function §>!6§(param1:IOErrorEvent) : void
      {
         this.§67§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§<R§(param1.target as URLLoader);
         § c§.log((param1.target as URLLoader).data);
         § c§.log("[HTTPConnection] ioError: " + param1.text);
         §6!M§(§@l§.§7j§(_loc2_));
      }
      
      private function §67§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§]!Z§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!6§);
      }
      
      private function §<R§(param1:URLLoader) : void
      {
         if(this.§]!H§.indexOf(param1) > -1)
         {
            this.§]!H§.splice(this.§]!H§.indexOf(param1),1);
         }
      }
   }
}
