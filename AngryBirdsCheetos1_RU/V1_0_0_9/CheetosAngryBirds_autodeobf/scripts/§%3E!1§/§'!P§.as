package §>!1§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   
   public class §'!P§ extends EventDispatcher
   {
       
      
      private var §5§:Loader;
      
      private var §+C§:MovieClip;
      
      public function §'!P§()
      {
         super();
         this.§5§ = new Loader();
      }
      
      public function load(param1:String) : Boolean
      {
         var cutSceneName:String = param1;
         var loadOk:Boolean = true;
         try
         {
            this.§5§.load(new URLRequest(cutSceneName));
         }
         catch(e:Error)
         {
            loadOk = false;
         }
         if(!loadOk)
         {
            return false;
         }
         this.§5§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§6!-§);
         this.§5§.contentLoaderInfo.addEventListener(Event.INIT,this.§8!4§);
         this.§5§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.§5§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§87§);
         return true;
      }
      
      private function §6!-§(param1:Event) : void
      {
         this.§+C§ = MovieClip(this.§5§.content);
         dispatchEvent(new §[#§(§[#§.§;!+§));
      }
      
      private function §8!4§(param1:Event) : void
      {
         dispatchEvent(new §[#§(§[#§.§+!Z§));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §[#§(§[#§.§"1§));
      }
      
      private function §87§(param1:ProgressEvent) : void
      {
         dispatchEvent(new §[#§(§[#§.§[!'§));
      }
      
      public function dispose() : void
      {
         if(this.§5§)
         {
            this.§5§.unloadAndStop();
            this.§5§ = null;
         }
         this.§+C§ = null;
      }
      
      public function get content() : MovieClip
      {
         return this.§+C§;
      }
   }
}
