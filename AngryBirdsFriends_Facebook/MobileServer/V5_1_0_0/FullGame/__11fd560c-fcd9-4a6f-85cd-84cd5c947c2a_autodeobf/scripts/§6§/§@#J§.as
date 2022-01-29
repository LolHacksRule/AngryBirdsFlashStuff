package §6§#3
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
   
   public class §@#J§ extends Sprite
   {
      
      private static const §6"f§:int = 2000;
      
      public static const §!!$§:Number = 0.75;
       
      
      private var §!l§:Bitmap;
      
      private var §%s§:BitmapData;
      
      private var §5#e§:String;
      
      private var §?!p§:String;
      
      private var §]W§:String;
      
      private var §5!W§:Vector.<URLLoader>;
      
      private var §0""§:String;
      
      private var §]"_§:String;
      
      private var §4!X§:Object;
      
      private var §&"b§:Number;
      
      private var §^#"§:Boolean;
      
      private var §"$8§:Number;
      
      public function §@#J§(param1:String, param2:String, param3:String)
      {
         super();
         this.§5#e§ = param1;
         this.§?!p§ = param2;
         this.§]W§ = param3;
         addEventListener(MouseEvent.CLICK,this.§-!K§);
         buttonMode = true;
         scaleX = scaleY = §!!$§;
         x = 47;
         this.§^#"§ = false;
      }
      
      public function get §?#t§() : String
      {
         return this.§]W§;
      }
      
      public function get §>#W§() : String
      {
         return this.§?!p§;
      }
      
      public function get link() : String
      {
         return this.§5#e§;
      }
      
      public function §=!Q§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1#o§);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §-!K§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc2_:URLRequest = new URLRequest(this.§5#e§);
         navigateToURL(_loc2_,"_blank");
         this.§[!A§(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var bitmapContent:Bitmap = null;
         var e:Event = param1;
         try
         {
            bitmapContent = (e.currentTarget as LoaderInfo).content as Bitmap;
            this.§%s§ = bitmapContent.bitmapData.clone();
            this.§"!y§(this.§%s§);
         }
         catch(e:Error)
         {
            if(AngryBirdsBase.DEBUG_MODE_ENABLED)
            {
               throw e;
            }
         }
      }
      
      public function §^y§() : BitmapData
      {
         if(this.§%s§)
         {
            this.§"!y§(this.§%s§);
         }
         return this.§%s§;
      }
      
      public function §"!y§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §<#Q§.§#"=§;
         _loc2_.height = §<#Q§.§2#$§;
         addChild(_loc2_);
      }
      
      public function §%#U§(param1:String, param2:String, param3:String, param4:String) : void
      {
         this.§0""§ = param1 + "?accessToken=" + param4;
         this.§]"_§ = param2 + "?accessToken=" + param4;
         this.§4!X§ = new Object();
         this.§4!X§["did"] = param3;
         this.§4!X§["accessToken"] = param4;
         this.§4!X§["adId"] = this.§]W§;
         this.§4!X§["linkId"] = this.§?!p§;
      }
      
      private function §[!A§(param1:Boolean) : void
      {
         var _loc2_:URLRequest = new URLRequest(!!param1 ? this.§0""§ : this.§]"_§);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.requestHeaders = [new URLRequestHeader("Content-Type","application/x-www-form-urlencoded")];
         var _loc3_:URLVariables = new URLVariables();
         _loc3_["did"] = this.§4!X§.did;
         _loc3_["accessToken"] = this.§4!X§.accessToken;
         _loc3_["adId"] = this.§4!X§.adId;
         _loc3_["linkId"] = this.§4!X§.linkId;
         _loc2_.data = _loc3_;
         if(!this.§5!W§)
         {
            this.§5!W§ = new Vector.<URLLoader>();
         }
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§-!`§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§-!`§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!`§);
         _loc4_.load(_loc2_);
         this.§5!W§.push(_loc4_);
         this.§^#"§ = true;
      }
      
      private function §-!`§(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!W§.length)
         {
            if(this.§5!W§[_loc2_] == param1.target)
            {
               if(param1 is ErrorEvent)
               {
               }
               this.§5!W§[_loc2_].removeEventListener(Event.COMPLETE,this.§-!`§);
               this.§5!W§[_loc2_].removeEventListener(IOErrorEvent.IO_ERROR,this.§-!`§);
               this.§5!W§[_loc2_].removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!`§);
               this.§5!W§[_loc2_] = null;
               this.§5!W§.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function §<!y§(param1:Boolean) : void
      {
         if(!this.§^#"§)
         {
            this.§&"b§ = 0;
            this.§"$8§ = getTimer();
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
         if(!this.§^#"§)
         {
            this.§&"b§ += getTimer() - this.§"$8§;
            if(this.§&"b§ >= §6"f§)
            {
               this.§[!A§(true);
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            this.§"$8§ = getTimer();
         }
      }
      
      public function §8#Q§() : void
      {
         this.§^#"§ = false;
      }
      
      protected function §5L§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §1#o§(param1:SecurityErrorEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            throw new SecurityError(param1.text,param1.errorID);
         }
      }
   }
}
