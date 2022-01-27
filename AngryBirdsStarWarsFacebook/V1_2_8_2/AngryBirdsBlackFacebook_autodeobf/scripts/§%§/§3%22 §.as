package §%§#4
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
   
   public class §3" § extends Sprite
   {
       
      
      private var §7"2§:BitmapData;
      
      private var §4!=§:String;
      
      private var §!"G§:Loader;
      
      private var §]&§:Number = 0;
      
      private var §9#+§:Number = 0;
      
      public function §3" §(param1:String, param2:Number, param3:Number)
      {
         super();
         this.§]&§ = param3;
         this.§9#+§ = param2;
         this.§4!=§ = param1;
         addEventListener(MouseEvent.CLICK,this.§3"%§);
         buttonMode = true;
      }
      
      public function get link() : String
      {
         return this.§4!=§;
      }
      
      public function §>!&§(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         this.§,"?§();
         this.§!"G§ = new Loader();
         this.§!"G§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this.§!"G§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
         this.§!"G§.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;!§);
         this.§!"G§.load(_loc2_,_loc3_);
      }
      
      public function dispose() : void
      {
         if(this.§7"2§)
         {
            this.§7"2§.dispose();
            this.§7"2§ = null;
         }
         removeEventListener(MouseEvent.CLICK,this.§3"%§);
         this.§,"?§();
      }
      
      protected function §,"?§() : void
      {
         if(this.§!"G§)
         {
            try
            {
               this.§!"G§.close();
            }
            catch(e:Error)
            {
            }
            this.§!"G§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§!"G§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
            this.§!"G§.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;!§);
            this.§!"G§ = null;
         }
      }
      
      private function §3"%§(param1:MouseEvent) : void
      {
         §4"#§.singleton.§,]§();
         var _loc2_:URLRequest = new URLRequest(this.§4!=§);
         navigateToURL(_loc2_,"_blank");
      }
      
      private function §;!§(param1:SecurityErrorEvent) : void
      {
      }
      
      private function §[!r§(param1:IOErrorEvent) : void
      {
         dispatchEvent(param1.clone());
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Bitmap = (param1.currentTarget as LoaderInfo).content as Bitmap;
         this.§7"2§ = _loc2_.bitmapData.clone();
         this.§]"Z§(this.§7"2§);
         dispatchEvent(param1.clone());
      }
      
      public function §0b§() : BitmapData
      {
         if(this.§7"2§)
         {
            this.§]"Z§(this.§7"2§);
         }
         return this.§7"2§;
      }
      
      public function §]"Z§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = this.§9#+§;
         _loc2_.height = this.§]&§;
         addChild(_loc2_);
      }
   }
}
