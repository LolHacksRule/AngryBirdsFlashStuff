package §!@§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § o§.AvatarCreatorPopup;
   import §%#!§.Item;
   import §&"J§.§`]§;
   import §6"r§.§!#A§;
   import §[$8§.§2%§;
   import §^#]§.§@!g§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §#!h§ extends EventDispatcher
   {
      
      public static var §9!m§:Array;
      
      private static var §8"a§:Array = [{
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
       
      
      private var § #C§:§4"v§;
      
      private var §["s§:Boolean = false;
      
      public function §#!h§()
      {
         super();
      }
      
      public static function § H§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §8"a§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      public function get §"$1§() : Boolean
      {
         return this.§["s§;
      }
      
      public function loadItems() : void
      {
         if(this.§["s§)
         {
            return;
         }
         this.§["s§ = true;
         var _loc1_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         this.§ #C§ = new §4"v§();
         this.§ #C§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§ #C§.load(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§["s§ = false;
         if(param1.currentTarget.data.hasOwnProperty("st"))
         {
            delete param1.currentTarget.data["st"];
         }
         §9!m§ = param1.currentTarget.data as Array;
         this.§31§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §=# §(param1:Object, param2:Array) : void
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
      
      private function §31§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         var _loc2_:Boolean = false;
         for each(_loc3_ in §9!m§)
         {
            this.§=# §(_loc3_,§8"a§);
            if(_loc4_ = §2%§.§!#z§(_loc3_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.mId,
                  "price":_loc3_.p,
                  "available":_loc3_.a,
                  "starPrice":_loc3_.star,
                  "limited":_loc3_.l,
                  "sale":_loc3_.s,
                  "isNew":this.§,!o§(_loc4_.mId,_loc3_.a,_loc3_["as"])
               };
               if(_loc3_.s && !_loc3_.a)
               {
                  _loc2_ = true;
               }
               _loc1_.push(_loc5_);
            }
         }
         §`]§(AngryBirdsBase.singleton.dataModel).§,j§ = _loc2_;
         AvatarCreatorPopup.§<_§ = _loc1_;
         if((§!#A§.§>q§ as §-#+§).§'M§)
         {
            (§!#A§.§>q§ as §-#+§).§'M§.§`;§(§`]§(AngryBirdsBase.singleton.dataModel).§?#P§);
         }
      }
      
      private function §,!o§(param1:String, param2:Boolean, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         if(param3 && !param2)
         {
            if(§`]§(AngryBirdsBase.singleton.dataModel).§ in§.§&!!§(param1))
            {
               return false;
            }
            if((_loc4_ = §@!g§.§=F§(param3)) && !§`]§(AngryBirdsBase.singleton.dataModel).§?#P§)
            {
               §`]§(AngryBirdsBase.singleton.dataModel).§?#P§ = true;
            }
            return _loc4_;
         }
         return false;
      }
   }
}
