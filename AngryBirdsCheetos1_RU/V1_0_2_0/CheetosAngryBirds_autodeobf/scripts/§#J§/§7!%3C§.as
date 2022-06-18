package §#J§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   
   public class §7!<§ extends EventDispatcher
   {
       
      
      private var §[I§:Loader;
      
      private var §39§:MovieClip;
      
      public function §7!<§()
      {
         super();
         this.§[I§ = new Loader();
      }
      
      public function load(param1:String) : Boolean
      {
         var cutSceneName:String = param1;
         var loadOk:Boolean = true;
         try
         {
            this.§[I§.load(new URLRequest(cutSceneName));
         }
         catch(e:Error)
         {
            loadOk = false;
         }
         if(!loadOk)
         {
            return false;
         }
         this.§[I§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§>h§);
         this.§[I§.contentLoaderInfo.addEventListener(Event.INIT,this.§,!5§);
         this.§[I§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.§[I§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§<;§);
         return true;
      }
      
      private function §>h§(param1:Event) : void
      {
         this.§39§ = MovieClip(this.§[I§.content);
         dispatchEvent(new §=!;§(§=!;§.§"!C§));
      }
      
      private function §,!5§(param1:Event) : void
      {
         dispatchEvent(new §=!;§(§=!;§.§66§));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §=!;§(§=!;§.§ !8§));
      }
      
      private function §<;§(param1:ProgressEvent) : void
      {
         dispatchEvent(new §=!;§(§=!;§.§07§));
      }
      
      public function dispose() : void
      {
         if(this.§[I§)
         {
            this.§[I§.unloadAndStop();
            this.§[I§ = null;
         }
         this.§39§ = null;
      }
      
      public function get content() : MovieClip
      {
         return this.§39§;
      }
   }
}
