package §^!m§
{
   import §6]§.§,"0§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §else § extends §5+§
   {
       
      
      private var §@!,§:Vector.<URLLoader>;
      
      public function §else §(param1:String, param2:Number)
      {
         this.§@!,§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§6§.§&!2§ == "Google")
         {
            _loc3_ = new URLRequest(§8"&§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§7`§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§<n§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.set);
            _loc4_.load(_loc3_);
            this.§@!,§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§8"&§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§7`§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§<n§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.set);
            _loc4_.load(_loc3_);
            this.§@!,§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §5!K§();
         this.§>G§();
      }
      
      private function §>G§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§@!,§)
         {
            this.§1!7§(_loc1_);
            this.§9!d§(_loc1_);
         }
         this.§@!,§ = new Vector.<URLLoader>();
      }
      
      private function §7`§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §<n§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§1!7§(param1.target as URLLoader);
         this.§9!d§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §,"0§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §each §(§3! §.§ #§((param1.target as URLLoader).data));
      }
      
      private function set(param1:IOErrorEvent) : void
      {
         this.§1!7§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§9!d§(param1.target as URLLoader);
         §,"0§.log((param1.target as URLLoader).data);
         §,"0§.log("[HTTPConnection] ioError: " + param1.text);
         §'y§(§3! §.§ #§(_loc2_));
      }
      
      private function §1!7§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§<n§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.set);
      }
      
      private function §9!d§(param1:URLLoader) : void
      {
         if(this.§@!,§.indexOf(param1) > -1)
         {
            this.§@!,§.splice(this.§@!,§.indexOf(param1),1);
         }
      }
   }
}
