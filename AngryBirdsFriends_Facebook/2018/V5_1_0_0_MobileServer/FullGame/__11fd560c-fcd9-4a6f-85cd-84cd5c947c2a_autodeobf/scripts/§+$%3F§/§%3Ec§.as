package §+$?§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class §>c§ extends Sprite
   {
       
      
      protected var §>v§:Loader;
      
      protected var §>!l§:String;
      
      private var §&@§:int = 0;
      
      private var §8#=§:int = 0;
      
      protected var §-! §:int = 3;
      
      public function §>c§()
      {
         super();
      }
      
      public function get bitmapWidth() : int
      {
         return this.§&@§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§8#=§;
      }
      
      public function get loader() : Loader
      {
         return this.§>v§;
      }
      
      protected function load() : void
      {
         this.§>v§ = new Loader();
         this.§>v§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§>v§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
         this.§>v§.load(new URLRequest(this.§>!l§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§>v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
         this.§&@§ = this.loader.width;
         this.§8#=§ = this.loader.height;
         if(this.isVisible)
         {
            addChild(this.§>v§);
         }
         try
         {
            (this.§>v§.content as Bitmap).smoothing = true;
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
      
      protected function §5L§(param1:IOErrorEvent) : void
      {
         this.§>v§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§>v§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
         --this.§-! §;
         if(this.§-! § > 0)
         {
            this.load();
         }
      }
   }
}
