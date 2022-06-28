package §_-0EZ§
{
   import §_-AZ§.§_-Vh§;
   import §_-Hb§.§_-P-§;
   import §_-Hb§.§_-a5§;
   import §_-Hb§.§_-ur§;
   import §_-eS§.§_-4E§;
   import §_-py§.§_-bu§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-SI§ extends EventDispatcher
   {
       
      
      protected var §_-WB§:Array;
      
      protected var final:String;
      
      protected var §_-Wu§:Number = -1;
      
      protected var §_-U5§:§_-UE§;
      
      protected var §_-mu§:Vector.<§_-UE§>;
      
      public function §_-SI§(param1:String)
      {
         this.§_-WB§ = [];
         this.§_-mu§ = new Vector.<§_-UE§>(0);
         super();
         this.final = param1;
      }
      
      public function §_-0-C§(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §_-P-§.§_-0Ak§(this.final);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = §_-bu§.encode({
            "index":param1,
            "count":param2
         });
         var _loc4_:§_-ur§;
         (_loc4_ = new §_-ur§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§_-UE§ = new §_-UE§(param1,param2,_loc4_,_loc3_);
         this.§_-Tj§(_loc5_);
         this.§_-mu§.unshift(_loc5_);
         if(!this.§_-U5§)
         {
            this.§_-3s§();
         }
      }
      
      protected function §_-3s§() : void
      {
         if(this.§_-U5§ || this.§_-mu§.length == 0)
         {
            return;
         }
         this.§_-U5§ = this.§_-mu§.pop();
         this.§_-U5§.§_-5T§.load(this.§_-U5§.§_-C1§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§_-1G§(this.§_-U5§.§_-5T§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§_-WB§[this.§_-U5§.§_-1E§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§_-Wu§)
         {
            this.§_-Wu§ = param1.totalItemCount;
            dispatchEvent(new §_-Vh§(§_-Vh§.§_-SO§,this.§_-Wu§,this.§_-Wu§));
         }
         dispatchEvent(new §_-Vh§(§_-Vh§.§_-04P§,this.§_-U5§.§_-1E§,this.§_-U5§.§_-6Q§));
         this.§_-sc§(this.§_-U5§);
         this.§_-U5§ = null;
         if(this.§_-mu§.length > 0)
         {
            this.§_-3s§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§_-Wu§;
      }
      
      protected function §_-1G§(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = §_-bu§.§_-aW§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§_-4E§.§_-ju§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§_-WB§;
      }
      
      public function get §_-Er§() : Boolean
      {
         return this.§_-U5§ != null;
      }
      
      protected function §_-Tj§(param1:§_-UE§) : void
      {
         param1.§_-5T§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§_-5T§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§_-5T§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§_-5T§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§_-5T§.addEventListener(§_-a5§.§_-Gy§,dispatchEvent);
      }
      
      protected function §_-sc§(param1:§_-UE§) : void
      {
         param1.§_-5T§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§_-5T§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§_-5T§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§_-5T§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§_-5T§.removeEventListener(§_-a5§.§_-Gy§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§_-U5§)
         {
            this.§_-sc§(this.§_-U5§);
            try
            {
               this.§_-U5§.§_-5T§.close();
            }
            catch(e:Error)
            {
            }
            this.§_-U5§ = null;
         }
      }
   }
}
