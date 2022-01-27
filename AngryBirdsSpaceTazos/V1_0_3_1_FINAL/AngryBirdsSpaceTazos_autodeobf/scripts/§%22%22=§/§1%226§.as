package §""=§
{
   import §6!C§.§6E§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §1"6§ extends §=I§
   {
       
      
      private var §7!5§:Vector.<URLLoader>;
      
      public function §1"6§(param1:String, param2:Number)
      {
         this.§7!5§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§&!M§.§'!!§ == "Google")
         {
            _loc3_ = new URLRequest(§1"7§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3!t§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§ X§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§1x§);
            _loc4_.load(_loc3_);
            this.§7!5§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§1"7§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§3!t§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§ X§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§1x§);
            _loc4_.load(_loc3_);
            this.§7!5§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §`!;§();
         this.§%Q§();
      }
      
      private function §%Q§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§7!5§)
         {
            this.§]U§(_loc1_);
            this.§+!=§(_loc1_);
         }
         this.§7!5§ = new Vector.<URLLoader>();
      }
      
      private function §3!t§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function § X§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§]U§(param1.target as URLLoader);
         this.§+!=§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §6E§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §@@§(§`!U§.§@<§((param1.target as URLLoader).data));
      }
      
      private function §1x§(param1:IOErrorEvent) : void
      {
         this.§]U§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§+!=§(param1.target as URLLoader);
         §6E§.log((param1.target as URLLoader).data);
         §6E§.log("[HTTPConnection] ioError: " + param1.text);
         §>N§(§`!U§.§@<§(_loc2_));
      }
      
      private function §]U§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§ X§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§1x§);
      }
      
      private function §+!=§(param1:URLLoader) : void
      {
         if(this.§7!5§.indexOf(param1) > -1)
         {
            this.§7!5§.splice(this.§7!5§.indexOf(param1),1);
         }
      }
   }
}
