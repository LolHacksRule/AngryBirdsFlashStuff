package §2G§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class §""K§ extends Sprite
   {
       
      
      protected var §@$2§:Loader;
      
      protected var § j§:String;
      
      private var §4";§:int = 0;
      
      private var §=#K§:int = 0;
      
      protected var §@!U§:int = 3;
      
      public function §""K§()
      {
         super();
      }
      
      public function get bitmapWidth() : int
      {
         return this.§4";§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§=#K§;
      }
      
      public function get loader() : Loader
      {
         return this.§@$2§;
      }
      
      protected function load() : void
      {
         this.§@$2§ = new Loader();
         this.§@$2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§@$2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
         this.§@$2§.load(new URLRequest(this.§ j§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§@$2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§@$2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
         this.§4";§ = this.loader.width;
         this.§=#K§ = this.loader.height;
         if(this.isVisible)
         {
            addChild(this.§@$2§);
         }
         try
         {
            (this.§@$2§.content as Bitmap).smoothing = true;
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
      
      protected function §4"v§(param1:IOErrorEvent) : void
      {
         this.§@$2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§@$2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
         --this.§@!U§;
         if(this.§@!U§ > 0)
         {
            this.load();
         }
      }
   }
}
