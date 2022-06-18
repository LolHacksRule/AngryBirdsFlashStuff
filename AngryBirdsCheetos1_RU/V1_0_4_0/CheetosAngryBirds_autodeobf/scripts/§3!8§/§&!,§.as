package §3!8§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   
   public class §&!,§ extends EventDispatcher
   {
       
      
      private var §!!E§:Loader;
      
      private var §+!D§:MovieClip;
      
      public function §&!,§()
      {
         super();
         this.§!!E§ = new Loader();
      }
      
      public function load(param1:String) : Boolean
      {
         var cutSceneName:String = param1;
         var loadOk:Boolean = true;
         try
         {
            this.§!!E§.load(new URLRequest(cutSceneName));
         }
         catch(e:Error)
         {
            loadOk = false;
         }
         if(!loadOk)
         {
            return false;
         }
         this.§!!E§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§^0§);
         this.§!!E§.contentLoaderInfo.addEventListener(Event.INIT,this.§[!<§);
         this.§!!E§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.§!!E§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§,q§);
         return true;
      }
      
      private function §^0§(param1:Event) : void
      {
         this.§+!D§ = MovieClip(this.§!!E§.content);
         dispatchEvent(new §?d§(§?d§.§[9§));
      }
      
      private function §[!<§(param1:Event) : void
      {
         dispatchEvent(new §?d§(§?d§.§5!b§));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §?d§(§?d§.§+W§));
      }
      
      private function §,q§(param1:ProgressEvent) : void
      {
         dispatchEvent(new §?d§(§?d§.§1!`§));
      }
      
      public function dispose() : void
      {
         if(this.§!!E§)
         {
            this.§!!E§.unloadAndStop();
            this.§!!E§ = null;
         }
         this.§+!D§ = null;
      }
      
      public function get content() : MovieClip
      {
         return this.§+!D§;
      }
   }
}
