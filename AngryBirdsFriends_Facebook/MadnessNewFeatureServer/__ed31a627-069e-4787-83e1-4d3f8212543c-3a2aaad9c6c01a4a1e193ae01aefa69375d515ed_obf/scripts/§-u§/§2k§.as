package §-u§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §2k§ extends EventDispatcher
   {
      
      public static const § +§:uint = 1;
       
      
      private var §;!;§:String;
      
      private var §2!N§:Loader;
      
      private var §@4§:uint;
      
      private var §?5§:Boolean;
      
      private var §1#d§:Boolean;
      
      public function §2k§(param1:String, param2:uint)
      {
         super();
         this.§;!;§ = param1;
         this.§@4§ = param2;
         this.§?5§ = false;
         this.§1#d§ = false;
      }
      
      public function load() : void
      {
         if(!this.§?5§ && !this.§1#d§)
         {
            this.§2!N§ = new Loader();
            this.§2!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§2!N§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5">§);
            this.§2!N§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§6"I§);
            this.§2!N§.load(new URLRequest(this.§;!;§),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      public function §3f§() : Boolean
      {
         return this.§1#d§;
      }
      
      public function §6#J§() : Boolean
      {
         return this.§?5§;
      }
      
      private function §6"I§(param1:ProgressEvent) : void
      {
      }
      
      private function §5">§(param1:IOErrorEvent) : void
      {
         this.§?5§ = false;
         this.§6V§();
         dispatchEvent(param1.clone());
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§?5§ = true;
         this.§1#d§ = true;
         this.§6V§();
         dispatchEvent(param1.clone());
      }
      
      private function §6V§() : void
      {
         if(this.§2!N§)
         {
            this.§2!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§2!N§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5">§);
            this.§2!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§2!N§ = null;
         }
      }
      
      public function get url() : String
      {
         return this.§;!;§;
      }
   }
}
