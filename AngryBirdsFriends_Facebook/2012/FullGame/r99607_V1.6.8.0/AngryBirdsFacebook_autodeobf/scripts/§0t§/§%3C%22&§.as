package §0t§
{
   import § !§.§-q§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §<!<§.§^!I§;
   import §`"3§.§8"4§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §<"&§ extends EventDispatcher
   {
       
      
      protected var § 9§:Array;
      
      protected var §+<§:String;
      
      protected var §"!+§:Number = -1;
      
      protected var §`"+§:§4">§;
      
      protected var §8e§:Vector.<§4">§>;
      
      public function §<"&§(param1:String)
      {
         this.§ 9§ = [];
         this.§8e§ = new Vector.<§4">§>(0);
         super();
         this.§+<§ = param1;
      }
      
      public function §4w§(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §4!J§.§3j§(this.§+<§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = §8"4§.encode({
            "index":param1,
            "count":param2
         });
         var _loc4_:§,!S§;
         (_loc4_ = new §,!S§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§4">§ = new §4">§(param1,param2,_loc4_,_loc3_);
         this.§@!U§(_loc5_);
         this.§8e§.unshift(_loc5_);
         if(!this.§`"+§)
         {
            this.§9!?§();
         }
      }
      
      protected function §9!?§() : void
      {
         if(this.§`"+§ || this.§8e§.length == 0)
         {
            return;
         }
         this.§`"+§ = this.§8e§.pop();
         this.§`"+§.§`N§.load(this.§`"+§.§"!D§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§%!;§(this.§`"+§.§`N§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§ 9§[this.§`"+§.§>!b§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§"!+§)
         {
            this.§"!+§ = param1.totalItemCount;
            dispatchEvent(new §-q§(§-q§.§<>§,this.§"!+§,this.§"!+§));
         }
         dispatchEvent(new §-q§(§-q§.§-p§,this.§`"+§.§>!b§,this.§`"+§.§?w§));
         this.§7!"§(this.§`"+§);
         this.§`"+§ = null;
         if(this.§8e§.length > 0)
         {
            this.§9!?§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§"!+§;
      }
      
      protected function §%!;§(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = §8"4§.§,!M§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§^!I§.§50§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§ 9§;
      }
      
      public function get §%!H§() : Boolean
      {
         return this.§`"+§ != null;
      }
      
      protected function §@!U§(param1:§4">§) : void
      {
         param1.§`N§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§`N§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§`N§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§`N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§`N§.addEventListener(§"!n§.§"+§,dispatchEvent);
      }
      
      protected function §7!"§(param1:§4">§) : void
      {
         param1.§`N§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§`N§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§`N§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§`N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§`N§.removeEventListener(§"!n§.§"+§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§`"+§)
         {
            this.§7!"§(this.§`"+§);
            try
            {
               this.§`"+§.§`N§.close();
            }
            catch(e:Error)
            {
            }
            this.§`"+§ = null;
         }
      }
   }
}
