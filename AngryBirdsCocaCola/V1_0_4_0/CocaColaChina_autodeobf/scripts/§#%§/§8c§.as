package §#%§
{
   import §'!G§.§1C§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §8c§ extends § V§
   {
       
      
      private var §6Y§:Vector.<URLLoader>;
      
      public function §8c§(param1:String, param2:Number)
      {
         this.§6Y§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§0!K§.§@a§ == "Google")
         {
            _loc3_ = new URLRequest(§;!F§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§[z§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§"!$§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
            _loc4_.load(_loc3_);
            this.§6Y§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§;!F§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§[z§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§"!$§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
            _loc4_.load(_loc3_);
            this.§6Y§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §44§();
         this.§'!O§();
      }
      
      private function §'!O§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§6Y§)
         {
            this.§ >§(_loc1_);
            this.§'W§(_loc1_);
         }
         this.§6Y§ = new Vector.<URLLoader>();
      }
      
      private function §[z§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §"!$§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§ >§(param1.target as URLLoader);
         this.§'W§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §1C§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §^i§(§&!T§.§6!O§((param1.target as URLLoader).data));
      }
      
      private function §;n§(param1:IOErrorEvent) : void
      {
         this.§ >§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§'W§(param1.target as URLLoader);
         §1C§.log((param1.target as URLLoader).data);
         §1C§.log("[HTTPConnection] ioError: " + param1.text);
         §#f§(§&!T§.§6!O§(_loc2_));
      }
      
      private function § >§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§"!$§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§;n§);
      }
      
      private function §'W§(param1:URLLoader) : void
      {
         if(this.§6Y§.indexOf(param1) > -1)
         {
            this.§6Y§.splice(this.§6Y§.indexOf(param1),1);
         }
      }
   }
}
