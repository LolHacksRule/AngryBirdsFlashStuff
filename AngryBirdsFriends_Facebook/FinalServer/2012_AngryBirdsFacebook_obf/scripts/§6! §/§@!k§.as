package §6! §
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §@!k§ extends MovieClip
   {
      
      protected static var §6E§:Array = [];
      
      protected static var §"!S§:Array = [];
      
      protected static var §+!$§:Boolean = true;
      
      public static const §,^§:String = "small";
      
      public static const §8v§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §[!U§:String = "large";
      
      {
         §="H§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §?"<§:Loader;
      
      protected var §5!A§:String;
      
      protected var §[!F§:int = 3;
      
      private var §@!&§:int = 0;
      
      private var §;"G§:int = 0;
      
      public function §@!k§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §="H§(param1:String, param2:Boolean = false) : void
      {
         if(§6E§.indexOf(param1) != -1)
         {
            return;
         }
         §6E§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §9"<§(param1:Boolean) : void
      {
         var _loc2_:§@!k§ = null;
         if(§+!$§ == param1)
         {
            return;
         }
         §+!$§ = param1;
         for each(_loc2_ in §"!S§)
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
         this.§5!A§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§"!S§.indexOf(this) == -1)
         {
            §"!S§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§"!S§.indexOf(this) != -1)
         {
            §"!S§.splice(§"!S§.indexOf(this),1);
         }
      }
      
      public function get §#<§() : int
      {
         return this.§@!&§;
      }
      
      public function get §87§() : int
      {
         return this.§;"G§;
      }
      
      protected function load() : void
      {
         this.§?"<§ = new Loader();
         this.§?"<§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§?"<§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
         this.§?"<§.load(new URLRequest(this.§5!A§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§?"<§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§?"<§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
         this.§@!&§ = this.loader.width;
         this.§;"G§ = this.loader.height;
         if(§+!$§)
         {
            addChild(this.§?"<§);
         }
         try
         {
            (this.§?"<§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §<5§(param1:IOErrorEvent) : void
      {
         this.§?"<§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§?"<§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
         --this.§[!F§;
         if(this.§[!F§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§?"<§;
      }
   }
}
