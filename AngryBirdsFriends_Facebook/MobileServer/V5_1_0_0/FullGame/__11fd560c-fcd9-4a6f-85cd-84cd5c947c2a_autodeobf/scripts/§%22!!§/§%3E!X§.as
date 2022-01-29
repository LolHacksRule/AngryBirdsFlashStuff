package §"!!§
{
   import §@V§.§1"V§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import §`!e§.§#"L§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §>!X§ extends EventDispatcher
   {
       
      
      protected var §["[§:Array;
      
      protected var §9c§:String;
      
      protected var §,#;§:String;
      
      protected var §<#T§:Number = -1;
      
      protected var §4"L§:§@E§;
      
      protected var §[#§:Vector.<§@E§>;
      
      public function §>!X§(param1:String)
      {
         this.§["[§ = [];
         this.§[#§ = new Vector.<§@E§>(0);
         super();
         this.§9c§ = param1;
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §["0§.§ G§(this.§9c§);
         _loc3_.method = this.§,#;§;
         _loc3_.contentType = "application/json";
         if(this.§,#;§ == URLRequestMethod.POST)
         {
            _loc3_.data = JSON.stringify({"count":param2});
         }
         var _loc4_:§1"V§;
         (_loc4_ = new §1"V§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§@E§ = new §@E§(param1,param2,_loc4_,_loc3_);
         this.§+$%§(_loc5_);
         this.§[#§.unshift(_loc5_);
         if(!this.§4"L§)
         {
            this.§8$5§();
         }
      }
      
      protected function §8$5§() : void
      {
         if(this.§4"L§ || this.§[#§.length == 0)
         {
            return;
         }
         this.§4"L§ = this.§[#§.pop();
         this.§4"L§.§9#v§.load(this.§4"L§.§0" §);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§5#b§(this.§4"L§.§9#v§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.players as Array).length)
         {
            this.§["[§[this.§4"L§.§,v§ + _loc2_] = param1.players[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§<#T§)
         {
            this.§<#T§ = param1.totalItemCount;
            dispatchEvent(new §#"L§(§#"L§.§7"v§,this.§<#T§,this.§<#T§));
         }
         dispatchEvent(new §#"L§(§#"L§.§-#0§,this.§4"L§.§,v§,this.§4"L§.§%!n§));
         this.§4"C§(this.§4"L§);
         this.§4"L§ = null;
         if(this.§[#§.length > 0)
         {
            this.§8$5§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§<#T§;
      }
      
      protected function §5#b§(param1:Object) : Object
      {
         return param1;
      }
      
      public function get data() : Array
      {
         return this.§["[§;
      }
      
      public function get §8R§() : Boolean
      {
         return this.§4"L§ != null;
      }
      
      protected function §+$%§(param1:§@E§) : void
      {
         param1.§9#v§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§9#v§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§9#v§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§9#v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§9#v§.addEventListener(§;m§.§!$5§,dispatchEvent);
      }
      
      protected function §4"C§(param1:§@E§) : void
      {
         param1.§9#v§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§9#v§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§9#v§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§9#v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§9#v§.removeEventListener(§;m§.§!$5§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§4"L§)
         {
            this.§4"C§(this.§4"L§);
            try
            {
               this.§4"L§.§9#v§.close();
            }
            catch(e:Error)
            {
            }
            this.§4"L§ = null;
         }
      }
   }
}
