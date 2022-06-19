package §1o§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §'8§ extends MovieClip
   {
      
      protected static var §7!6§:Array = [];
      
      protected static var §2,§:Array = [];
      
      protected static var §1![§:Boolean = true;
      
      public static const §+!L§:String = "small";
      
      public static const §"!Y§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §];§:String = "large";
      
      {
         §#_§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §^t§:Loader;
      
      protected var §9!P§:String;
      
      protected var §1D§:int = 3;
      
      private var §+!=§:int = 0;
      
      private var §>K§:int = 0;
      
      public function §'8§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §#_§(param1:String, param2:Boolean = false) : void
      {
         if(§7!6§.indexOf(param1) != -1)
         {
            return;
         }
         §7!6§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §,Y§(param1:Boolean) : void
      {
         var _loc2_:§'8§ = null;
         if(§1![§ == param1)
         {
            return;
         }
         §1![§ = param1;
         for each(_loc2_ in §2,§)
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
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.§9!P§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§2,§.indexOf(this) == -1)
         {
            §2,§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§2,§.indexOf(this) != -1)
         {
            §2,§.splice(§2,§.indexOf(this),1);
         }
      }
      
      public function get §#">§() : int
      {
         return this.§+!=§;
      }
      
      public function get §;!J§() : int
      {
         return this.§>K§;
      }
      
      protected function load() : void
      {
         this.§^t§ = new Loader();
         this.§^t§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§^t§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§9"<§);
         this.§^t§.load(new URLRequest(this.§9!P§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§^t§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^t§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9"<§);
         this.§+!=§ = this.loader.width;
         this.§>K§ = this.loader.height;
         if(§1![§)
         {
            addChild(this.§^t§);
         }
         try
         {
            (this.§^t§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §9"<§(param1:IOErrorEvent) : void
      {
         this.§^t§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§^t§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§9"<§);
         --this.§1D§;
         if(this.§1D§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§^t§;
      }
   }
}
