package §3#t§
{
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §8#^§.§ !w§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §=!A§ extends EventDispatcher
   {
       
      
      protected var §6"G§:Array;
      
      protected var §<"R§:String;
      
      protected var §61§:String;
      
      protected var §+$,§:Number = -1;
      
      protected var §>#T§:§#A§;
      
      protected var §<#P§:Vector.<§#A§>;
      
      public function §=!A§(param1:String)
      {
         this.§6"G§ = [];
         this.§<#P§ = new Vector.<§#A§>(0);
         super();
         this.§<"R§ = param1;
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §!"`§.§@!A§(this.§<"R§);
         _loc3_.method = this.§61§;
         _loc3_.contentType = "application/json";
         if(this.§61§ == URLRequestMethod.POST)
         {
            _loc3_.data = JSON.stringify({"count":param2});
         }
         var _loc4_:§5"f§;
         (_loc4_ = new §5"f§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§#A§ = new §#A§(param1,param2,_loc4_,_loc3_);
         this.§4v§(_loc5_);
         this.§<#P§.unshift(_loc5_);
         if(!this.§>#T§)
         {
            this.§<#>§();
         }
      }
      
      protected function §<#>§() : void
      {
         if(this.§>#T§ || this.§<#P§.length == 0)
         {
            return;
         }
         this.§>#T§ = this.§<#P§.pop();
         this.§>#T§.§;#5§.load(this.§>#T§.§`"T§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§!B§(this.§>#T§.§;#5§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.players as Array).length)
         {
            this.§6"G§[this.§>#T§.§8"N§ + _loc2_] = param1.players[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§+$,§)
         {
            this.§+$,§ = param1.totalItemCount;
            dispatchEvent(new § !w§(§ !w§.§@!a§,this.§+$,§,this.§+$,§));
         }
         dispatchEvent(new § !w§(§ !w§.§'#y§,this.§>#T§.§8"N§,this.§>#T§.§[#<§));
         this.§3l§(this.§>#T§);
         this.§>#T§ = null;
         if(this.§<#P§.length > 0)
         {
            this.§<#>§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§+$,§;
      }
      
      protected function §!B§(param1:Object) : Object
      {
         return param1;
      }
      
      public function get data() : Array
      {
         return this.§6"G§;
      }
      
      public function get §#!?§() : Boolean
      {
         return this.§>#T§ != null;
      }
      
      protected function §4v§(param1:§#A§) : void
      {
         param1.§;#5§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§;#5§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§;#5§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§;#5§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§;#5§.addEventListener(§;" §.§`S§,dispatchEvent);
      }
      
      protected function §3l§(param1:§#A§) : void
      {
         param1.§;#5§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§;#5§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§;#5§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§;#5§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§;#5§.removeEventListener(§;" §.§`S§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§>#T§)
         {
            this.§3l§(this.§>#T§);
            try
            {
               this.§>#T§.§;#5§.close();
            }
            catch(e:Error)
            {
            }
            this.§>#T§ = null;
         }
      }
   }
}
