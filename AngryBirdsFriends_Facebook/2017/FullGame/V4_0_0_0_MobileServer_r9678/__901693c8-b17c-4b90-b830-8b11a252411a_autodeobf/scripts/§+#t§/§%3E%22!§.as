package §+#t§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class §>"!§ extends Sprite
   {
       
      
      protected var §+"§:Loader;
      
      protected var §>!`§:String;
      
      private var §]$7§:int = 0;
      
      private var §2#I§:int = 0;
      
      protected var § use§:int = 3;
      
      public function §>"!§()
      {
         super();
      }
      
      public function get bitmapWidth() : int
      {
         return this.§]$7§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§2#I§;
      }
      
      public function get loader() : Loader
      {
         return this.§+"§;
      }
      
      protected function load() : void
      {
         this.§+"§ = new Loader();
         this.§+"§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§+"§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
         this.§+"§.load(new URLRequest(this.§>!`§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§+"§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+"§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
         this.§]$7§ = this.loader.width;
         this.§2#I§ = this.loader.height;
         if(this.isVisible)
         {
            addChild(this.§+"§);
         }
         try
         {
            (this.§+"§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function get isVisible() : Boolean
      {
         return true;
      }
      
      protected function §3"`§(param1:IOErrorEvent) : void
      {
         this.§+"§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§+"§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
         --this.§ use§;
         if(this.§ use§ > 0)
         {
            this.load();
         }
      }
   }
}
