package §3R§
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
   
   public class §##X§ extends Sprite
   {
      
      private static const §&$<§:int = 2000;
      
      public static const §]!+§:Number = 0.75;
       
      
      private var §>$D§:Bitmap;
      
      private var §@z§:BitmapData;
      
      private var §?"4§:String;
      
      private var §@i§:String;
      
      private var §&6§:String;
      
      private var §]"f§:Vector.<URLLoader>;
      
      private var §+!@§:String;
      
      private var §'"'§:String;
      
      private var §&!$§:Object;
      
      private var §8&§:Number;
      
      private var § "'§:Boolean;
      
      private var §=m§:Number;
      
      public function §##X§(param1:String, param2:String, param3:String)
      {
         super();
         this.§?"4§ = param1;
         this.§@i§ = param2;
         this.§&6§ = param3;
         addEventListener(MouseEvent.CLICK,this.§8!0§);
         buttonMode = true;
         scaleX = scaleY = §]!+§;
         x = 47;
         this.§ "'§ = false;
      }
      
      public function get §]$"§() : String
      {
         return this.§&6§;
      }
      
      public function get §2"b§() : String
      {
         return this.§@i§;
      }
      
      public function get link() : String
      {
         return this.§?"4§;
      }
      
      public function §9#'§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§%Y§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#g§);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §8!0§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc2_:URLRequest = new URLRequest(this.§?"4§);
         navigateToURL(_loc2_,"_blank");
         this.§?!P§(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var bitmapContent:Bitmap = null;
         var e:Event = param1;
         try
         {
            bitmapContent = (e.currentTarget as LoaderInfo).content as Bitmap;
            this.§@z§ = bitmapContent.bitmapData.clone();
            this.§<#F§(this.§@z§);
         }
         catch(e:Error)
         {
            if(AngryBirdsBase.DEBUG_MODE_ENABLED)
            {
               throw e;
            }
         }
      }
      
      public function §;"A§() : BitmapData
      {
         if(this.§@z§)
         {
            this.§<#F§(this.§@z§);
         }
         return this.§@z§;
      }
      
      public function §<#F§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §?M§.§75§;
         _loc2_.height = §?M§.§4#Q§;
         addChild(_loc2_);
      }
      
      public function §""&§(param1:String, param2:String, param3:String, param4:String) : void
      {
         this.§+!@§ = param1 + "?accessToken=" + param4;
         this.§'"'§ = param2 + "?accessToken=" + param4;
         this.§&!$§ = new Object();
         this.§&!$§["did"] = param3;
         this.§&!$§["accessToken"] = param4;
         this.§&!$§["adId"] = this.§&6§;
         this.§&!$§["linkId"] = this.§@i§;
      }
      
      private function §?!P§(param1:Boolean) : void
      {
         var _loc2_:URLRequest = new URLRequest(!!param1 ? this.§+!@§ : this.§'"'§);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.requestHeaders = [new URLRequestHeader("Content-Type","application/x-www-form-urlencoded")];
         var _loc3_:URLVariables = new URLVariables();
         _loc3_["did"] = this.§&!$§.did;
         _loc3_["accessToken"] = this.§&!$§.accessToken;
         _loc3_["adId"] = this.§&!$§.adId;
         _loc3_["linkId"] = this.§&!$§.linkId;
         _loc2_.data = _loc3_;
         if(!this.§]"f§)
         {
            this.§]"f§ = new Vector.<URLLoader>();
         }
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§!"Q§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§!"Q§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!"Q§);
         _loc4_.load(_loc2_);
         this.§]"f§.push(_loc4_);
         this.§ "'§ = true;
      }
      
      private function §!"Q§(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]"f§.length)
         {
            if(this.§]"f§[_loc2_] == param1.target)
            {
               if(param1 is ErrorEvent)
               {
               }
               this.§]"f§[_loc2_].removeEventListener(Event.COMPLETE,this.§!"Q§);
               this.§]"f§[_loc2_].removeEventListener(IOErrorEvent.IO_ERROR,this.§!"Q§);
               this.§]"f§[_loc2_].removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!"Q§);
               this.§]"f§[_loc2_] = null;
               this.§]"f§.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function §&#U§(param1:Boolean) : void
      {
         if(!this.§ "'§)
         {
            this.§8&§ = 0;
            this.§=m§ = getTimer();
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
         if(!this.§ "'§)
         {
            this.§8&§ += getTimer() - this.§=m§;
            if(this.§8&§ >= §&$<§)
            {
               this.§?!P§(true);
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            this.§=m§ = getTimer();
         }
      }
      
      public function §#!G§() : void
      {
         this.§ "'§ = false;
      }
      
      protected function §%Y§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §!#g§(param1:SecurityErrorEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            throw new SecurityError(param1.text,param1.errorID);
         }
      }
   }
}
