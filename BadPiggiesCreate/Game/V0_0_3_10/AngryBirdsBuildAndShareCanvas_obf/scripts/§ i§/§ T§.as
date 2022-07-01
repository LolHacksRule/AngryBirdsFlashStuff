package § i§
{
   import §9!G§.§]!e§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class § T§ extends §,D§
   {
       
      
      private var §,R§:Vector.<URLLoader>;
      
      public function § T§(param1:String, param2:Number)
      {
         this.§,R§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§'V§.§^!7§ == "Google")
         {
            _loc3_ = new URLRequest(§<L§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+f§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§'!3§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>!y§);
            _loc4_.load(_loc3_);
            this.§,R§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§<L§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§+f§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§'!3§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§>!y§);
            _loc4_.load(_loc3_);
            this.§,R§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §+A§();
         this.§<!5§();
      }
      
      private function §<!5§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§,R§)
         {
            this.§""%§(_loc1_);
            this.§]!W§(_loc1_);
         }
         this.§,R§ = new Vector.<URLLoader>();
      }
      
      private function §+f§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §'!3§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§""%§(param1.target as URLLoader);
         this.§]!W§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §]!e§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §&!-§(§=Y§.§=o§((param1.target as URLLoader).data));
      }
      
      private function §>!y§(param1:IOErrorEvent) : void
      {
         this.§""%§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§]!W§(param1.target as URLLoader);
         §]!e§.log((param1.target as URLLoader).data);
         §]!e§.log("[HTTPConnection] ioError: " + param1.text);
         §!"§(§=Y§.§=o§(_loc2_));
      }
      
      private function §""%§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§'!3§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!y§);
      }
      
      private function §]!W§(param1:URLLoader) : void
      {
         if(this.§,R§.indexOf(param1) > -1)
         {
            this.§,R§.splice(this.§,R§.indexOf(param1),1);
         }
      }
   }
}
