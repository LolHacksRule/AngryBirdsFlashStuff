package §-$'§
{
   import §!L§.§`#u§;
   import §"#X§.§8#g§;
   import §2!Y§.§"$=§;
   import §2!Y§.§5S§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §?Q§.ErrorPopup;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §;"f§ extends EventDispatcher
   {
       
      
      private var §#!Z§:§-$C§;
      
      private const §1!$§:String = "/getAvatars";
      
      private var §1!,§:Object;
      
      public function §;"f§()
      {
         super();
         this.§1!,§ = new Object();
      }
      
      public function §2"<§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + this.§1!$§);
         this.§#!Z§ = new §-$C§();
         this.§#!Z§.addEventListener(Event.COMPLETE,this.§+"?§);
         this.§#!Z§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§#!Z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§#!Z§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §8#g§.§4"-§())
         {
            _loc2_.push(_loc3_.userID);
         }
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         this.§#!Z§.load(_loc1_);
      }
      
      protected function §+"?§(param1:Event) : void
      {
         var _loc3_:Object = null;
         this.§1!,§ = param1.currentTarget.data;
         var _loc2_:§`#u§ = AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
         for each(_loc3_ in this.§1!,§.avatars)
         {
            §"$=§.§1" §(new §5S§(_loc3_.a,_loc3_.uid));
            if(_loc3_.uid == _loc2_.userID)
            {
               _loc2_.avatarString = _loc3_.a;
            }
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"AvatarLoader error:" + param1.text + " id: " + param1.errorID));
      }
      
      public function data() : Object
      {
         return this.§1!,§;
      }
   }
}
