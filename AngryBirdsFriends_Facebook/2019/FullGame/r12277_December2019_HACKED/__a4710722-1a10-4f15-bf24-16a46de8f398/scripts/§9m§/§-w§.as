package §9m§
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
   
   public class §-w§ extends Sprite
   {
      
      private static const §%!r§:int = 2000;
      
      public static const §0#a§:Number = 0.75;
       
      
      private var §`#X§:Bitmap;
      
      private var §[#E§:BitmapData;
      
      private var §null§:String;
      
      private var §6!2§:String;
      
      private var §5#R§:String;
      
      private var §2$<§:Vector.<URLLoader>;
      
      private var §9![§:String;
      
      private var §""c§:String;
      
      private var §>!3§:Object;
      
      private var §6!A§:Number;
      
      private var §-!F§:Boolean;
      
      private var §]$§:Number;
      
      public function §-w§(param1:String, param2:String, param3:String)
      {
         super();
         this.§null§ = param1;
         this.§6!2§ = param2;
         this.§5#R§ = param3;
         addEventListener(MouseEvent.CLICK,this.§#!O§);
         buttonMode = true;
         scaleX = scaleY = §0#a§;
         x = 47;
         this.§-!F§ = false;
      }
      
      public function get §=e§() : String
      {
         return this.§5#R§;
      }
      
      public function get §+"q§() : String
      {
         return this.§6!2§;
      }
      
      public function get link() : String
      {
         return this.§null§;
      }
      
      public function §3"I§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#i§);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §#!O§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc2_:URLRequest = new URLRequest(this.§null§);
         navigateToURL(_loc2_,"_blank");
         this.§`k§(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var bitmapContent:Bitmap = null;
         var e:Event = param1;
         try
         {
            bitmapContent = (e.currentTarget as LoaderInfo).content as Bitmap;
            this.§[#E§ = bitmapContent.bitmapData.clone();
            this.§5"e§(this.§[#E§);
         }
         catch(e:Error)
         {
            if(AngryBirdsBase.DEBUG_MODE_ENABLED)
            {
               throw e;
            }
         }
      }
      
      public function §5!K§() : BitmapData
      {
         if(this.§[#E§)
         {
            this.§5"e§(this.§[#E§);
         }
         return this.§[#E§;
      }
      
      public function §5"e§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §0#E§.§<!z§;
         _loc2_.height = §0#E§.§-!Z§;
         addChild(_loc2_);
      }
      
      public function §1"K§(param1:String, param2:String, param3:String, param4:String) : void
      {
         this.§9![§ = param1 + "?accessToken=" + param4;
         this.§""c§ = param2 + "?accessToken=" + param4;
         this.§>!3§ = new Object();
         this.§>!3§["did"] = param3;
         this.§>!3§["accessToken"] = param4;
         this.§>!3§["adId"] = this.§5#R§;
         this.§>!3§["linkId"] = this.§6!2§;
      }
      
      private function §`k§(param1:Boolean) : void
      {
         var _loc2_:URLRequest = new URLRequest(!!param1 ? this.§9![§ : this.§""c§);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.requestHeaders = [new URLRequestHeader("Content-Type","application/x-www-form-urlencoded")];
         var _loc3_:URLVariables = new URLVariables();
         _loc3_["did"] = this.§>!3§.did;
         _loc3_["accessToken"] = this.§>!3§.accessToken;
         _loc3_["adId"] = this.§>!3§.adId;
         _loc3_["linkId"] = this.§>!3§.linkId;
         _loc2_.data = _loc3_;
         if(!this.§2$<§)
         {
            this.§2$<§ = new Vector.<URLLoader>();
         }
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§;G§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§;G§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;G§);
         _loc4_.load(_loc2_);
         this.§2$<§.push(_loc4_);
         this.§-!F§ = true;
      }
      
      private function §;G§(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2$<§.length)
         {
            if(this.§2$<§[_loc2_] == param1.target)
            {
               if(param1 is ErrorEvent)
               {
               }
               this.§2$<§[_loc2_].removeEventListener(Event.COMPLETE,this.§;G§);
               this.§2$<§[_loc2_].removeEventListener(IOErrorEvent.IO_ERROR,this.§;G§);
               this.§2$<§[_loc2_].removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;G§);
               this.§2$<§[_loc2_] = null;
               this.§2$<§.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function §=!§(param1:Boolean) : void
      {
         if(!this.§-!F§)
         {
            this.§6!A§ = 0;
            this.§]$§ = getTimer();
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
         if(!this.§-!F§)
         {
            this.§6!A§ += getTimer() - this.§]$§;
            if(this.§6!A§ >= §%!r§)
            {
               this.§`k§(true);
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            this.§]$§ = getTimer();
         }
      }
      
      public function §?#g§() : void
      {
         this.§-!F§ = false;
      }
      
      protected function §%! §(param1:IOErrorEvent) : void
      {
      }
      
      protected function §!#i§(param1:SecurityErrorEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            throw new SecurityError(param1.text,param1.errorID);
         }
      }
   }
}
