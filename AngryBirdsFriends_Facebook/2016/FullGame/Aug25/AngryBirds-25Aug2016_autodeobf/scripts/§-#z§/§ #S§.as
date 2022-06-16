package §-#z§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class § #S§ extends EventDispatcher
   {
      
      public static const §?[§:uint = 1;
       
      
      private var §?!T§:String;
      
      private var § each§:Loader;
      
      private var §+#w§:uint;
      
      private var §0w§:Boolean;
      
      private var §1!"§:Boolean;
      
      public function § #S§(param1:String, param2:uint)
      {
         super();
         this.§?!T§ = param1;
         this.§+#w§ = param2;
         this.§0w§ = false;
         this.§1!"§ = false;
      }
      
      public function load() : void
      {
         if(!this.§0w§ && !this.§1!"§)
         {
            this.§ each§ = new Loader();
            this.§ each§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§ each§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§,'§);
            this.§ each§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§`$#§);
            this.§ each§.load(new URLRequest(this.§?!T§),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      public function §=a§() : Boolean
      {
         return this.§1!"§;
      }
      
      public function §-#!§() : Boolean
      {
         return this.§0w§;
      }
      
      private function §`$#§(param1:ProgressEvent) : void
      {
      }
      
      private function §,'§(param1:IOErrorEvent) : void
      {
         this.§0w§ = false;
         this.§[#-§();
         dispatchEvent(param1.clone());
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§0w§ = true;
         this.§1!"§ = true;
         this.§[#-§();
         dispatchEvent(param1.clone());
      }
      
      private function §[#-§() : void
      {
         if(this.§ each§)
         {
            this.§ each§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§ each§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§,'§);
            this.§ each§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§ each§ = null;
         }
      }
      
      public function get url() : String
      {
         return this.§?!T§;
      }
   }
}
