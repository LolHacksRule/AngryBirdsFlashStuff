package §[h§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   
   public class §[_§ extends EventDispatcher
   {
       
      
      private var §]W§:Loader;
      
      private var §'D§:MovieClip;
      
      public function §[_§()
      {
         super();
         this.§]W§ = new Loader();
      }
      
      public function load(param1:String) : Boolean
      {
         var cutSceneName:String = param1;
         var loadOk:Boolean = true;
         try
         {
            this.§]W§.load(new URLRequest(cutSceneName));
         }
         catch(e:Error)
         {
            loadOk = false;
         }
         if(!loadOk)
         {
            return false;
         }
         this.§]W§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§2!X§);
         this.§]W§.contentLoaderInfo.addEventListener(Event.INIT,this.§!x§);
         this.§]W§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.§]W§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§97§);
         return true;
      }
      
      private function §2!X§(param1:Event) : void
      {
         this.§'D§ = MovieClip(this.§]W§.content);
         dispatchEvent(new §3!c§(§3!c§.§%!g§));
      }
      
      private function §!x§(param1:Event) : void
      {
         dispatchEvent(new §3!c§(§3!c§.§ F§));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §3!c§(§3!c§.§;d§));
      }
      
      private function §97§(param1:ProgressEvent) : void
      {
         dispatchEvent(new §3!c§(§3!c§.§`!O§));
      }
      
      public function dispose() : void
      {
         if(this.§]W§)
         {
            this.§]W§.unloadAndStop();
            this.§]W§ = null;
         }
         this.§'D§ = null;
      }
      
      public function get content() : MovieClip
      {
         return this.§'D§;
      }
   }
}
