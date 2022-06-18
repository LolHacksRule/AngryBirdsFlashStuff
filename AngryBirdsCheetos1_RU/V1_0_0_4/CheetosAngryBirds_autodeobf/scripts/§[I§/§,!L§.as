package §[I§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   
   public class §,!L§ extends EventDispatcher
   {
       
      
      private var §[3§:Loader;
      
      private var §%Y§:MovieClip;
      
      public function §,!L§()
      {
         super();
         this.§[3§ = new Loader();
      }
      
      public function load(param1:String) : Boolean
      {
         var cutSceneName:String = param1;
         var loadOk:Boolean = true;
         try
         {
            this.§[3§.load(new URLRequest(cutSceneName));
         }
         catch(e:Error)
         {
            loadOk = false;
         }
         if(!loadOk)
         {
            return false;
         }
         this.§[3§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§'!<§);
         this.§[3§.contentLoaderInfo.addEventListener(Event.INIT,this.§9l§);
         this.§[3§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.§[3§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§!E§);
         return true;
      }
      
      private function §'!<§(param1:Event) : void
      {
         this.§%Y§ = MovieClip(this.§[3§.content);
         dispatchEvent(new §^!B§(§^!B§.§%O§));
      }
      
      private function §9l§(param1:Event) : void
      {
         dispatchEvent(new §^!B§(§^!B§.§ l§));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §^!B§(§^!B§.§+!R§));
      }
      
      private function §!E§(param1:ProgressEvent) : void
      {
         dispatchEvent(new §^!B§(§^!B§.§#8§));
      }
      
      public function dispose() : void
      {
         if(this.§[3§)
         {
            this.§[3§.unloadAndStop();
            this.§[3§ = null;
         }
         this.§%Y§ = null;
      }
      
      public function get content() : MovieClip
      {
         return this.§%Y§;
      }
   }
}
