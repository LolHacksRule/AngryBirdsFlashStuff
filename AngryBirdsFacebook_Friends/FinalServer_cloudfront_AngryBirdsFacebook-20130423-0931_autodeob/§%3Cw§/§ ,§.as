package §<w§
{
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §9@§.§1!j§;
   import §;!d§.§+W§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class § ,§ extends EventDispatcher
   {
       
      
      protected var §+]§:Array;
      
      protected var §'!0§:String;
      
      protected var §7"Y§:Number = -1;
      
      protected var §83§:§@L§;
      
      protected var §^U§:Vector.<§@L§>;
      
      public function § ,§(param1:String)
      {
         this.§+]§ = [];
         this.§^U§ = new Vector.<§@L§>(0);
         super();
         this.§'!0§ = param1;
      }
      
      public function §`!I§(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §9!7§.§,!l§(this.§'!0§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = JSON.stringify({
            "index":param1,
            "count":param2
         });
         var _loc4_:§3d§;
         (_loc4_ = new §3d§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§@L§ = new §@L§(param1,param2,_loc4_,_loc3_);
         this.§6"%§(_loc5_);
         this.§^U§.unshift(_loc5_);
         if(!this.§83§)
         {
            this.§']§();
         }
      }
      
      protected function §']§() : void
      {
         if(this.§83§ || this.§^U§.length == 0)
         {
            return;
         }
         this.§83§ = this.§^U§.pop();
         this.§83§.§;"5§.load(this.§83§.§9!X§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§`"5§(this.§83§.§;"5§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§+]§[this.§83§.§7?§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§7"Y§)
         {
            this.§7"Y§ = param1.totalItemCount;
            dispatchEvent(new §+W§(§+W§.§&o§,this.§7"Y§,this.§7"Y§));
         }
         dispatchEvent(new §+W§(§+W§.§,!p§,this.§83§.§7?§,this.§83§.§@"C§));
         this.§?"4§(this.§83§);
         this.§83§ = null;
         if(this.§^U§.length > 0)
         {
            this.§']§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§7"Y§;
      }
      
      protected function §`"5§(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = JSON.parse(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§1!j§.§%e§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§+]§;
      }
      
      public function get §each §() : Boolean
      {
         return this.§83§ != null;
      }
      
      protected function §6"%§(param1:§@L§) : void
      {
         param1.§;"5§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§;"5§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§;"5§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§;"5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§;"5§.addEventListener(§9G§.§33§,dispatchEvent);
      }
      
      protected function §?"4§(param1:§@L§) : void
      {
         param1.§;"5§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§;"5§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§;"5§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§;"5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§;"5§.removeEventListener(§9G§.§33§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§83§)
         {
            this.§?"4§(this.§83§);
            try
            {
               this.§83§.§;"5§.close();
            }
            catch(e:Error)
            {
            }
            this.§83§ = null;
         }
      }
   }
}
