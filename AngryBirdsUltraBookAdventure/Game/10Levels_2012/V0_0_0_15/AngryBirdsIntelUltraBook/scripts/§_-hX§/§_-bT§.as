package §_-hX§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §_-bT§ extends MovieClip
   {
      
      protected static var §_-00H§:Array = [];
      
      protected static var §_-uP§:Array = [];
      
      protected static var §_-055§:Boolean = true;
      
      public static const §_-0C4§:String = "small";
      
      public static const §_-N2§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §_-xI§:String = "large";
      
      {
         §_-0E6§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §_-l2§:Loader;
      
      protected var §_-M§:String;
      
      protected var §_-3I§:int = 3;
      
      private var §_-sY§:int = 0;
      
      private var §_-Zx§:int = 0;
      
      public function §_-bT§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §_-0E6§(param1:String, param2:Boolean = false) : void
      {
         if(§_-00H§.indexOf(param1) != -1)
         {
            return;
         }
         §_-00H§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §_-03c§(param1:Boolean) : void
      {
         var _loc2_:§_-bT§ = null;
         if(§_-055§ == param1)
         {
            return;
         }
         §_-055§ = param1;
         for each(_loc2_ in §_-uP§)
         {
            if(param1)
            {
               if(!_loc2_.loader.parent)
               {
                  _loc2_.addChild(_loc2_.loader);
               }
            }
            else if(_loc2_.loader && _loc2_.loader.parent == _loc2_)
            {
               _loc2_.removeChild(_loc2_.loader);
            }
         }
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         addEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§_-l5§);
         this.§_-M§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function §_-b-§(param1:Event) : void
      {
         if(§_-uP§.indexOf(this) == -1)
         {
            §_-uP§.push(this);
         }
      }
      
      private function §_-l5§(param1:Event) : void
      {
         if(§_-uP§.indexOf(this) != -1)
         {
            §_-uP§.splice(§_-uP§.indexOf(this),1);
         }
      }
      
      public function get §_-09q§() : int
      {
         return this.§_-sY§;
      }
      
      public function get §_-cD§() : int
      {
         return this.§_-Zx§;
      }
      
      protected function load() : void
      {
         this.§_-l2§ = new Loader();
         this.§_-l2§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§_-l2§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
         this.§_-l2§.load(new URLRequest(this.§_-M§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-l2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
         this.§_-sY§ = this.loader.width;
         this.§_-Zx§ = this.loader.height;
         if(§_-055§)
         {
            addChild(this.§_-l2§);
         }
         try
         {
            (this.§_-l2§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §_-ba§(param1:IOErrorEvent) : void
      {
         this.§_-l2§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§_-l2§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-ba§);
         --this.§_-3I§;
         if(this.§_-3I§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§_-l2§;
      }
   }
}
