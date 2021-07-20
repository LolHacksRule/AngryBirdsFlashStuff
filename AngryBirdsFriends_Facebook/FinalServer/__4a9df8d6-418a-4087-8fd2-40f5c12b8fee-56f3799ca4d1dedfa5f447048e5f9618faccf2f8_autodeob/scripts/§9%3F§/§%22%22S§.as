package §9?§
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
   
   public class §""S§ extends Sprite
   {
      
      private static const §1"u§:int = 2000;
      
      public static const §+!F§:Number = 0.75;
       
      
      private var §+!p§:Bitmap;
      
      private var §=!]§:BitmapData;
      
      private var §#!o§:String;
      
      private var §-#k§:String;
      
      private var §1K§:String;
      
      private var §+#H§:Vector.<URLLoader>;
      
      private var §`#E§:String;
      
      private var §@Q§:String;
      
      private var §?"R§:Object;
      
      private var §@"Z§:Number;
      
      private var §true§:Boolean;
      
      private var §-!K§:Number;
      
      public function §""S§(param1:String, param2:String, param3:String)
      {
         super();
         this.§#!o§ = param1;
         this.§-#k§ = param2;
         this.§1K§ = param3;
         addEventListener(MouseEvent.CLICK,this.§?"V§);
         buttonMode = true;
         scaleX = scaleY = §+!F§;
         x = 47;
         this.§true§ = false;
      }
      
      public function get §>#%§() : String
      {
         return this.§1K§;
      }
      
      public function get §="Q§() : String
      {
         return this.§-#k§;
      }
      
      public function get link() : String
      {
         return this.§#!o§;
      }
      
      public function §!!f§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-O§);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §?"V§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc2_:URLRequest = new URLRequest(this.§#!o§);
         navigateToURL(_loc2_,"_blank");
         this.§<",§(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var bitmapContent:Bitmap = null;
         var e:Event = param1;
         try
         {
            bitmapContent = (e.currentTarget as LoaderInfo).content as Bitmap;
            this.§=!]§ = bitmapContent.bitmapData.clone();
            this.§2$#§(this.§=!]§);
         }
         catch(e:Error)
         {
            if(AngryBirdsBase.DEBUG_MODE_ENABLED)
            {
               throw e;
            }
         }
      }
      
      public function §[#e§() : BitmapData
      {
         if(this.§=!]§)
         {
            this.§2$#§(this.§=!]§);
         }
         return this.§=!]§;
      }
      
      public function §2$#§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §'"U§.§-"N§;
         _loc2_.height = §'"U§.§9!H§;
         addChild(_loc2_);
      }
      
      public function §>#e§(param1:String, param2:String, param3:String, param4:String) : void
      {
         this.§`#E§ = param1 + "?accessToken=" + param4;
         this.§@Q§ = param2 + "?accessToken=" + param4;
         this.§?"R§ = new Object();
         this.§?"R§["did"] = param3;
         this.§?"R§["accessToken"] = param4;
         this.§?"R§["adId"] = this.§1K§;
         this.§?"R§["linkId"] = this.§-#k§;
      }
      
      private function §<",§(param1:Boolean) : void
      {
         var _loc2_:URLRequest = new URLRequest(!!param1 ? this.§`#E§ : this.§@Q§);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.requestHeaders = [new URLRequestHeader("Content-Type","application/x-www-form-urlencoded")];
         var _loc3_:URLVariables = new URLVariables();
         _loc3_["did"] = this.§?"R§.did;
         _loc3_["accessToken"] = this.§?"R§.accessToken;
         _loc3_["adId"] = this.§?"R§.adId;
         _loc3_["linkId"] = this.§?"R§.linkId;
         _loc2_.data = _loc3_;
         if(!this.§+#H§)
         {
            this.§+#H§ = new Vector.<URLLoader>();
         }
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§3p§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§3p§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3p§);
         _loc4_.load(_loc2_);
         this.§+#H§.push(_loc4_);
         this.§true§ = true;
      }
      
      private function §3p§(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+#H§.length)
         {
            if(this.§+#H§[_loc2_] == param1.target)
            {
               if(param1 is ErrorEvent)
               {
               }
               this.§+#H§[_loc2_].removeEventListener(Event.COMPLETE,this.§3p§);
               this.§+#H§[_loc2_].removeEventListener(IOErrorEvent.IO_ERROR,this.§3p§);
               this.§+#H§[_loc2_].removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3p§);
               this.§+#H§[_loc2_] = null;
               this.§+#H§.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function §7!W§(param1:Boolean) : void
      {
         if(!this.§true§)
         {
            this.§@"Z§ = 0;
            this.§-!K§ = getTimer();
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
         if(!this.§true§)
         {
            this.§@"Z§ += getTimer() - this.§-!K§;
            if(this.§@"Z§ >= §1"u§)
            {
               this.§<",§(true);
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            this.§-!K§ = getTimer();
         }
      }
      
      public function §?#x§() : void
      {
         this.§true§ = false;
      }
      
      protected function §3Q§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §-O§(param1:SecurityErrorEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            throw new SecurityError(param1.text,param1.errorID);
         }
      }
   }
}
