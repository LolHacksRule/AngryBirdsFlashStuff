package §^`§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §14§ extends MovieClip
   {
      
      protected static var §%c§:Array = [];
      
      protected static var §"x§:Array = [];
      
      protected static var §;>§:Boolean = true;
      
      public static const §4,§:String = "small";
      
      public static const §93§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §!!z§:String = "large";
      
      {
         §2W§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §,!a§:Loader;
      
      protected var §64§:String;
      
      protected var §9D§:int = 3;
      
      private var §=L§:int = 0;
      
      private var §=!a§:int = 0;
      
      public function §14§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §2W§(param1:String, param2:Boolean = false) : void
      {
         if(§%c§.indexOf(param1) != -1)
         {
            return;
         }
         §%c§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §["#§(param1:Boolean) : void
      {
         var _loc2_:§14§ = null;
         if(§;>§ == param1)
         {
            return;
         }
         §;>§ = param1;
         for each(_loc2_ in §"x§)
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
         addEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§=!?§);
         this.§64§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function §#Z§(param1:Event) : void
      {
         if(§"x§.indexOf(this) == -1)
         {
            §"x§.push(this);
         }
      }
      
      private function §=!?§(param1:Event) : void
      {
         if(§"x§.indexOf(this) != -1)
         {
            §"x§.splice(§"x§.indexOf(this),1);
         }
      }
      
      public function get §9! §() : int
      {
         return this.§=L§;
      }
      
      public function get §1"$§() : int
      {
         return this.§=!a§;
      }
      
      protected function load() : void
      {
         this.§,!a§ = new Loader();
         this.§,!a§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§,!a§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
         this.§,!a§.load(new URLRequest(this.§64§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         this.§,!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§,!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
         this.§=L§ = this.loader.width;
         this.§=!a§ = this.loader.height;
         if(§;>§)
         {
            addChild(this.§,!a§);
         }
         try
         {
            (this.§,!a§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §%""§(param1:IOErrorEvent) : void
      {
         this.§,!a§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§,!a§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§%""§);
         --this.§9D§;
         if(this.§9D§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§,!a§;
      }
   }
}
