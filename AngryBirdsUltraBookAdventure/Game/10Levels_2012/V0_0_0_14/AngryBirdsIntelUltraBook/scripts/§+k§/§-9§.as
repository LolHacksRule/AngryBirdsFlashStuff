package §+k§
{
   import §&!4§.§ !J§;
   import §&!h§.§4!<§;
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §4!C§.§^!g§;
   import §>§.§7!]§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §-9§ extends EventDispatcher
   {
       
      
      protected var §0A§:Array;
      
      protected var §8l§:String;
      
      protected var §#!$§:Number = -1;
      
      protected var §`!u§:§9W§;
      
      protected var §84§:Vector.<§9W§>;
      
      public function §-9§(param1:String)
      {
         this.§0A§ = [];
         this.§84§ = new Vector.<§9W§>(0);
         super();
         this.§8l§ = param1;
      }
      
      public function §`!5§(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §]!X§.§#l§(this.§8l§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = § !J§.encode({
            "index":param1,
            "count":param2
         });
         var _loc4_:§"!m§;
         (_loc4_ = new §"!m§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§9W§ = new §9W§(param1,param2,_loc4_,_loc3_);
         this.§>!s§(_loc5_);
         this.§84§.unshift(_loc5_);
         if(!this.§`!u§)
         {
            this.§&![§();
         }
      }
      
      protected function §&![§() : void
      {
         if(this.§`!u§ || this.§84§.length == 0)
         {
            return;
         }
         this.§`!u§ = this.§84§.pop();
         this.§`!u§.§ for§.load(this.§`!u§.§^!!§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§@!P§(this.§`!u§.§ for§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§0A§[this.§`!u§.§%!L§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§#!$§)
         {
            this.§#!$§ = param1.totalItemCount;
            dispatchEvent(new §7!]§(§7!]§.§=!p§,this.§#!$§,this.§#!$§));
         }
         dispatchEvent(new §7!]§(§7!]§.§?X§,this.§`!u§.§%!L§,this.§`!u§.§%;§));
         this.§&!S§(this.§`!u§);
         this.§`!u§ = null;
         if(this.§84§.length > 0)
         {
            this.§&![§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§#!$§;
      }
      
      protected function §@!P§(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = § !J§.§!!R§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§4!<§.§ 5§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§0A§;
      }
      
      public function get §6j§() : Boolean
      {
         return this.§`!u§ != null;
      }
      
      protected function §>!s§(param1:§9W§) : void
      {
         param1.§ for§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§ for§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§ for§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§ for§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§ for§.addEventListener(§^!g§.§]P§,dispatchEvent);
      }
      
      protected function §&!S§(param1:§9W§) : void
      {
         param1.§ for§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§ for§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§ for§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§ for§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§ for§.removeEventListener(§^!g§.§]P§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§`!u§)
         {
            this.§&!S§(this.§`!u§);
            try
            {
               this.§`!u§.§ for§.close();
            }
            catch(e:Error)
            {
            }
            this.§`!u§ = null;
         }
      }
   }
}
