package § " §
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §+!p§ extends MovieClip
   {
      
      protected static var §+!K§:Array = [];
      
      protected static var §+f§:Array = [];
      
      protected static var §;!c§:Boolean = true;
      
      public static const §1s§:String = "small";
      
      public static const §'"6§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §7!G§:String = "large";
      
      {
         §`!2§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §]D§:Loader;
      
      protected var §7"=§:String;
      
      protected var §<k§:int = 3;
      
      private var §+!g§:int = 0;
      
      private var §7@§:int = 0;
      
      public function §+!p§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §`!2§(param1:String, param2:Boolean = false) : void
      {
         if(§+!K§.indexOf(param1) != -1)
         {
            return;
         }
         §+!K§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §]"0§(param1:Boolean) : void
      {
         var _loc2_:§+!p§ = null;
         if(§;!c§ == param1)
         {
            return;
         }
         §;!c§ = param1;
         for each(_loc2_ in §+f§)
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
         this.§7"=§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         if(§+f§.indexOf(this) == -1)
         {
            §+f§.push(this);
         }
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         if(§+f§.indexOf(this) != -1)
         {
            §+f§.splice(§+f§.indexOf(this),1);
         }
      }
      
      public function get §!b§() : int
      {
         return this.§+!g§;
      }
      
      public function get §6!n§() : int
      {
         return this.§7@§;
      }
      
      protected function load() : void
      {
         this.§]D§ = new Loader();
         this.§]D§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§]D§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
         this.§]D§.load(new URLRequest(this.§7"=§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§]D§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
         this.§+!g§ = this.loader.width;
         this.§7@§ = this.loader.height;
         if(§;!c§)
         {
            addChild(this.§]D§);
         }
         try
         {
            (this.§]D§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §>0§(param1:IOErrorEvent) : void
      {
         this.§]D§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§]D§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
         --this.§<k§;
         if(this.§<k§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§]D§;
      }
   }
}
