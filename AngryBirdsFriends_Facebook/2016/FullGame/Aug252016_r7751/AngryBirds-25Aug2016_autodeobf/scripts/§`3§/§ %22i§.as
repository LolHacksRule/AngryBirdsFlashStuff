package §`3§
{
   import §4q§.§!#Q§;
   import §7z§.§7"m§;
   import §;4§.§-#a§;
   import §;4§.§8"`§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class § "i§ extends EventDispatcher
   {
       
      
      private var §9!j§:§5$!§;
      
      private const §6"W§:String = "/getAvatars";
      
      private var §+!&§:Object;
      
      public function § "i§()
      {
         super();
         this.§+!&§ = new Object();
      }
      
      public function §2v§() : void
      {
         var _loc3_:Object = null;
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§6"W§);
         this.§9!j§ = new §5$!§();
         this.§9!j§.addEventListener(Event.COMPLETE,this.§5>§);
         this.§9!j§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§9!j§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§9!j§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §7"m§.§=#p§())
         {
            _loc2_.push(_loc3_.userID);
         }
         _loc1_.data = JSON.stringify(_loc2_);
         _loc1_.method = URLRequestMethod.POST;
         _loc1_.contentType = "application/json";
         this.§9!j§.load(_loc1_);
      }
      
      protected function §5>§(param1:Event) : void
      {
         var _loc3_:Object = null;
         this.§+!&§ = param1.currentTarget.data;
         var _loc2_:§!#Q§ = AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
         for each(_loc3_ in this.§+!&§.avatars)
         {
            §-#a§.§4T§(new §8"`§(_loc3_.a,_loc3_.uid));
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
         return this.§+!&§;
      }
   }
}
