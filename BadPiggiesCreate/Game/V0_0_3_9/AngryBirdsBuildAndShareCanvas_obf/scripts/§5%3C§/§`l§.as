package §5<§
{
   import §@!;§.§&F§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §`l§ extends §+T§
   {
       
      
      private var §&!v§:Vector.<URLLoader>;
      
      public function §`l§(param1:String, param2:Number)
      {
         this.§&!v§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§6",§.§8"%§ == "Google")
         {
            _loc3_ = new URLRequest(§!"-§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§`!4§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§,"7§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<%§);
            _loc4_.load(_loc3_);
            this.§&!v§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§!"-§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§`!4§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§,"7§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§<%§);
            _loc4_.load(_loc3_);
            this.§&!v§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §!B§();
         this.§0!"§();
      }
      
      private function §0!"§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§&!v§)
         {
            this.§]7§(_loc1_);
            this.§"!2§(_loc1_);
         }
         this.§&!v§ = new Vector.<URLLoader>();
      }
      
      private function §`!4§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §,"7§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§]7§(param1.target as URLLoader);
         this.§"!2§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §&F§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §^!T§(§]!n§.§'!C§((param1.target as URLLoader).data));
      }
      
      private function §<%§(param1:IOErrorEvent) : void
      {
         this.§]7§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§"!2§(param1.target as URLLoader);
         §&F§.log((param1.target as URLLoader).data);
         §&F§.log("[HTTPConnection] ioError: " + param1.text);
         §!!2§(§]!n§.§'!C§(_loc2_));
      }
      
      private function §]7§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§,"7§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§<%§);
      }
      
      private function §"!2§(param1:URLLoader) : void
      {
         if(this.§&!v§.indexOf(param1) > -1)
         {
            this.§&!v§.splice(this.§&!v§.indexOf(param1),1);
         }
      }
   }
}
