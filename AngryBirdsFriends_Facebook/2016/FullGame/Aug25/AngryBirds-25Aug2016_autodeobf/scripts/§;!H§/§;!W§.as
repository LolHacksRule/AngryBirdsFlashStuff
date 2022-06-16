package §;!H§
{
   import §%$!§.§+3§;
   import §1!@§.§&#a§;
   import §4#[§.§6U§;
   import §6#s§.Item;
   import §?"R§.AvatarCreatorPopup;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §;!W§ extends EventDispatcher
   {
      
      public static var §=J§:Array;
      
      private static var §]"+§:Array = [{
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
       
      
      private var §=!u§:§5$!§;
      
      private var §#!R§:Boolean = false;
      
      public function §;!W§()
      {
         super();
      }
      
      public static function §%2§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §]"+§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      public function get §-#!§() : Boolean
      {
         return this.§#!R§;
      }
      
      public function loadItems() : void
      {
         if(this.§#!R§)
         {
            return;
         }
         this.§#!R§ = true;
         var _loc1_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         this.§=!u§ = new §5$!§();
         this.§=!u§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§=!u§.load(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§#!R§ = false;
         if(param1.currentTarget.data.hasOwnProperty("st"))
         {
            delete param1.currentTarget.data["st"];
         }
         §=J§ = param1.currentTarget.data as Array;
         this.§'$0§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §7!f§(param1:Object, param2:Array) : void
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
      
      private function §'$0§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         var _loc2_:Boolean = false;
         for each(_loc3_ in §=J§)
         {
            this.§7!f§(_loc3_,§]"+§);
            if(_loc4_ = §6U§.§<",§(_loc3_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.mId,
                  "price":_loc3_.p,
                  "available":_loc3_.a,
                  "starPrice":_loc3_.star,
                  "limited":_loc3_.l,
                  "sale":_loc3_.s,
                  "isNew":this.§%#>§(_loc4_.mId,_loc3_.a,_loc3_["as"])
               };
               if(_loc3_.s && !_loc3_.a)
               {
                  _loc2_ = true;
               }
               _loc1_.push(_loc5_);
            }
         }
         §+3§(AngryBirdsBase.singleton.dataModel).§["m§ = _loc2_;
         AvatarCreatorPopup.§;+§ = _loc1_;
         if((§>"$§.§<_§ as §8G§).§&#§)
         {
            (§>"$§.§<_§ as §8G§).§&#§.§^q§(§+3§(AngryBirdsBase.singleton.dataModel).§!!`§);
         }
      }
      
      private function §%#>§(param1:String, param2:Boolean, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         if(param3 && !param2)
         {
            if(§+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§0!f§(param1))
            {
               return false;
            }
            if((_loc4_ = §&#a§.set(param3)) && !§+3§(AngryBirdsBase.singleton.dataModel).§!!`§)
            {
               §+3§(AngryBirdsBase.singleton.dataModel).§!!`§ = true;
            }
            return _loc4_;
         }
         return false;
      }
   }
}
