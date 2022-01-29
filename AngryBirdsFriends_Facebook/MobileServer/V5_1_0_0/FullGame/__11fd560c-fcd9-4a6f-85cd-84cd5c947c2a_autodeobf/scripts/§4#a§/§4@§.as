package §4#a§
{
   import §"!!§.§'§;
   import §"!!§.§1§;
   import §-!S§.§##>§;
   import §7!%§.§4"I§;
   import §?P§.ErrorPopup;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §4@§ extends EventDispatcher
   {
       
      
      private var §,"w§:§1"V§;
      
      private const §9t§:String = "/getAvatars";
      
      private var §["[§:Object;
      
      public function §4@§()
      {
         super();
         this.§["[§ = new Object();
      }
      
      public function §@"@§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + this.§9t§);
         this.§,"w§ = new §1"V§();
         this.§,"w§.addEventListener(Event.COMPLETE,this.§="m§);
         this.§,"w§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§,"w§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§,"w§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §4"I§.§8"T§())
         {
            _loc2_.push(_loc3_.userID);
         }
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         this.§,"w§.load(_loc1_);
      }
      
      protected function §="m§(param1:Event) : void
      {
         var _loc3_:Object = null;
         this.§["[§ = param1.currentTarget.data;
         var _loc2_:§##>§ = AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
         for each(_loc3_ in this.§["[§.avatars)
         {
            §1#0§.§ #i§(new §'#4§(_loc3_.a,_loc3_.uid));
            if(_loc3_.uid == _loc2_.userID)
            {
               _loc2_.avatarString = _loc3_.a;
            }
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"AvatarLoader error:" + param1.text + " id: " + param1.errorID));
      }
      
      public function data() : Object
      {
         return this.§["[§;
      }
   }
}
