package § "I§
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.system.Security;
   
   public class §?!%§ extends MovieClip
   {
      
      protected static var §="s§:Array = [];
      
      protected static var §<=§:Array = [];
      
      protected static var §%C§:Boolean = true;
      
      public static const §?"n§:String = "small";
      
      public static const §^"g§:String = "square";
      
      public static const NORMAL:String = "normal";
      
      public static const §4#%§:String = "large";
      
      {
         §!"S§("fbcdn-profile-a.akamaihd.net",true);
      }
      
      protected var §6!J§:Boolean = false;
      
      protected var §`!E§:Loader;
      
      protected var §@"b§:String;
      
      protected var §""v§:int = 3;
      
      private var §15§:int = 0;
      
      private var §,9§:int = 0;
      
      public function §?!%§(param1:String, param2:Boolean = true, param3:String = "square")
      {
         super();
         this.init(param1,param2,param3);
      }
      
      protected static function §!"S§(param1:String, param2:Boolean = false) : void
      {
         if(§="s§.indexOf(param1) != -1)
         {
            return;
         }
         §="s§.push(param1);
         Security.loadPolicyFile((!!param2 ? "https://" : "http://") + param1 + "/crossdomain.xml");
      }
      
      public static function § X§(param1:Boolean) : void
      {
         var _loc2_:§?!%§ = null;
         if(§%C§ == param1)
         {
            return;
         }
         §%C§ = param1;
         for each(_loc2_ in §<=§)
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
      
      public function get isLoaded() : Boolean
      {
         return this.§6!J§;
      }
      
      protected function init(param1:String, param2:Boolean, param3:String) : void
      {
         addEventListener(Event.ADDED_TO_STAGE,this.§[D§);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§%!w§);
         this.§@"b§ = (!!param2 ? "https://" : "http://") + "graph.facebook.com/" + param1 + "/picture?type=" + param3;
         this.load();
      }
      
      private function §[D§(param1:Event) : void
      {
         if(§<=§.indexOf(this) == -1)
         {
            §<=§.push(this);
         }
      }
      
      private function §%!w§(param1:Event) : void
      {
         if(§<=§.indexOf(this) != -1)
         {
            §<=§.splice(§<=§.indexOf(this),1);
         }
      }
      
      public function get bitmapWidth() : int
      {
         return this.§15§;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§,9§;
      }
      
      protected function load() : void
      {
         this.§`!E§ = new Loader();
         this.§`!E§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§`!E§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
         this.§`!E§.load(new URLRequest(this.§@"b§),new LoaderContext(true));
      }
      
      protected function onComplete(param1:Event) : void
      {
         var e:Event = param1;
         this.§`!E§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§`!E§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
         this.§15§ = this.loader.width;
         this.§,9§ = this.loader.height;
         this.§6!J§ = true;
         if(§%C§)
         {
            addChild(this.§`!E§);
         }
         try
         {
            (this.§`!E§.content as Bitmap).smoothing = true;
         }
         catch(e:Error)
         {
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §<#1§(param1:IOErrorEvent) : void
      {
         this.§`!E§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
         this.§`!E§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
         --this.§""v§;
         if(this.§""v§ > 0)
         {
            this.load();
         }
      }
      
      public function get loader() : Loader
      {
         return this.§`!E§;
      }
   }
}
