package §2L§
{
   import §%!'§.§8o§;
   import §-n§.§]!-§;
   import §3I§.§3!b§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §,8§ extends EventDispatcher
   {
       
      
      protected var §=]§:Array;
      
      protected var §2!R§:String;
      
      protected var §-!i§:Number = -1;
      
      protected var §""%§:§6!m§;
      
      protected var §2!f§:Vector.<§6!m§>;
      
      public function §,8§(param1:String)
      {
         this.§=]§ = [];
         this.§2!f§ = new Vector.<§6!m§>(0);
         super();
         this.§2!R§ = param1;
      }
      
      public function §2"K§(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §?x§.§>t§(this.§2!R§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = §3!b§.encode({
            "index":param1,
            "count":param2
         });
         var _loc4_:§9!S§;
         (_loc4_ = new §9!S§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§6!m§ = new §6!m§(param1,param2,_loc4_,_loc3_);
         this.§?"!§(_loc5_);
         this.§2!f§.unshift(_loc5_);
         if(!this.§""%§)
         {
            this.§^$§();
         }
      }
      
      protected function §^$§() : void
      {
         if(this.§""%§ || this.§2!f§.length == 0)
         {
            return;
         }
         this.§""%§ = this.§2!f§.pop();
         this.§""%§.§?"9§.load(this.§""%§.§9J§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§%"&§(this.§""%§.§?"9§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§=]§[this.§""%§.§2!w§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§-!i§)
         {
            this.§-!i§ = param1.totalItemCount;
            dispatchEvent(new §]!-§(§]!-§.§!!L§,this.§-!i§,this.§-!i§));
         }
         dispatchEvent(new §]!-§(§]!-§.§2O§,this.§""%§.§2!w§,this.§""%§.§-"@§));
         this.§5k§(this.§""%§);
         this.§""%§ = null;
         if(this.§2!f§.length > 0)
         {
            this.§^$§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§-!i§;
      }
      
      protected function §%"&§(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = §3!b§.§4%§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§8o§.§1!d§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§=]§;
      }
      
      public function get §@!o§() : Boolean
      {
         return this.§""%§ != null;
      }
      
      protected function §?"!§(param1:§6!m§) : void
      {
         param1.§?"9§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§?"9§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§?"9§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§?"9§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§?"9§.addEventListener(§="B§.§2"B§,dispatchEvent);
      }
      
      protected function §5k§(param1:§6!m§) : void
      {
         param1.§?"9§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§?"9§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§?"9§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§?"9§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§?"9§.removeEventListener(§="B§.§2"B§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§""%§)
         {
            this.§5k§(this.§""%§);
            try
            {
               this.§""%§.§?"9§.close();
            }
            catch(e:Error)
            {
            }
            this.§""%§ = null;
         }
      }
   }
}
