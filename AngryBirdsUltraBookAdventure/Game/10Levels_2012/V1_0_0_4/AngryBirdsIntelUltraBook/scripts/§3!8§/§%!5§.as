package §3!8§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §%!5§ extends MovieClip
   {
      
      protected static var §<§:Array = [];
      
      protected static var §[9§:Array = [];
      
      protected static var §%>§:Boolean = true;
      
      public static const §9!2§:String = "small";
      
      public static const §+a§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §;R§:String = "large";
      
      {
         §`!_§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §`!u§:Loader;
      
      protected var §2!o§:String;
      
      protected var §^!p§:int = 3;
      
      private var §&Z§:int = 0;
      
      private var §3!,§:int = 0;
      
      public function §%!5§(param1:String, param2:Boolean = false, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §`!_§(param1:String, param2:Boolean = false) : void
      {
         if(§<§.indexOf(param1) != -1)
         {
            return;
         }
         §<§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function §]`§(param1:Boolean) : void
      {
         var _loc2_:§%!5§ = null;
         if(§%>§ == param1)
         {
            return;
         }
         §%>§ = param1;
         for each(_loc2_ in §[9§)
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
         addEventListener(Event.ADDED_TO_STAGE,this.§'6§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§@!K§);
         this.§2!o§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function §'6§(param1:Event) : void
      {
         if(§[9§.indexOf(this) == -1)
         {
            §[9§.push(this);
         }
      }
      
      private function §@!K§(param1:Event) : void
      {
         if(§[9§.indexOf(this) != -1)
         {
            §[9§.splice(§[9§.indexOf(this),1);
         }
      }
      
      public function get §+1§() : int
      {
         return this.§&Z§;
      }
      
      public function get §#!b§() : int
      {
         return this.§3!,§;
      }
      
      protected function load() : void
      {
         this.§`!u§ = new Loader();
         this.§`!u§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§`!u§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
         this.§`!u§.load(new URLRequest(this.§2!o§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§`!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
         this.§&Z§ = this.loader.width;
         this.§3!,§ = this.loader.height;
         if(§%>§)
         {
            addChild(this.§`!u§);
         }
         try
         {
            (this.§`!u§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §"[§(param1:IOErrorEvent) : void
      {
         this.§`!u§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§`!u§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§"[§);
         --this.§^!p§;
         if(this.§^!p§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§`!u§;
      }
   }
}
