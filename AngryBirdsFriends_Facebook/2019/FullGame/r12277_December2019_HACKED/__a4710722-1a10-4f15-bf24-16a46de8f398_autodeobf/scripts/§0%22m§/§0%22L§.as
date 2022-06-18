package §0"M§
{
   import § h§.ErrorPopup;
   import §#!G§.§-#]§;
   import §-"S§.§>#G§;
   import §3#t§.§'§;
   import §3#t§.§-#b§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §0"L§ extends EventDispatcher
   {
       
      
      private var §^P§:§5"f§;
      
      private const §[#y§:String = "/getAvatars";
      
      private var §6"G§:Object;
      
      public function §0"L§()
      {
         super();
         this.§6"G§ = new Object();
      }
      
      public function §+#!§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + this.§[#y§);
         this.§^P§ = new §5"f§();
         this.§^P§.addEventListener(Event.COMPLETE,this.§[!^§);
         this.§^P§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§^P§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§^P§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §-#]§.§0#9§())
         {
            _loc2_.push(_loc3_.userID);
         }
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         this.§^P§.load(_loc1_);
      }
      
      protected function §[!^§(param1:Event) : void
      {
         var _loc3_:Object = null;
         this.§6"G§ = param1.currentTarget.data;
         var _loc2_:§>#G§ = AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
         for each(_loc3_ in this.§6"G§.avatars)
         {
            §-#b§.§>">§(new §'#2§(_loc3_.a,_loc3_.uid));
            if(_loc3_.uid == _loc2_.userID)
            {
               _loc2_.avatarString = _loc3_.a;
            }
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"AvatarLoader error:" + param1.text + " id: " + param1.errorID));
      }
      
      public function data() : Object
      {
         return this.§6"G§;
      }
   }
}
