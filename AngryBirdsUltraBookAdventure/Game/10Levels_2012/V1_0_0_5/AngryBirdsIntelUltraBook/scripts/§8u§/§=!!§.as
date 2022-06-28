package §8u§
{
   import §0X§.§%'§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import §;<§.§4!d§;
   import §<e§.§;!L§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §=!!§ extends EventDispatcher
   {
       
      
      protected var §++§:Array;
      
      protected var §1x§:String;
      
      protected var §3R§:Number = -1;
      
      protected var §8H§:§ ! §;
      
      protected var §4v§:Vector.<§ ! §>;
      
      public function §=!!§(param1:String)
      {
         this.§++§ = [];
         this.§4v§ = new Vector.<§ ! §>(0);
         super();
         this.§1x§ = param1;
      }
      
      public function §'!w§(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = § v§.§<N§(this.§1x§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = §4!d§.encode({
            "index":param1,
            "count":param2
         });
         var _loc4_:§!e§;
         (_loc4_ = new §!e§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§ ! § = new § ! §(param1,param2,_loc4_,_loc3_);
         this.§0!b§(_loc5_);
         this.§4v§.unshift(_loc5_);
         if(!this.§8H§)
         {
            this.§?!b§();
         }
      }
      
      protected function §?!b§() : void
      {
         if(this.§8H§ || this.§4v§.length == 0)
         {
            return;
         }
         this.§8H§ = this.§4v§.pop();
         this.§8H§.§case§.load(this.§8H§.§"%§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§0k§(this.§8H§.§case§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§++§[this.§8H§.§9L§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§3R§)
         {
            this.§3R§ = param1.totalItemCount;
            dispatchEvent(new §;!L§(§;!L§.§-I§,this.§3R§,this.§3R§));
         }
         dispatchEvent(new §;!L§(§;!L§.§<!s§,this.§8H§.§9L§,this.§8H§.§0&§));
         this.§ =§(this.§8H§);
         this.§8H§ = null;
         if(this.§4v§.length > 0)
         {
            this.§?!b§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§3R§;
      }
      
      protected function §0k§(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = §4!d§.§6!p§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§%'§.§<!D§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§++§;
      }
      
      public function get §2Q§() : Boolean
      {
         return this.§8H§ != null;
      }
      
      protected function §0!b§(param1:§ ! §) : void
      {
         param1.§case§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§case§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§case§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§case§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§case§.addEventListener(§3!^§.§2_§,dispatchEvent);
      }
      
      protected function § =§(param1:§ ! §) : void
      {
         param1.§case§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§case§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§case§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§case§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§case§.removeEventListener(§3!^§.§2_§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§8H§)
         {
            this.§ =§(this.§8H§);
            try
            {
               this.§8H§.§case§.close();
            }
            catch(e:Error)
            {
            }
            this.§8H§ = null;
         }
      }
   }
}
