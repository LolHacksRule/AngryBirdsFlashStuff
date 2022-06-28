package §;!q§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §%t§ extends MovieClip
   {
      
      protected static var §1I§:Array = [];
      
      protected static var §9y§:Array = [];
      
      protected static var §9;§:Boolean = true;
      
      public static const §'4§:String = "small";
      
      public static const §@!#§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §`D§:String = "large";
      
      {
         §^I§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §2C§:Loader;
      
      protected var §!x§:String;
      
      protected var §19§:int = 3;
      
      private var §6!,§:int = 0;
      
      private var §3e§:int = 0;
      
      public function §%t§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §^I§(param1:String, param2:Boolean = false) : void
      {
         if(§1I§.indexOf(param1) != -1)
         {
            return;
         }
         §1I§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §!!T§(param1:Boolean) : void
      {
         var _loc2_:§%t§ = null;
         if(§9;§ == param1)
         {
            return;
         }
         §9;§ = param1;
         for each(_loc2_ in §9y§)
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
         addEventListener(Event.ADDED_TO_STAGE,this.§-8§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§8!1§);
         this.§!x§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function §-8§(param1:Event) : void
      {
         if(§9y§.indexOf(this) == -1)
         {
            §9y§.push(this);
         }
      }
      
      private function §8!1§(param1:Event) : void
      {
         if(§9y§.indexOf(this) != -1)
         {
            §9y§.splice(§9y§.indexOf(this),1);
         }
      }
      
      public function get §!'§() : int
      {
         return this.§6!,§;
      }
      
      public function get §`!W§() : int
      {
         return this.§3e§;
      }
      
      protected function load() : void
      {
         this.§2C§ = new Loader();
         this.§2C§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§2C§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
         this.§2C§.load(new URLRequest(this.§!x§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§2C§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2C§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
         this.§6!,§ = this.loader.width;
         this.§3e§ = this.loader.height;
         if(§9;§)
         {
            addChild(this.§2C§);
         }
         try
         {
            (this.§2C§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §<@§(param1:IOErrorEvent) : void
      {
         this.§2C§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§2C§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<@§);
         --this.§19§;
         if(this.§19§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§2C§;
      }
   }
}
