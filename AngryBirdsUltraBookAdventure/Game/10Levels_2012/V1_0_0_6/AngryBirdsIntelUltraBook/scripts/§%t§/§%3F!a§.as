package §%t§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §?!a§ extends MovieClip
   {
      
      protected static var §+Q§:Array = [];
      
      protected static var §'$§:Array = [];
      
      protected static var §-G§:Boolean = true;
      
      public static const §?!H§:String = "small";
      
      public static const §+6§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §@7§:String = "large";
      
      {
         §-!I§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §`!a§:Loader;
      
      protected var §>!n§:String;
      
      protected var §2!K§:int = 3;
      
      private var §7S§:int = 0;
      
      private var §%e§:int = 0;
      
      public function §?!a§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §-!I§(param1:String, param2:Boolean = false) : void
      {
         if(§+Q§.indexOf(param1) != -1)
         {
            return;
         }
         §+Q§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §2q§(param1:Boolean) : void
      {
         var _loc2_:§?!a§ = null;
         if(§-G§ == param1)
         {
            return;
         }
         §-G§ = param1;
         for each(_loc2_ in §'$§)
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
         addEventListener(Event.ADDED_TO_STAGE,this.§+T§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§<I§);
         this.§>!n§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function §+T§(param1:Event) : void
      {
         if(§'$§.indexOf(this) == -1)
         {
            §'$§.push(this);
         }
      }
      
      private function §<I§(param1:Event) : void
      {
         if(§'$§.indexOf(this) != -1)
         {
            §'$§.splice(§'$§.indexOf(this),1);
         }
      }
      
      public function get §'!+§() : int
      {
         return this.§7S§;
      }
      
      public function get §?x§() : int
      {
         return this.§%e§;
      }
      
      protected function load() : void
      {
         this.§`!a§ = new Loader();
         this.§`!a§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§`!a§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
         this.§`!a§.load(new URLRequest(this.§>!n§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         this.§`!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§`!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
         this.§7S§ = this.loader.width;
         this.§%e§ = this.loader.height;
         if(§-G§)
         {
            addChild(this.§`!a§);
         }
         try
         {
            (this.§`!a§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §9s§(param1:IOErrorEvent) : void
      {
         this.§`!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§`!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9s§);
         --this.§2!K§;
         if(this.§2!K§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§`!a§;
      }
   }
}
