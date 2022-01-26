package §4!§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   
   public class §5&§ extends EventDispatcher
   {
       
      
      private var §7!+§:Loader;
      
      private var §5!<§:MovieClip;
      
      public function §5&§()
      {
         super();
         this.§7!+§ = new Loader();
      }
      
      public function load(param1:String) : Boolean
      {
         var cutSceneName:String = param1;
         var loadOk:Boolean = true;
         try
         {
            this.§7!+§.load(new URLRequest(cutSceneName));
         }
         catch(e:Error)
         {
            loadOk = false;
         }
         if(!loadOk)
         {
            return false;
         }
         this.§7!+§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§%!U§);
         this.§7!+§.contentLoaderInfo.addEventListener(Event.INIT,this.§!!O§);
         this.§7!+§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.§7!+§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§=L§);
         return true;
      }
      
      private function §%!U§(param1:Event) : void
      {
         this.§5!<§ = MovieClip(this.§7!+§.content);
         dispatchEvent(new §9U§(§9U§.§[Y§));
      }
      
      private function §!!O§(param1:Event) : void
      {
         dispatchEvent(new §9U§(§9U§.§1"§));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §9U§(§9U§.§?W§));
      }
      
      private function §=L§(param1:ProgressEvent) : void
      {
         dispatchEvent(new §9U§(§9U§.§>4§));
      }
      
      public function dispose() : void
      {
         if(this.§7!+§)
         {
            this.§7!+§.unloadAndStop();
            this.§7!+§ = null;
         }
         this.§5!<§ = null;
      }
      
      public function get content() : MovieClip
      {
         return this.§5!<§;
      }
   }
}
