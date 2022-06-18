package §>#q§
{
   import §,#,§.§=#o§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §>#l§.§=#j§;
   import §?#z§.§]$?§;
   import §?Q§.AvatarCreatorPopup;
   import §@`§.Item;
   import §`"t§.§7"U§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §?V§ extends EventDispatcher
   {
      
      public static var §=!5§:Array;
      
      private static var §]#6§:Array = [{
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
       
      
      private var §^#;§:§-$C§;
      
      private var §&#a§:Boolean = false;
      
      public function §?V§()
      {
         super();
      }
      
      public static function §,$,§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §]#6§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      public function get §9$$§() : Boolean
      {
         return this.§&#a§;
      }
      
      public function loadItems() : void
      {
         if(this.§&#a§)
         {
            return;
         }
         this.§&#a§ = true;
         var _loc1_:URLRequest = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         this.§^#;§ = new §-$C§();
         this.§^#;§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§^#;§.load(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§&#a§ = false;
         if(param1.currentTarget.data.hasOwnProperty("st"))
         {
            delete param1.currentTarget.data["st"];
         }
         §=!5§ = param1.currentTarget.data as Array;
         this.§19§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §&B§(param1:Object, param2:Array) : void
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
      
      private function §19§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         var _loc2_:Boolean = false;
         for each(_loc3_ in §=!5§)
         {
            this.§&B§(_loc3_,§]#6§);
            if(_loc4_ = §=#j§.§%!f§(_loc3_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.mId,
                  "price":_loc3_.p,
                  "available":_loc3_.a,
                  "starPrice":_loc3_.star,
                  "limited":_loc3_.l,
                  "sale":_loc3_.s,
                  "isNew":this.§!"P§(_loc4_.mId,_loc3_.a,_loc3_["as"])
               };
               if(_loc3_.s && !_loc3_.a)
               {
                  _loc2_ = true;
               }
               _loc1_.push(_loc5_);
            }
         }
         §=#o§(AngryBirdsBase.singleton.dataModel).§&5§ = _loc2_;
         AvatarCreatorPopup.§>!D§ = _loc1_;
         if((§]$?§.§;u§ as §@z§).§8!;§)
         {
            (§]$?§.§;u§ as §@z§).§8!;§.§6! §(§=#o§(AngryBirdsBase.singleton.dataModel).§64§);
         }
      }
      
      private function §!"P§(param1:String, param2:Boolean, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         if(param3 && !param2)
         {
            if(§=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§["v§(param1))
            {
               return false;
            }
            if((_loc4_ = §7"U§.§^!o§(param3)) && !§=#o§(AngryBirdsBase.singleton.dataModel).§64§)
            {
               §=#o§(AngryBirdsBase.singleton.dataModel).§64§ = true;
            }
            return _loc4_;
         }
         return false;
      }
   }
}
