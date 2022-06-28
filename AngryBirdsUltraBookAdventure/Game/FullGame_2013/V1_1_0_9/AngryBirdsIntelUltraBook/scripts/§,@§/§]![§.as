package §,@§
{
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §<-§.§"K§;
   import §@! §.§ !5§;
   import §@!Z§.§,Z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §]![§ extends EventDispatcher
   {
       
      
      protected var §9%§:Array;
      
      protected var §9!a§:String;
      
      protected var §for §:Number = -1;
      
      protected var §&! §:§;!r§;
      
      protected var §#!N§:Vector.<§;!r§>;
      
      public function §]![§(param1:String)
      {
         this.§9%§ = [];
         this.§#!N§ = new Vector.<§;!r§>(0);
         super();
         this.§9!a§ = param1;
      }
      
      public function §=$§(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §7!6§.§7V§(this.§9!a§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = §,Z§.encode({
            "index":param1,
            "count":param2
         });
         var _loc4_:§45§;
         (_loc4_ = new §45§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§;!r§ = new §;!r§(param1,param2,_loc4_,_loc3_);
         this.§0!O§(_loc5_);
         this.§#!N§.unshift(_loc5_);
         if(!this.§&! §)
         {
            this.§=b§();
         }
      }
      
      protected function §=b§() : void
      {
         if(this.§&! § || this.§#!N§.length == 0)
         {
            return;
         }
         this.§&! § = this.§#!N§.pop();
         this.§&! §.§[!,§.load(this.§&! §.§%%§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§ else§(this.§&! §.§[!,§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§9%§[this.§&! §.§2!W§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§for §)
         {
            this.§for § = param1.totalItemCount;
            dispatchEvent(new § !5§(§ !5§.§7s§,this.§for §,this.§for §));
         }
         dispatchEvent(new § !5§(§ !5§.§%"!§,this.§&! §.§2!W§,this.§&! §.§ !#§));
         this.§1a§(this.§&! §);
         this.§&! § = null;
         if(this.§#!N§.length > 0)
         {
            this.§=b§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§for §;
      }
      
      protected function § else§(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = §,Z§.§'o§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§"K§.§6#§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§9%§;
      }
      
      public function get §6;§() : Boolean
      {
         return this.§&! § != null;
      }
      
      protected function §0!O§(param1:§;!r§) : void
      {
         param1.§[!,§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§[!,§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§[!,§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§[!,§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§[!,§.addEventListener(§4-§.§4!m§,dispatchEvent);
      }
      
      protected function §1a§(param1:§;!r§) : void
      {
         param1.§[!,§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§[!,§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§[!,§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§[!,§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§[!,§.removeEventListener(§4-§.§4!m§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§&! §)
         {
            this.§1a§(this.§&! §);
            try
            {
               this.§&! §.§[!,§.close();
            }
            catch(e:Error)
            {
            }
            this.§&! § = null;
         }
      }
   }
}
