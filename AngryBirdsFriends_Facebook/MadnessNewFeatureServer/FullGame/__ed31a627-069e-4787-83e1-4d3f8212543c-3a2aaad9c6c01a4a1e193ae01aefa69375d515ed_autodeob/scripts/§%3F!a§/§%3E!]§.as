package §?!a§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class §>!]§ extends Sprite
   {
       
      
      protected var §2!N§:Loader;
      
      protected var §;!;§:String;
      
      private var §`#]§:int = 0;
      
      private var §+$1§:int = 0;
      
      protected var §#!G§:int = 3;
      
      public function §>!]§()
      {
         super();
      }
      
      public function get bitmapWidth() : int
      {
         return this.§`#]§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§+$1§;
      }
      
      public function get loader() : Loader
      {
         return this.§2!N§;
      }
      
      protected function load() : void
      {
         this.§2!N§ = new Loader();
         this.§2!N§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§2!N§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
         this.§2!N§.load(new URLRequest(this.§;!;§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§2!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2!N§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
         this.§`#]§ = this.loader.width;
         this.§+$1§ = this.loader.height;
         if(this.isVisible)
         {
            addChild(this.§2!N§);
         }
         try
         {
            (this.§2!N§.content as Bitmap).smoothing = true;
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
      
      protected function §3Q§(param1:IOErrorEvent) : void
      {
         this.§2!N§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2!N§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
         --this.§#!G§;
         if(this.§#!G§ > 0)
         {
            this.load();
         }
      }
   }
}
