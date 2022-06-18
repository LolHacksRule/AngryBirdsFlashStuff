package §#=§
{
   import §3v§.§1a§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §6V§ extends §%!3§
   {
       
      
      private var §3H§:Vector.<URLLoader>;
      
      public function §6V§(param1:String, param2:Number)
      {
         this.§3H§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§<!C§.§3!;§ == "Google")
         {
            _loc3_ = new URLRequest(§1$§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3M§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+@§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§3H§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§1$§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3M§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§+@§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            _loc4_.load(_loc3_);
            this.§3H§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §5!9§();
         this.§=q§();
      }
      
      private function §=q§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§3H§)
         {
            this.§]K§(_loc1_);
            this.§8K§(_loc1_);
         }
         this.§3H§ = new Vector.<URLLoader>();
      }
      
      private function §3M§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §+@§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§]K§(param1.target as URLLoader);
         this.§8K§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §1a§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §!!1§(§,E§.§+L§((param1.target as URLLoader).data));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         this.§]K§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§8K§(param1.target as URLLoader);
         §1a§.log((param1.target as URLLoader).data);
         §1a§.log("[HTTPConnection] ioError: " + param1.text);
         §0! §(§,E§.§+L§(_loc2_));
      }
      
      private function §]K§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§+@§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
      }
      
      private function §8K§(param1:URLLoader) : void
      {
         if(this.§3H§.indexOf(param1) > -1)
         {
            this.§3H§.splice(this.§3H§.indexOf(param1),1);
         }
      }
   }
}
