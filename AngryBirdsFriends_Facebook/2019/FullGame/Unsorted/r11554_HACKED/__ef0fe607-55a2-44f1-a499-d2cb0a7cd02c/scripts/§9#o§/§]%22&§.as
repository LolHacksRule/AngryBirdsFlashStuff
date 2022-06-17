package §9#o§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §]"&§ extends EventDispatcher
   {
      
      public static const §1#=§:uint = 1;
       
      
      private var §`$B§:String;
      
      private var §&![§:Loader;
      
      private var §=$?§:uint;
      
      private var §4#f§:Boolean;
      
      private var §#Q§:Boolean;
      
      public function §]"&§(param1:String, param2:uint)
      {
         super();
         this.§`$B§ = param1;
         this.§=$?§ = param2;
         this.§4#f§ = false;
         this.§#Q§ = false;
      }
      
      public function load() : void
      {
         if(!this.§4#f§ && !this.§#Q§)
         {
            this.§&![§ = new Loader();
            this.§&![§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§&![§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§^" §);
            this.§&![§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§?!O§);
            this.§&![§.load(new URLRequest(this.§`$B§),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      public function § #$§() : Boolean
      {
         return this.§#Q§;
      }
      
      public function §0"§() : Boolean
      {
         return this.§4#f§;
      }
      
      private function §?!O§(param1:ProgressEvent) : void
      {
      }
      
      private function §^" §(param1:IOErrorEvent) : void
      {
         this.§4#f§ = false;
         this.§## §();
         dispatchEvent(param1.clone());
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§4#f§ = true;
         this.§#Q§ = true;
         this.§## §();
         dispatchEvent(param1.clone());
      }
      
      private function §## §() : void
      {
         if(this.§&![§)
         {
            this.§&![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§&![§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§^" §);
            this.§&![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§&![§ = null;
         }
      }
      
      public function get url() : String
      {
         return this.§`$B§;
      }
   }
}
