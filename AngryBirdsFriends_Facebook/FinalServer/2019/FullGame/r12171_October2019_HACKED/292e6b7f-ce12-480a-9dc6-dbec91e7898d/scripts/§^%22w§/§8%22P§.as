package §^"w§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   import flash.utils.getTimer;
   
   public class §8"P§ extends Sprite
   {
      
      private static const §^"!§:int = 2000;
      
      public static const §]#o§:Number = 0.75;
       
      
      private var § #Q§:Bitmap;
      
      private var §[#v§:BitmapData;
      
      private var §7!N§:String;
      
      private var §get §:String;
      
      private var §9X§:String;
      
      private var §1"6§:Vector.<URLLoader>;
      
      private var §,"b§:String;
      
      private var §6"+§:String;
      
      private var §["§:Object;
      
      private var §""J§:Number;
      
      private var §?o§:Boolean;
      
      private var §-#"§:Number;
      
      public function §8"P§(param1:String, param2:String, param3:String)
      {
         super();
         this.§7!N§ = param1;
         this.§get § = param2;
         this.§9X§ = param3;
         addEventListener(MouseEvent.CLICK,this.§0!&§);
         buttonMode = true;
         scaleX = scaleY = §]#o§;
         x = 47;
         this.§?o§ = false;
      }
      
      public function get §,!;§() : String
      {
         return this.§9X§;
      }
      
      public function get §2!3§() : String
      {
         return this.§get §;
      }
      
      public function get link() : String
      {
         return this.§7!N§;
      }
      
      public function §6T§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^"0§);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §0!&§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc2_:URLRequest = new URLRequest(this.§7!N§);
         navigateToURL(_loc2_,"_blank");
         this.§3?§(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var bitmapContent:Bitmap = null;
         var e:Event = param1;
         try
         {
            bitmapContent = (e.currentTarget as LoaderInfo).content as Bitmap;
            this.§[#v§ = bitmapContent.bitmapData.clone();
            this.§5"7§(this.§[#v§);
         }
         catch(e:Error)
         {
            if(AngryBirdsBase.DEBUG_MODE_ENABLED)
            {
               throw e;
            }
         }
      }
      
      public function § $8§() : BitmapData
      {
         if(this.§[#v§)
         {
            this.§5"7§(this.§[#v§);
         }
         return this.§[#v§;
      }
      
      public function §5"7§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §<#l§.§!#a§;
         _loc2_.height = §<#l§.§;"T§;
         addChild(_loc2_);
      }
      
      public function §0"B§(param1:String, param2:String, param3:String, param4:String) : void
      {
         this.§,"b§ = param1 + "?accessToken=" + param4;
         this.§6"+§ = param2 + "?accessToken=" + param4;
         this.§["§ = new Object();
         this.§["§["did"] = param3;
         this.§["§["accessToken"] = param4;
         this.§["§["adId"] = this.§9X§;
         this.§["§["linkId"] = this.§get §;
      }
      
      private function §3?§(param1:Boolean) : void
      {
         var _loc2_:URLRequest = new URLRequest(!!param1 ? this.§,"b§ : this.§6"+§);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.requestHeaders = [new URLRequestHeader("Content-Type","application/x-www-form-urlencoded")];
         var _loc3_:URLVariables = new URLVariables();
         _loc3_["did"] = this.§["§.did;
         _loc3_["accessToken"] = this.§["§.accessToken;
         _loc3_["adId"] = this.§["§.adId;
         _loc3_["linkId"] = this.§["§.linkId;
         _loc2_.data = _loc3_;
         if(!this.§1"6§)
         {
            this.§1"6§ = new Vector.<URLLoader>();
         }
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§;#d§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§;#d§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;#d§);
         _loc4_.load(_loc2_);
         this.§1"6§.push(_loc4_);
         this.§?o§ = true;
      }
      
      private function §;#d§(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1"6§.length)
         {
            if(this.§1"6§[_loc2_] == param1.target)
            {
               if(param1 is ErrorEvent)
               {
               }
               this.§1"6§[_loc2_].removeEventListener(Event.COMPLETE,this.§;#d§);
               this.§1"6§[_loc2_].removeEventListener(IOErrorEvent.IO_ERROR,this.§;#d§);
               this.§1"6§[_loc2_].removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;#d§);
               this.§1"6§[_loc2_] = null;
               this.§1"6§.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function §7#-§(param1:Boolean) : void
      {
         if(!this.§?o§)
         {
            this.§""J§ = 0;
            this.§-#"§ = getTimer();
            if(param1 == true)
            {
               addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            else
            {
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(!this.§?o§)
         {
            this.§""J§ += getTimer() - this.§-#"§;
            if(this.§""J§ >= §^"!§)
            {
               this.§3?§(true);
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            this.§-#"§ = getTimer();
         }
      }
      
      public function §9r§() : void
      {
         this.§?o§ = false;
      }
      
      protected function §4"v§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §^"0§(param1:SecurityErrorEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            throw new SecurityError(param1.text,param1.errorID);
         }
      }
   }
}
