package §%#x§
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
   
   public class §5"j§ extends Sprite
   {
      
      private static const §>#9§:int = 2000;
      
      public static const §#!o§:Number = 0.75;
       
      
      private var §]"t§:Bitmap;
      
      private var §&#Y§:BitmapData;
      
      private var §=";§:String;
      
      private var §="q§:String;
      
      private var §,]§:String;
      
      private var §+`§:Vector.<URLLoader>;
      
      private var §"!Y§:String;
      
      private var §&"%§:String;
      
      private var §<"J§:Object;
      
      private var §^"P§:Number;
      
      private var §[$6§:Boolean;
      
      private var §8=§:Number;
      
      public function §5"j§(param1:String, param2:String, param3:String)
      {
         super();
         this.§=";§ = param1;
         this.§="q§ = param2;
         this.§,]§ = param3;
         addEventListener(MouseEvent.CLICK,this.§+"u§);
         buttonMode = true;
         scaleX = scaleY = §#!o§;
         x = 47;
         this.§[$6§ = false;
      }
      
      public function get §^M§() : String
      {
         return this.§,]§;
      }
      
      public function get §`$9§() : String
      {
         return this.§="q§;
      }
      
      public function get link() : String
      {
         return this.§=";§;
      }
      
      public function §,"7§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`%§);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §+"u§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc2_:URLRequest = new URLRequest(this.§=";§);
         navigateToURL(_loc2_,"_blank");
         this.§,"l§(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var bitmapContent:Bitmap = null;
         var e:Event = param1;
         try
         {
            bitmapContent = (e.currentTarget as LoaderInfo).content as Bitmap;
            this.§&#Y§ = bitmapContent.bitmapData.clone();
            this.§-$0§(this.§&#Y§);
         }
         catch(e:Error)
         {
            if(AngryBirdsBase.DEBUG_MODE_ENABLED)
            {
               throw e;
            }
         }
      }
      
      public function §&i§() : BitmapData
      {
         if(this.§&#Y§)
         {
            this.§-$0§(this.§&#Y§);
         }
         return this.§&#Y§;
      }
      
      public function §-$0§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §>#q§.§3!?§;
         _loc2_.height = §>#q§.§<#x§;
         addChild(_loc2_);
      }
      
      public function §=#-§(param1:String, param2:String, param3:String, param4:String) : void
      {
         this.§"!Y§ = param1 + "?accessToken=" + param4;
         this.§&"%§ = param2 + "?accessToken=" + param4;
         this.§<"J§ = new Object();
         this.§<"J§["did"] = param3;
         this.§<"J§["accessToken"] = param4;
         this.§<"J§["adId"] = this.§,]§;
         this.§<"J§["linkId"] = this.§="q§;
      }
      
      private function §,"l§(param1:Boolean) : void
      {
         var _loc2_:URLRequest = new URLRequest(!!param1 ? this.§"!Y§ : this.§&"%§);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.requestHeaders = [new URLRequestHeader("Content-Type","application/x-www-form-urlencoded")];
         var _loc3_:URLVariables = new URLVariables();
         _loc3_["did"] = this.§<"J§.did;
         _loc3_["accessToken"] = this.§<"J§.accessToken;
         _loc3_["adId"] = this.§<"J§.adId;
         _loc3_["linkId"] = this.§<"J§.linkId;
         _loc2_.data = _loc3_;
         if(!this.§+`§)
         {
            this.§+`§ = new Vector.<URLLoader>();
         }
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§3#e§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§3#e§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3#e§);
         _loc4_.load(_loc2_);
         this.§+`§.push(_loc4_);
         this.§[$6§ = true;
      }
      
      private function §3#e§(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+`§.length)
         {
            if(this.§+`§[_loc2_] == param1.target)
            {
               if(param1 is ErrorEvent)
               {
               }
               this.§+`§[_loc2_].removeEventListener(Event.COMPLETE,this.§3#e§);
               this.§+`§[_loc2_].removeEventListener(IOErrorEvent.IO_ERROR,this.§3#e§);
               this.§+`§[_loc2_].removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§3#e§);
               this.§+`§[_loc2_] = null;
               this.§+`§.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function §;#M§(param1:Boolean) : void
      {
         if(!this.§[$6§)
         {
            this.§^"P§ = 0;
            this.§8=§ = getTimer();
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
         if(!this.§[$6§)
         {
            this.§^"P§ += getTimer() - this.§8=§;
            if(this.§^"P§ >= §>#9§)
            {
               this.§,"l§(true);
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            this.§8=§ = getTimer();
         }
      }
      
      public function §2#F§() : void
      {
         this.§[$6§ = false;
      }
      
      protected function §3"`§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §`%§(param1:SecurityErrorEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            throw new SecurityError(param1.text,param1.errorID);
         }
      }
   }
}
