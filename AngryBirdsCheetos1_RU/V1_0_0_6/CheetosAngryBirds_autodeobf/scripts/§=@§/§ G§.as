package §=@§
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   
   public class § G§ extends EventDispatcher
   {
       
      
      private var §`!S§:Loader;
      
      private var §0!4§:MovieClip;
      
      public function § G§()
      {
         super();
         this.§`!S§ = new Loader();
      }
      
      public function load(param1:String) : Boolean
      {
         var cutSceneName:String = param1;
         var loadOk:Boolean = true;
         try
         {
            this.§`!S§.load(new URLRequest(cutSceneName));
         }
         catch(e:Error)
         {
            loadOk = false;
         }
         if(!loadOk)
         {
            return false;
         }
         this.§`!S§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§8x§);
         this.§`!S§.contentLoaderInfo.addEventListener(Event.INIT,this.§%S§);
         this.§`!S§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.§`!S§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§^7§);
         return true;
      }
      
      private function §8x§(param1:Event) : void
      {
         this.§0!4§ = MovieClip(this.§`!S§.content);
         dispatchEvent(new §`A§(§`A§.§;'§));
      }
      
      private function §%S§(param1:Event) : void
      {
         dispatchEvent(new §`A§(§`A§.§7"§));
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §`A§(§`A§.§!!M§));
      }
      
      private function §^7§(param1:ProgressEvent) : void
      {
         dispatchEvent(new §`A§(§`A§.§7!P§));
      }
      
      public function dispose() : void
      {
         if(this.§`!S§)
         {
            this.§`!S§.unloadAndStop();
            this.§`!S§ = null;
         }
         this.§0!4§ = null;
      }
      
      public function get content() : MovieClip
      {
         return this.§0!4§;
      }
   }
}
