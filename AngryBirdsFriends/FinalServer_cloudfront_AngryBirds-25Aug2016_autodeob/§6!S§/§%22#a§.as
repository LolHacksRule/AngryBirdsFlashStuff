package §6!S§
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
   
   public class §"#a§ extends Sprite
   {
      
      private static const §^!E§:int = 2000;
      
      public static const §`#-§:Number = 0.75;
       
      
      private var §7-§:Bitmap;
      
      private var §<#a§:BitmapData;
      
      private var §+M§:String;
      
      private var §`!<§:String;
      
      private var §4">§:String;
      
      private var §##8§:Vector.<URLLoader>;
      
      private var §<[§:String;
      
      private var §"#5§:String;
      
      private var §,!P§:Object;
      
      private var §0+§:Number;
      
      private var §8!x§:Boolean;
      
      private var §`"`§:Number;
      
      public function §"#a§(param1:String, param2:String, param3:String)
      {
         super();
         this.§+M§ = param1;
         this.§`!<§ = param2;
         this.§4">§ = param3;
         addEventListener(MouseEvent.CLICK,this.§^%§);
         buttonMode = true;
         scaleX = scaleY = §`#-§;
         x = 47;
         this.§8!x§ = false;
      }
      
      public function get §=!E§() : String
      {
         return this.§4">§;
      }
      
      public function get §%§() : String
      {
         return this.§`!<§;
      }
      
      public function get link() : String
      {
         return this.§+M§;
      }
      
      public function §!#I§(param1:String) : Loader
      {
         var _loc2_:URLRequest = new URLRequest(param1);
         var _loc3_:LoaderContext = new LoaderContext(true);
         var _loc4_:Loader;
         (_loc4_ = new Loader()).contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         _loc4_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
         _loc4_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>$8§);
         _loc4_.load(_loc2_,_loc3_);
         return _loc4_;
      }
      
      private function §^%§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc2_:URLRequest = new URLRequest(this.§+M§);
         navigateToURL(_loc2_,"_blank");
         this.§0!"§(false);
      }
      
      private function onComplete(param1:Event) : void
      {
         var bitmapContent:Bitmap = null;
         var e:Event = param1;
         try
         {
            bitmapContent = (e.currentTarget as LoaderInfo).content as Bitmap;
            this.§<#a§ = bitmapContent.bitmapData.clone();
            this.§2!D§(this.§<#a§);
         }
         catch(e:Error)
         {
            if(AngryBirdsBase.DEBUG_MODE_ENABLED)
            {
               throw e;
            }
         }
      }
      
      public function §;"h§() : BitmapData
      {
         if(this.§<#a§)
         {
            this.§2!D§(this.§<#a§);
         }
         return this.§<#a§;
      }
      
      public function §2!D§(param1:BitmapData) : void
      {
         var _loc2_:Bitmap = new Bitmap(param1,"auto",true);
         _loc2_.width = §^0§.§]9§;
         _loc2_.height = §^0§.§8$4§;
         addChild(_loc2_);
      }
      
      public function §^C§(param1:String, param2:String, param3:String, param4:String) : void
      {
         this.§<[§ = param1 + "?accessToken=" + param4;
         this.§"#5§ = param2 + "?accessToken=" + param4;
         this.§,!P§ = new Object();
         this.§,!P§["did"] = param3;
         this.§,!P§["accessToken"] = param4;
         this.§,!P§["adId"] = this.§4">§;
         this.§,!P§["linkId"] = this.§`!<§;
      }
      
      private function §0!"§(param1:Boolean) : void
      {
         var _loc2_:URLRequest = new URLRequest(!!param1 ? this.§<[§ : this.§"#5§);
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.requestHeaders = [new URLRequestHeader("Content-Type","application/x-www-form-urlencoded")];
         var _loc3_:URLVariables = new URLVariables();
         _loc3_["did"] = this.§,!P§.did;
         _loc3_["accessToken"] = this.§,!P§.accessToken;
         _loc3_["adId"] = this.§,!P§.adId;
         _loc3_["linkId"] = this.§,!P§.linkId;
         _loc2_.data = _loc3_;
         if(!this.§##8§)
         {
            this.§##8§ = new Vector.<URLLoader>();
         }
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§ #z§);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.§ #z§);
         _loc4_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ #z§);
         _loc4_.load(_loc2_);
         this.§##8§.push(_loc4_);
         this.§8!x§ = true;
      }
      
      private function § #z§(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§##8§.length)
         {
            if(this.§##8§[_loc2_] == param1.target)
            {
               if(param1 is ErrorEvent)
               {
               }
               this.§##8§[_loc2_].removeEventListener(Event.COMPLETE,this.§ #z§);
               this.§##8§[_loc2_].removeEventListener(IOErrorEvent.IO_ERROR,this.§ #z§);
               this.§##8§[_loc2_].removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ #z§);
               this.§##8§[_loc2_] = null;
               this.§##8§.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      public function §'G§(param1:Boolean) : void
      {
         if(!this.§8!x§)
         {
            this.§0+§ = 0;
            this.§`"`§ = getTimer();
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
         if(!this.§8!x§)
         {
            this.§0+§ += getTimer() - this.§`"`§;
            if(this.§0+§ >= §^!E§)
            {
               this.§0!"§(true);
               removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            this.§`"`§ = getTimer();
         }
      }
      
      public function §;"?§() : void
      {
         this.§8!x§ = false;
      }
      
      protected function §5"R§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §>$8§(param1:SecurityErrorEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            throw new SecurityError(param1.text,param1.errorID);
         }
      }
   }
}
