package § "!§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class §8!x§ extends Sprite
   {
       
      
      protected var §2!H§:Loader;
      
      protected var §"!a§:String;
      
      private var §3!p§:int = 0;
      
      private var §2!6§:int = 0;
      
      protected var §!"I§:int = 3;
      
      public function §8!x§()
      {
         super();
      }
      
      public function get §#";§() : int
      {
         return this.§3!p§;
      }
      
      public function get § %§() : int
      {
         return this.§2!6§;
      }
      
      public function get loader() : Loader
      {
         return this.§2!H§;
      }
      
      protected function load() : void
      {
         this.§2!H§ = new Loader();
         this.§2!H§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§2!H§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
         this.§2!H§.load(new URLRequest(this.§"!a§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§2!H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2!H§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
         this.§3!p§ = this.loader.width;
         this.§2!6§ = this.loader.height;
         if(this.isVisible)
         {
            addChild(this.§2!H§);
         }
         try
         {
            (this.§2!H§.content as Bitmap).smoothing = true;
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
      
      protected function §]!^§(param1:IOErrorEvent) : void
      {
         this.§2!H§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2!H§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
         --this.§!"I§;
         if(this.§!"I§ > 0)
         {
            this.load();
         }
      }
   }
}
