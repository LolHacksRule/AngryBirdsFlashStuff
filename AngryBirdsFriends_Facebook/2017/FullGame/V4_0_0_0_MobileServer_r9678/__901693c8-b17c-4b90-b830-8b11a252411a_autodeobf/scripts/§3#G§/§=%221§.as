package §3#G§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §5"?§.§4"-§;
   import §[G§.§!!g§;
   import §[G§.§8A§;
   import §]#p§.§%!?§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §="1§ extends EventDispatcher
   {
       
      
      private var § !I§:§4"v§;
      
      private const §<!=§:String = "/getAvatars";
      
      private var §]!$§:Object;
      
      public function §="1§()
      {
         super();
         this.§]!$§ = new Object();
      }
      
      public function §3A§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§<!=§);
         this.§ !I§ = new §4"v§();
         this.§ !I§.addEventListener(Event.COMPLETE,this.§]!x§);
         this.§ !I§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ !I§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ !I§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §%!?§.§@!i§())
         {
            _loc2_.push(_loc3_.userID);
         }
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         this.§ !I§.load(_loc1_);
      }
      
      protected function §]!x§(param1:Event) : void
      {
         var _loc3_:Object = null;
         this.§]!$§ = param1.currentTarget.data;
         var _loc2_:§4"-§ = AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
         for each(_loc3_ in this.§]!$§.avatars)
         {
            §8A§.§=#T§(new §!!g§(_loc3_.a,_loc3_.uid));
            if(_loc3_.uid == _loc2_.userID)
            {
               _loc2_.avatarString = _loc3_.a;
            }
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         throw new Error("AvatarLoader error:" + param1.text + " id: " + param1.errorID);
      }
      
      public function data() : Object
      {
         return this.§]!$§;
      }
   }
}
