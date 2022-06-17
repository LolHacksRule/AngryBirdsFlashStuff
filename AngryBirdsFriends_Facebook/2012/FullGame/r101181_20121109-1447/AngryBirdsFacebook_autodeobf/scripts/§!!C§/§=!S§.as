package §!!C§
{
   import § !9§.§'!J§;
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §,"2§.§"-§;
   import §<a§.§!!m§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §=!S§ extends EventDispatcher
   {
       
      
      protected var §>">§:Array;
      
      protected var §+U§:String;
      
      protected var §8"6§:Number = -1;
      
      protected var §7"F§:§#!^§;
      
      protected var §3"8§:Vector.<§#!^§>;
      
      public function §=!S§(param1:String)
      {
         this.§>">§ = [];
         this.§3"8§ = new Vector.<§#!^§>(0);
         super();
         this.§+U§ = param1;
      }
      
      public function §%!e§(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §-!l§.§%""§(this.§+U§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = §'!J§.encode({
            "index":param1,
            "count":param2
         });
         var _loc4_:§0]§;
         (_loc4_ = new §0]§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§#!^§ = new §#!^§(param1,param2,_loc4_,_loc3_);
         this.§+%§(_loc5_);
         this.§3"8§.unshift(_loc5_);
         if(!this.§7"F§)
         {
            this.§=j§();
         }
      }
      
      protected function §=j§() : void
      {
         if(this.§7"F§ || this.§3"8§.length == 0)
         {
            return;
         }
         this.§7"F§ = this.§3"8§.pop();
         this.§7"F§.§1!e§.load(this.§7"F§.§'"&§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§=9§(this.§7"F§.§1!e§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§>">§[this.§7"F§.§7A§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§8"6§)
         {
            this.§8"6§ = param1.totalItemCount;
            dispatchEvent(new §"-§(§"-§.§`"=§,this.§8"6§,this.§8"6§));
         }
         dispatchEvent(new §"-§(§"-§.§;!t§,this.§7"F§.§7A§,this.§7"F§.§%!K§));
         this.§+1§(this.§7"F§);
         this.§7"F§ = null;
         if(this.§3"8§.length > 0)
         {
            this.§=j§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§8"6§;
      }
      
      protected function §=9§(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = §'!J§.§0!>§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§!!m§.§4H§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§>">§;
      }
      
      public function get §6I§() : Boolean
      {
         return this.§7"F§ != null;
      }
      
      protected function §+%§(param1:§#!^§) : void
      {
         param1.§1!e§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§1!e§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§1!e§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§1!e§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§1!e§.addEventListener(§+!D§.§25§,dispatchEvent);
      }
      
      protected function §+1§(param1:§#!^§) : void
      {
         param1.§1!e§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§1!e§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§1!e§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§1!e§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§1!e§.removeEventListener(§+!D§.§25§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§7"F§)
         {
            this.§+1§(this.§7"F§);
            try
            {
               this.§7"F§.§1!e§.close();
            }
            catch(e:Error)
            {
            }
            this.§7"F§ = null;
         }
      }
   }
}
