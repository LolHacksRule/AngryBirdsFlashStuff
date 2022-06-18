package §#h§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   
   public class §%o§ extends EventDispatcher
   {
       
      
      private var §do §:Loader;
      
      private var §3!R§:MovieClip;
      
      public function §%o§()
      {
         super();
         this.§do § = new Loader();
      }
      
      public function load(param1:String) : Boolean
      {
         var cutSceneName:String = param1;
         var loadOk:Boolean = true;
         try
         {
            this.§do §.load(new URLRequest(cutSceneName));
         }
         catch(e:Error)
         {
            loadOk = false;
         }
         if(!loadOk)
         {
            return false;
         }
         this.§do §.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§,!M§);
         this.§do §.contentLoaderInfo.addEventListener(Event.INIT,this.§9!Q§);
         this.§do §.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.§do §.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§ $§);
         return true;
      }
      
      private function §,!M§(param1:Event) : void
      {
         this.§3!R§ = MovieClip(this.§do §.content);
         dispatchEvent(new §>,§(§>,§.§?!;§));
      }
      
      private function §9!Q§(param1:Event) : void
      {
         dispatchEvent(new §>,§(§>,§.§ !K§));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §>,§(§>,§.§'!]§));
      }
      
      private function § $§(param1:ProgressEvent) : void
      {
         dispatchEvent(new §>,§(§>,§.§6!S§));
      }
      
      public function dispose() : void
      {
         if(this.§do §)
         {
            this.§do §.unloadAndStop();
            this.§do § = null;
         }
         this.§3!R§ = null;
      }
      
      public function get content() : MovieClip
      {
         return this.§3!R§;
      }
   }
}
