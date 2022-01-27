package §@§#4
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   
   public class §4!+§ extends Sprite
   {
       
      
      private var §!#%§:BitmapData;
      
      private var §5"1§:String;
      
      private var §&"K§:Loader;
      
      private var § !R§:Number = 0;
      
      private var §!#2§:Number = 0;
      
      public function §4!+§(param1:String, param2:Number, param3:Number)
      {
         super();
         this.§ !R§ = param3;
         this.§!#2§ = param2;
         this.§5"1§ = param1;
         addEventListener(MouseEvent.CLICK,this.§^!R§);
         buttonMode = true;
      }
      
      public function get link() : String
      {
         return this.§5"1§;
      }
      
      public function §3#E§(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         this.§2!q§();
         this.§&"K§ = new Loader();
         this.§&"K§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§&"K§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
         this.§&"K§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!k§);
         this.§&"K§.load(_loc2_,_loc3_);
      }
      
      public function dispose() : void
      {
         if(this.§!#%§)
         {
            this.§!#%§.dispose();
            this.§!#%§ = null;
         }
         removeEventListener(MouseEvent.CLICK,this.§^!R§);
         this.§2!q§();
      }
      
      protected function §2!q§() : void
      {
         if(this.§&"K§)
         {
            try
            {
               this.§&"K§.close();
            }
            catch(e:Error)
            {
            }
            this.§&"K§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§&"K§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
            this.§&"K§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!k§);
            this.§&"K§ = null;
         }
      }
      
      private function §^!R§(param1:MouseEvent) : void
      {
         §4#;§.singleton.§<#'§();
         var _loc2_:URLRequest = new URLRequest(this.§5"1§);
         navigateToURL(_loc2_,"_blank");
      }
      
      private function §9!k§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function §=!'§(param1:IOErrorEvent) : void
      {
         dispatchEvent(param1.clone());
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         this.§!#%§ = _loc2_.bitmapData.clone();
         this.§2#N§(this.§!#%§);
         dispatchEvent(param1.clone());
      }
      
      public function §#!i§() : BitmapData
      {
         if(this.§!#%§)
         {
            this.§2#N§(this.§!#%§);
         }
         return this.§!#%§;
      }
      
      public function §2#N§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = this.§!#2§;
         _loc2_.height = this.§ !R§;
         addChild(_loc2_);
      }
   }
}
