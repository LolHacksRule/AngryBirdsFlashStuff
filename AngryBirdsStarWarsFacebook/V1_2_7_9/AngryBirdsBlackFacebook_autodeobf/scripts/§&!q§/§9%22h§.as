package §&!q§
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
   
   public class §9"h§ extends Sprite
   {
       
      
      private var §2"b§:BitmapData;
      
      private var §@W§:String;
      
      private var §>,§:Loader;
      
      private var §#2§:Number = 0;
      
      private var §3"v§:Number = 0;
      
      public function §9"h§(param1:String, param2:Number, param3:Number)
      {
         super();
         this.§#2§ = param3;
         this.§3"v§ = param2;
         this.§@W§ = param1;
         addEventListener(MouseEvent.CLICK,this.§#";§);
         buttonMode = true;
      }
      
      public function get link() : String
      {
         return this.§@W§;
      }
      
      public function §6"Q§(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         this.§]">§();
         this.§>,§ = new Loader();
         this.§>,§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§>,§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
         this.§>,§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#Z§);
         this.§>,§.load(_loc2_,_loc3_);
      }
      
      public function dispose() : void
      {
         if(this.§2"b§)
         {
            this.§2"b§.dispose();
            this.§2"b§ = null;
         }
         removeEventListener(MouseEvent.CLICK,this.§#";§);
         this.§]">§();
      }
      
      protected function §]">§() : void
      {
         if(this.§>,§)
         {
            try
            {
               this.§>,§.close();
            }
            catch(e:Error)
            {
            }
            this.§>,§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§>,§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
            this.§>,§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#Z§);
            this.§>,§ = null;
         }
      }
      
      private function §#";§(param1:MouseEvent) : void
      {
         §;"@§.singleton.§@_§();
         var _loc2_:URLRequest = new URLRequest(this.§@W§);
         navigateToURL(_loc2_,"_blank");
      }
      
      private function §#Z§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function §<#1§(param1:IOErrorEvent) : void
      {
         dispatchEvent(param1.clone());
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         this.§2"b§ = _loc2_.bitmapData.clone();
         this.§[V§(this.§2"b§);
         dispatchEvent(param1.clone());
      }
      
      public function § !e§() : BitmapData
      {
         if(this.§2"b§)
         {
            this.§[V§(this.§2"b§);
         }
         return this.§2"b§;
      }
      
      public function §[V§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = this.§3"v§;
         _loc2_.height = this.§#2§;
         addChild(_loc2_);
      }
   }
}
