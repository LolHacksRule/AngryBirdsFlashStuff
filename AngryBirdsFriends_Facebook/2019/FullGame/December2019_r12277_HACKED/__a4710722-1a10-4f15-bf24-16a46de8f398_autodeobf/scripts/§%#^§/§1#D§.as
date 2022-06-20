package §%#^§
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class §1#D§ extends EventDispatcher
   {
      
      public static const §6#j§:uint = 1;
       
      
      private var § P§:String;
      
      private var §<#G§:Loader;
      
      private var §4!$§:uint;
      
      private var §0!§:Boolean;
      
      private var §@"h§:Boolean;
      
      public function §1#D§(param1:String, param2:uint)
      {
         super();
         this.§ P§ = param1;
         this.§4!$§ = param2;
         this.§0!§ = false;
         this.§@"h§ = false;
      }
      
      public function load() : void
      {
         if(!this.§0!§ && !this.§@"h§)
         {
            this.§<#G§ = new Loader();
            this.§<#G§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§<#G§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§#$!§);
            this.§<#G§.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.§+#x§);
            this.§<#G§.load(new URLRequest(this.§ P§),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      public function §+Y§() : Boolean
      {
         return this.§@"h§;
      }
      
      public function §#!?§() : Boolean
      {
         return this.§0!§;
      }
      
      private function §+#x§(param1:ProgressEvent) : void
      {
      }
      
      private function §#$!§(param1:IOErrorEvent) : void
      {
         this.§0!§ = false;
         this.§##P§();
         dispatchEvent(param1.clone());
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         this.§0!§ = true;
         this.§@"h§ = true;
         this.§##P§();
         dispatchEvent(param1.clone());
      }
      
      private function §##P§() : void
      {
         if(this.§<#G§)
         {
            this.§<#G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§<#G§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§#$!§);
            this.§<#G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
            this.§<#G§ = null;
         }
      }
      
      public function get url() : String
      {
         return this.§ P§;
      }
   }
}
