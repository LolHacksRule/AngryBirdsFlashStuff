package § "g§
{
   import §"!>§.§8";§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §[!"§ extends EventDispatcher
   {
       
      
      protected var §"""§:Array;
      
      protected var §"$§:String;
      
      protected var §<#]§:String;
      
      protected var §-"@§:Number = -1;
      
      protected var §5#n§:§5#,§;
      
      protected var §[#x§:Vector.<§5#,§>;
      
      public function §[!"§(param1:String)
      {
         this.§"""§ = [];
         this.§[#x§ = new Vector.<§5#,§>(0);
         super();
         this.§"$§ = param1;
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §2"6§.§;z§(this.§"$§);
         _loc3_.method = this.§<#]§;
         _loc3_.contentType = "application/json";
         if(this.§<#]§ == URLRequestMethod.POST)
         {
            _loc3_.data = JSON.stringify({"count":param2});
         }
         var _loc4_:§'!n§;
         (_loc4_ = new §'!n§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§5#,§ = new §5#,§(param1,param2,_loc4_,_loc3_);
         this.§8h§(_loc5_);
         this.§[#x§.unshift(_loc5_);
         if(!this.§5#n§)
         {
            this.§8"5§();
         }
      }
      
      protected function §8"5§() : void
      {
         if(this.§5#n§ || this.§[#x§.length == 0)
         {
            return;
         }
         this.§5#n§ = this.§[#x§.pop();
         this.§5#n§.§%!#§.load(this.§5#n§.§+F§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§%"f§(this.§5#n§.§%!#§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.players as Array).length)
         {
            this.§"""§[this.§5#n§.§,"+§ + _loc2_] = param1.players[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§-"@§)
         {
            this.§-"@§ = param1.totalItemCount;
            dispatchEvent(new §8";§(§8";§.§2e§,this.§-"@§,this.§-"@§));
         }
         dispatchEvent(new §8";§(§8";§.§]!T§,this.§5#n§.§,"+§,this.§5#n§.§6!&§));
         this.§!#'§(this.§5#n§);
         this.§5#n§ = null;
         if(this.§[#x§.length > 0)
         {
            this.§8"5§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§-"@§;
      }
      
      protected function §%"f§(param1:Object) : Object
      {
         return param1;
      }
      
      public function get data() : Array
      {
         return this.§"""§;
      }
      
      public function get §0"§() : Boolean
      {
         return this.§5#n§ != null;
      }
      
      protected function §8h§(param1:§5#,§) : void
      {
         param1.§%!#§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§%!#§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§%!#§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§%!#§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§%!#§.addEventListener(§"!;§.§ #x§,dispatchEvent);
      }
      
      protected function §!#'§(param1:§5#,§) : void
      {
         param1.§%!#§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§%!#§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§%!#§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§%!#§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§%!#§.removeEventListener(§"!;§.§ #x§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§5#n§)
         {
            this.§!#'§(this.§5#n§);
            try
            {
               this.§5#n§.§%!#§.close();
            }
            catch(e:Error)
            {
            }
            this.§5#n§ = null;
         }
      }
   }
}
