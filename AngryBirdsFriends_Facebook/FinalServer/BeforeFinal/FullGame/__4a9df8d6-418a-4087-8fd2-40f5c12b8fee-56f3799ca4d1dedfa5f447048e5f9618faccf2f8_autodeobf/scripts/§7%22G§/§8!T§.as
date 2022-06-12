package §7"G§
{
   import §0"B§.§ #W§;
   import §0"B§.§try§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §7R§.§ #`§;
   import §=E§.§<T§;
   import §>z§.ErrorPopup;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §8!T§ extends EventDispatcher
   {
       
      
      private var §-Z§:§!!o§;
      
      private const § ;§:String = "/getAvatars";
      
      private var §8#f§:Object;
      
      public function §8!T§()
      {
         super();
         this.§8#f§ = new Object();
      }
      
      public function §=""§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + this.§ ;§);
         this.§-Z§ = new §!!o§();
         this.§-Z§.addEventListener(Event.COMPLETE,this.§,"U§);
         this.§-Z§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§-Z§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§-Z§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §<T§.§8"5§())
         {
            _loc2_.push(_loc3_.userID);
         }
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         this.§-Z§.load(_loc1_);
      }
      
      protected function §,"U§(param1:Event) : void
      {
         var _loc3_:Object = null;
         this.§8#f§ = param1.currentTarget.data;
         var _loc2_:§ #`§ = AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
         for each(_loc3_ in this.§8#f§.avatars)
         {
            § #W§.§]8§(new §try§(_loc3_.a,_loc3_.uid));
            if(_loc3_.uid == _loc2_.userID)
            {
               _loc2_.avatarString = _loc3_.a;
            }
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"AvatarLoader error:" + param1.text + " id: " + param1.errorID));
      }
      
      public function data() : Object
      {
         return this.§8#f§;
      }
   }
}
