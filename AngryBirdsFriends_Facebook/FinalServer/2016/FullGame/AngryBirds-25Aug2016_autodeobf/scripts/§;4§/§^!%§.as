package §;4§
{
   import §9!s§.§8!P§;
   import §]$9§.§5$!§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §^!%§ extends EventDispatcher
   {
       
      
      protected var §+!&§:Array;
      
      protected var §22§:String;
      
      protected var §&B§:String;
      
      protected var §+#E§:Number = -1;
      
      protected var §]!C§:§ !f§;
      
      protected var §6"P§:Vector.<§ !f§>;
      
      public function §^!%§(param1:String)
      {
         this.§+!&§ = [];
         this.§6"P§ = new Vector.<§ !f§>(0);
         super();
         this.§22§ = param1;
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §>J§.§'[§(this.§22§);
         _loc3_.method = this.§&B§;
         _loc3_.contentType = "application/json";
         if(this.§&B§ == URLRequestMethod.POST)
         {
            _loc3_.data = JSON.stringify({"count":param2});
         }
         var _loc4_:§5$!§;
         (_loc4_ = new §5$!§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§ !f§ = new § !f§(param1,param2,_loc4_,_loc3_);
         this.§,"Y§(_loc5_);
         this.§6"P§.unshift(_loc5_);
         if(!this.§]!C§)
         {
            this.§##d§();
         }
      }
      
      protected function §##d§() : void
      {
         if(this.§]!C§ || this.§6"P§.length == 0)
         {
            return;
         }
         this.§]!C§ = this.§6"P§.pop();
         this.§]!C§.§`$4§.load(this.§]!C§.§-!§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§;!@§(this.§]!C§.§`$4§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.players as Array).length)
         {
            this.§+!&§[this.§]!C§.§^H§ + _loc2_] = param1.players[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§+#E§)
         {
            this.§+#E§ = param1.totalItemCount;
            dispatchEvent(new §8!P§(§8!P§.§&!p§,this.§+#E§,this.§+#E§));
         }
         dispatchEvent(new §8!P§(§8!P§.§,"m§,this.§]!C§.§^H§,this.§]!C§.§>!=§));
         this.§=!v§(this.§]!C§);
         this.§]!C§ = null;
         if(this.§6"P§.length > 0)
         {
            this.§##d§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§+#E§;
      }
      
      protected function §;!@§(param1:Object) : Object
      {
         return param1;
      }
      
      public function get data() : Array
      {
         return this.§+!&§;
      }
      
      public function get §-#!§() : Boolean
      {
         return this.§]!C§ != null;
      }
      
      protected function §,"Y§(param1:§ !f§) : void
      {
         param1.§`$4§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§`$4§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§`$4§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§`$4§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§`$4§.addEventListener(§>#J§.§-$%§,dispatchEvent);
      }
      
      protected function §=!v§(param1:§ !f§) : void
      {
         param1.§`$4§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§`$4§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§`$4§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§`$4§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§`$4§.removeEventListener(§>#J§.§-$%§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§]!C§)
         {
            this.§=!v§(this.§]!C§);
            try
            {
               this.§]!C§.§`$4§.close();
            }
            catch(e:Error)
            {
            }
            this.§]!C§ = null;
         }
      }
   }
}
