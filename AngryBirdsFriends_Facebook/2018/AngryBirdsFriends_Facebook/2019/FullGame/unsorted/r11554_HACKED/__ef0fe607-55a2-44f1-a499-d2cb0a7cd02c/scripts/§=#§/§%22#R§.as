package §=#§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class §"#R§ extends Sprite
   {
       
      
      protected var §&![§:Loader;
      
      protected var §`$B§:String;
      
      private var §;W§:int = 0;
      
      private var §+"H§:int = 0;
      
      protected var §0#k§:int = 3;
      
      public function §"#R§()
      {
         super();
      }
      
      public function get bitmapWidth() : int
      {
         return this.§;W§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§+"H§;
      }
      
      public function get loader() : Loader
      {
         return this.§&![§;
      }
      
      protected function load() : void
      {
         this.§&![§ = new Loader();
         this.§&![§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§&![§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%Y§);
         this.§&![§.load(new URLRequest(this.§`$B§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§&![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&![§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%Y§);
         this.§;W§ = this.loader.width;
         this.§+"H§ = this.loader.height;
         if(this.isVisible)
         {
            addChild(this.§&![§);
         }
         try
         {
            (this.§&![§.content as Bitmap).smoothing = true;
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
      
      protected function §%Y§(param1:IOErrorEvent) : void
      {
         this.§&![§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§&![§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%Y§);
         --this.§0#k§;
         if(this.§0#k§ > 0)
         {
            this.load();
         }
      }
   }
}
