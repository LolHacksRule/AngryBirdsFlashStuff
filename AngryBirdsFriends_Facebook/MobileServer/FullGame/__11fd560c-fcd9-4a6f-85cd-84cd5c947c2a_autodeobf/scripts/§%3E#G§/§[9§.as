package §>#G§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §[9§ extends EventDispatcher
   {
      
      public static const §!#V§:uint = 1;
       
      
      private var §>!l§:String;
      
      private var §>v§:Loader;
      
      private var §"#7§:uint;
      
      private var §5!y§:Boolean;
      
      private var §@#x§:Boolean;
      
      public function §[9§(param1:String, param2:uint)
      {
         super();
         this.§>!l§ = param1;
         this.§"#7§ = param2;
         this.§5!y§ = false;
         this.§@#x§ = false;
      }
      
      public function load() : void
      {
         if(!this.§5!y§ && !this.§@#x§)
         {
            this.§>v§ = new Loader();
            this.§>v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§>v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§6$;§);
            this.§>v§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§'""§);
            this.§>v§.load(new URLRequest(this.§>!l§),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      public function §]!%§() : Boolean
      {
         return this.§@#x§;
      }
      
      public function §8R§() : Boolean
      {
         return this.§5!y§;
      }
      
      private function §'""§(param1:ProgressEvent) : void
      {
      }
      
      private function §6$;§(param1:IOErrorEvent) : void
      {
         this.§5!y§ = false;
         this.§^"#§();
         dispatchEvent(param1.clone());
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§5!y§ = true;
         this.§@#x§ = true;
         this.§^"#§();
         dispatchEvent(param1.clone());
      }
      
      private function §^"#§() : void
      {
         if(this.§>v§)
         {
            this.§>v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§>v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§6$;§);
            this.§>v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§>v§ = null;
         }
      }
      
      public function get url() : String
      {
         return this.§>!l§;
      }
   }
}
