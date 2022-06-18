package §9&§
{
   import § "g§.§ H§;
   import § "g§.§%!2§;
   import §#!E§.§2#Q§;
   import §-"h§.§5!b§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.ErrorPopup;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §7c§ extends EventDispatcher
   {
       
      
      private var §>"[§:§'!n§;
      
      private const §1[§:String = "/getAvatars";
      
      private var §"""§:Object;
      
      public function §7c§()
      {
         super();
         this.§"""§ = new Object();
      }
      
      public function §%n§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + this.§1[§);
         this.§>"[§ = new §'!n§();
         this.§>"[§.addEventListener(Event.COMPLETE,this.§'w§);
         this.§>"[§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>"[§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>"[§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §5!b§.§4`§())
         {
            _loc2_.push(_loc3_.userID);
         }
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         this.§>"[§.load(_loc1_);
      }
      
      protected function §'w§(param1:Event) : void
      {
         var _loc3_:Object = null;
         this.§"""§ = param1.currentTarget.data;
         var _loc2_:§2#Q§ = AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
         for each(_loc3_ in this.§"""§.avatars)
         {
            §%!2§.§@"1§(new § H§(_loc3_.a,_loc3_.uid));
            if(_loc3_.uid == _loc2_.userID)
            {
               _loc2_.avatarString = _loc3_.a;
            }
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"AvatarLoader error:" + param1.text + " id: " + param1.errorID));
      }
      
      public function data() : Object
      {
         return this.§"""§;
      }
   }
}
