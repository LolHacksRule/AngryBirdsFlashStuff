package §6!Y§
{
   import §!e§.§function§;
   import §7@§.§?!7§;
   import §7X§.§!!5§;
   import §7X§.§+!p§;
   import §7X§.§7^§;
   import §]+§.§&!$§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §9!?§ extends EventDispatcher
   {
       
      
      protected var §%v§:Array;
      
      protected var §"<§:String;
      
      protected var §+!6§:Number = -1;
      
      protected var §;s§:§5t§;
      
      protected var §!!t§:Vector.<§5t§>;
      
      public function §9!?§(param1:String)
      {
         this.§%v§ = [];
         this.§!!t§ = new Vector.<§5t§>(0);
         super();
         this.§"<§ = param1;
      }
      
      public function §-#§(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §+!p§.§`;§(this.§"<§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = §function§.encode({
            "index":param1,
            "count":param2
         });
         var _loc4_:§7^§;
         (_loc4_ = new §7^§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§5t§ = new §5t§(param1,param2,_loc4_,_loc3_);
         this.§]!d§(_loc5_);
         this.§!!t§.unshift(_loc5_);
         if(!this.§;s§)
         {
            this.§,!f§();
         }
      }
      
      protected function §,!f§() : void
      {
         if(this.§;s§ || this.§!!t§.length == 0)
         {
            return;
         }
         this.§;s§ = this.§!!t§.pop();
         this.§;s§.§9o§.load(this.§;s§.§0!k§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§<!u§(this.§;s§.§9o§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§%v§[this.§;s§.§ !z§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§+!6§)
         {
            this.§+!6§ = param1.totalItemCount;
            dispatchEvent(new §?!7§(§?!7§.§2!"§,this.§+!6§,this.§+!6§));
         }
         dispatchEvent(new §?!7§(§?!7§.§-t§,this.§;s§.§ !z§,this.§;s§.§"A§));
         this.§;!$§(this.§;s§);
         this.§;s§ = null;
         if(this.§!!t§.length > 0)
         {
            this.§,!f§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§+!6§;
      }
      
      protected function §<!u§(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = §function§.§8!^§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§&!$§.§1!`§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§%v§;
      }
      
      public function get §@B§() : Boolean
      {
         return this.§;s§ != null;
      }
      
      protected function §]!d§(param1:§5t§) : void
      {
         param1.§9o§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§9o§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§9o§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§9o§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§9o§.addEventListener(§!!5§.§[!§,dispatchEvent);
      }
      
      protected function §;!$§(param1:§5t§) : void
      {
         param1.§9o§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§9o§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§9o§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§9o§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§9o§.removeEventListener(§!!5§.§[!§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§;s§)
         {
            this.§;!$§(this.§;s§);
            try
            {
               this.§;s§.§9o§.close();
            }
            catch(e:Error)
            {
            }
            this.§;s§ = null;
         }
      }
   }
}
