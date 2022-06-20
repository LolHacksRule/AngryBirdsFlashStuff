package §@!_§
{
   import § h§.AvatarCreatorPopup;
   import §!!H§.§ $4§;
   import §+!n§.§+!p§;
   import §,#D§.§;!9§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §>#Y§.§,#b§;
   import §^"K§.Item;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §`$§ extends EventDispatcher
   {
      
      public static var §[!_§:Array;
      
      private static var §8"b§:Array = [{
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
       
      
      private var §1$;§:§5"f§;
      
      private var §2m§:Boolean = false;
      
      public function §`$§()
      {
         super();
      }
      
      public static function §'+§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §8"b§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      public function get §#!?§() : Boolean
      {
         return this.§2m§;
      }
      
      public function loadItems() : void
      {
         if(this.§2m§)
         {
            return;
         }
         this.§2m§ = true;
         var _loc1_:URLRequest = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         this.§1$;§ = new §5"f§();
         this.§1$;§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§1$;§.load(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§2m§ = false;
         if(param1.currentTarget.data.hasOwnProperty("st"))
         {
            delete param1.currentTarget.data["st"];
         }
         §[!_§ = param1.currentTarget.data as Array;
         this.§2!q§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §7"W§(param1:Object, param2:Array) : void
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
      
      private function §2!q§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         var _loc2_:Boolean = false;
         for each(_loc3_ in §[!_§)
         {
            this.§7"W§(_loc3_,§8"b§);
            if(_loc4_ = §;!9§.§6#y§(_loc3_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.mId,
                  "price":_loc3_.p,
                  "available":_loc3_.a,
                  "starPrice":_loc3_.star,
                  "limited":_loc3_.l,
                  "sale":_loc3_.s,
                  "isNew":this.§="n§(_loc4_.mId,_loc3_.a,_loc3_["as"])
               };
               if(_loc3_.s && !_loc3_.a)
               {
                  _loc2_ = true;
               }
               _loc1_.push(_loc5_);
            }
         }
         §,#b§(AngryBirdsBase.singleton.dataModel).§5!a§ = _loc2_;
         AvatarCreatorPopup.§6#N§ = _loc1_;
         if((§+!p§.§;"-§ as §^"a§).§?"c§)
         {
            (§+!p§.§;"-§ as §^"a§).§?"c§.§?!3§(§,#b§(AngryBirdsBase.singleton.dataModel).§`!6§);
         }
      }
      
      private function §="n§(param1:String, param2:Boolean, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         if(param3 && !param2)
         {
            if(§,#b§(AngryBirdsBase.singleton.dataModel).§^"O§.§,!F§(param1))
            {
               return false;
            }
            if((_loc4_ = § $4§.§[$0§(param3)) && !§,#b§(AngryBirdsBase.singleton.dataModel).§`!6§)
            {
               §,#b§(AngryBirdsBase.singleton.dataModel).§`!6§ = true;
            }
            return _loc4_;
         }
         return false;
      }
   }
}
