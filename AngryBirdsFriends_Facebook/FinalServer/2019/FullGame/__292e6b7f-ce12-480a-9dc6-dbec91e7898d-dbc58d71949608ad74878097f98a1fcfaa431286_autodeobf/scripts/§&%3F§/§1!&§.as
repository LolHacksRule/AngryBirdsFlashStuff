package §&?§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §1!&§ extends EventDispatcher
   {
      
      public static const §3!Q§:uint = 1;
       
      
      private var § j§:String;
      
      private var §@$2§:Loader;
      
      private var §2"G§:uint;
      
      private var §6#K§:Boolean;
      
      private var §="d§:Boolean;
      
      public function §1!&§(param1:String, param2:uint)
      {
         super();
         this.§ j§ = param1;
         this.§2"G§ = param2;
         this.§6#K§ = false;
         this.§="d§ = false;
      }
      
      public function load() : void
      {
         if(!this.§6#K§ && !this.§="d§)
         {
            this.§@$2§ = new Loader();
            this.§@$2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§@$2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9"9§);
            this.§@$2§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§8"L§);
            this.§@$2§.load(new URLRequest(this.§ j§),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      public function §%!&§() : Boolean
      {
         return this.§="d§;
      }
      
      public function §9$$§() : Boolean
      {
         return this.§6#K§;
      }
      
      private function §8"L§(param1:ProgressEvent) : void
      {
      }
      
      private function §9"9§(param1:IOErrorEvent) : void
      {
         this.§6#K§ = false;
         this.§<"5§();
         dispatchEvent(param1.clone());
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§6#K§ = true;
         this.§="d§ = true;
         this.§<"5§();
         dispatchEvent(param1.clone());
      }
      
      private function §<"5§() : void
      {
         if(this.§@$2§)
         {
            this.§@$2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§@$2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9"9§);
            this.§@$2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§@$2§ = null;
         }
      }
      
      public function get url() : String
      {
         return this.§ j§;
      }
   }
}
