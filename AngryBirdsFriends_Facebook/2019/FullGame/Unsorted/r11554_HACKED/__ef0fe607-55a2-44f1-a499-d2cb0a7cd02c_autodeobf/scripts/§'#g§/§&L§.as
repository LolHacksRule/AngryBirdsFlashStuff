package §'#g§
{
   import § #s§.Item;
   import §8"b§.§&!b§;
   import §=!2§.§%"T§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.AvatarCreatorPopup;
   import §]"'§.§@"%§;
   import §^$'§.§2$§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §&L§ extends EventDispatcher
   {
      
      public static var §?n§:Array;
      
      private static var §^8§:Array = [{
         "a":true,
         "id":"B20007",
         "p":0,
         "star":100
      },{
         "a":true,
         "id":"B20008",
         "p":0,
         "star":200
      },{
         "a":true,
         "id":"B20009",
         "p":0,
         "star":400
      },{
         "a":true,
         "id":"B20010",
         "p":0,
         "star":600
      }];
       
      
      private var §'u§:§'!n§;
      
      private var §;"N§:Boolean = false;
      
      public function §&L§()
      {
         super();
      }
      
      public static function §2"I§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §^8§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      public function get §0"§() : Boolean
      {
         return this.§;"N§;
      }
      
      public function loadItems() : void
      {
         if(this.§;"N§)
         {
            return;
         }
         this.§;"N§ = true;
         var _loc1_:URLRequest = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         this.§'u§ = new §'!n§();
         this.§'u§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§'u§.load(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§;"N§ = false;
         if(param1.currentTarget.data.hasOwnProperty("st"))
         {
            delete param1.currentTarget.data["st"];
         }
         §?n§ = param1.currentTarget.data as Array;
         this.§,"7§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §%$'§(param1:Object, param2:Array) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            if(param1.id == _loc3_.id)
            {
               param1.p = _loc3_.p;
               param1.star = _loc3_.star;
            }
         }
      }
      
      private function §,"7§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         var _loc2_:Boolean = false;
         for each(_loc3_ in §?n§)
         {
            this.§%$'§(_loc3_,§^8§);
            if(_loc4_ = §2$§.§9"s§(_loc3_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.mId,
                  "price":_loc3_.p,
                  "available":_loc3_.a,
                  "starPrice":_loc3_.star,
                  "limited":_loc3_.l,
                  "sale":_loc3_.s,
                  "isNew":this.§6k§(_loc4_.mId,_loc3_.a,_loc3_["as"])
               };
               if(_loc3_.s && !_loc3_.a)
               {
                  _loc2_ = true;
               }
               _loc1_.push(_loc5_);
            }
         }
         §@"%§(AngryBirdsBase.singleton.dataModel).§5x§ = _loc2_;
         AvatarCreatorPopup.§@&§ = _loc1_;
         if((§%"T§.§>$<§ as §'"a§).§1#b§)
         {
            (§%"T§.§>$<§ as §'"a§).§1#b§.§&#]§(§@"%§(AngryBirdsBase.singleton.dataModel).§<!w§);
         }
      }
      
      private function §6k§(param1:String, param2:Boolean, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         if(param3 && !param2)
         {
            if(§@"%§(AngryBirdsBase.singleton.dataModel).§"<§.§,"!§(param1))
            {
               return false;
            }
            if((_loc4_ = §&!b§.§44§(param3)) && !§@"%§(AngryBirdsBase.singleton.dataModel).§<!w§)
            {
               §@"%§(AngryBirdsBase.singleton.dataModel).§<!w§ = true;
            }
            return _loc4_;
         }
         return false;
      }
   }
}
