package §+!Z§
{
   import §6!Q§.§7!7§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §"![§ extends §-W§
   {
       
      
      private var §+E§:Vector.<URLLoader>;
      
      public function §"![§(param1:String, param2:Number)
      {
         this.§+E§ = new Vector.<URLLoader>();
         super(param1,param2);
      }
      
      override public function sendRequest(param1:String, param2:Object) : void
      {
         var _loc4_:URLLoader = null;
         super.sendRequest(param1,param2);
         var _loc3_:URLRequest = null;
         if(§=!2§.§>@§ == "Google")
         {
            _loc3_ = new URLRequest(§`K§() + param1);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§6A§(param2);
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@-§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'1§);
            _loc4_.load(_loc3_);
            this.§+E§.push(_loc4_);
         }
         else
         {
            _loc3_ = new URLRequest(§`K§());
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.data = this.§6A§(param2);
            _loc3_.data.C = param1;
            (_loc4_ = new URLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
            _loc4_.addEventListener(Event.COMPLETE,this.§@-§);
            _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§'1§);
            _loc4_.load(_loc3_);
            this.§+E§.push(_loc4_);
         }
      }
      
      override public function closeConnection() : void
      {
         §<=§();
         this.§6!D§();
      }
      
      private function §6!D§() : void
      {
         var _loc1_:URLLoader = null;
         for each(_loc1_ in this.§+E§)
         {
            this.§&!b§(_loc1_);
            this.§,@§(_loc1_);
         }
         this.§+E§ = new Vector.<URLLoader>();
      }
      
      private function §6A§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
      
      private function §@-§(param1:Event) : void
      {
         var _loc2_:* = null;
         this.§&!b§(param1.target as URLLoader);
         this.§,@§(param1.target as URLLoader);
         for(_loc2_ in (param1.target as URLLoader).data)
         {
            §7!7§.log(_loc2_ + ": " + (param1.target as URLLoader).data[_loc2_]);
         }
         §8l§(§=q§.§2!R§((param1.target as URLLoader).data));
      }
      
      private function §'1§(param1:IOErrorEvent) : void
      {
         this.§&!b§(param1.target as URLLoader);
         var _loc2_:Object = new Object();
         _loc2_.E = param1.text;
         _loc2_.C = "serverConnectionError";
         this.§,@§(param1.target as URLLoader);
         §7!7§.log((param1.target as URLLoader).data);
         §7!7§.log("[HTTPConnection] ioError: " + param1.text);
         §%!%§(§=q§.§2!R§(_loc2_));
      }
      
      private function §&!b§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§@-§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§'1§);
      }
      
      private function §,@§(param1:URLLoader) : void
      {
         if(this.§+E§.indexOf(param1) > -1)
         {
            this.§+E§.splice(this.§+E§.indexOf(param1),1);
         }
      }
   }
}
