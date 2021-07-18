package §,n§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class §?"k§ extends Sprite
   {
       
      
      protected var § each§:Loader;
      
      protected var §?!T§:String;
      
      private var §`!f§:int = 0;
      
      private var §^"k§:int = 0;
      
      protected var §=x§:int = 3;
      
      public function §?"k§()
      {
         super();
      }
      
      public function get bitmapWidth() : int
      {
         return this.§`!f§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§^"k§;
      }
      
      public function get loader() : Loader
      {
         return this.§ each§;
      }
      
      protected function load() : void
      {
         this.§ each§ = new Loader();
         this.§ each§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§ each§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
         this.§ each§.load(new URLRequest(this.§?!T§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§ each§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§ each§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
         this.§`!f§ = this.loader.width;
         this.§^"k§ = this.loader.height;
         if(this.isVisible)
         {
            addChild(this.§ each§);
         }
         try
         {
            (this.§ each§.content as Bitmap).smoothing = true;
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
      
      protected function §5"R§(param1:IOErrorEvent) : void
      {
         this.§ each§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§ each§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
         --this.§=x§;
         if(this.§=x§ > 0)
         {
            this.load();
         }
      }
   }
}
