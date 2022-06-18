package §9x§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class §%&§ extends Sprite
   {
       
      
      protected var §<#G§:Loader;
      
      protected var § P§:String;
      
      private var §#$#§:int = 0;
      
      private var §!"X§:int = 0;
      
      protected var §=!H§:int = 3;
      
      public function §%&§()
      {
         super();
      }
      
      public function get bitmapWidth() : int
      {
         return this.§#$#§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§!"X§;
      }
      
      public function get loader() : Loader
      {
         return this.§<#G§;
      }
      
      protected function load() : void
      {
         this.§<#G§ = new Loader();
         this.§<#G§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§<#G§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
         this.§<#G§.load(new URLRequest(this.§ P§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§<#G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§<#G§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
         this.§#$#§ = this.loader.width;
         this.§!"X§ = this.loader.height;
         if(this.isVisible)
         {
            addChild(this.§<#G§);
         }
         try
         {
            (this.§<#G§.content as Bitmap).smoothing = true;
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
      
      protected function §%! §(param1:IOErrorEvent) : void
      {
         this.§<#G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§<#G§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
         --this.§=!H§;
         if(this.§=!H§ > 0)
         {
            this.load();
         }
      }
   }
}
