package §>!I§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §9#!§ extends EventDispatcher
   {
      
      public static const §1#^§:uint = 1;
       
      
      private var §>!`§:String;
      
      private var §+"§:Loader;
      
      private var §7#n§:uint;
      
      private var §]!S§:Boolean;
      
      private var §0!I§:Boolean;
      
      public function §9#!§(param1:String, param2:uint)
      {
         super();
         this.§>!`§ = param1;
         this.§7#n§ = param2;
         this.§]!S§ = false;
         this.§0!I§ = false;
      }
      
      public function load() : void
      {
         if(!this.§]!S§ && !this.§0!I§)
         {
            this.§+"§ = new Loader();
            this.§+"§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§+"§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§&d§);
            this.§+"§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§8"'§);
            this.§+"§.load(new URLRequest(this.§>!`§),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      public function §?!9§() : Boolean
      {
         return this.§0!I§;
      }
      
      public function §"$1§() : Boolean
      {
         return this.§]!S§;
      }
      
      private function §8"'§(param1:ProgressEvent) : void
      {
      }
      
      private function §&d§(param1:IOErrorEvent) : void
      {
         this.§]!S§ = false;
         this.§>!q§();
         dispatchEvent(param1.clone());
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§]!S§ = true;
         this.§0!I§ = true;
         this.§>!q§();
         dispatchEvent(param1.clone());
      }
      
      private function §>!q§() : void
      {
         if(this.§+"§)
         {
            this.§+"§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§+"§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§&d§);
            this.§+"§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§+"§ = null;
         }
      }
      
      public function get url() : String
      {
         return this.§>!`§;
      }
   }
}
