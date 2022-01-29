package §1"N§
{
   import §-!T§.Item;
   import §2G§.§#"8§;
   import §;#D§.§3#U§;
   import §=A§.§[`§;
   import §?P§.AvatarCreatorPopup;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §[#[§.§=#Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §""-§ extends EventDispatcher
   {
      
      public static var §[W§:Array;
      
      private static var §0!D§:Array = [{
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
       
      
      private var §2f§:§1"V§;
      
      private var §"6§:Boolean = false;
      
      public function §""-§()
      {
         super();
      }
      
      public static function §<W§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §0!D§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      public function get §8R§() : Boolean
      {
         return this.§"6§;
      }
      
      public function loadItems() : void
      {
         if(this.§"6§)
         {
            return;
         }
         this.§"6§ = true;
         var _loc1_:URLRequest = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         this.§2f§ = new §1"V§();
         this.§2f§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§2f§.load(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§"6§ = false;
         if(param1.currentTarget.data.hasOwnProperty("st"))
         {
            delete param1.currentTarget.data["st"];
         }
         §[W§ = param1.currentTarget.data as Array;
         this.§!#`§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §@2§(param1:Object, param2:Array) : void
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
      
      private function §!#`§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         var _loc2_:Boolean = false;
         for each(_loc3_ in §[W§)
         {
            this.§@2§(_loc3_,§0!D§);
            if(_loc4_ = §[`§.§%`§(_loc3_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.mId,
                  "price":_loc3_.p,
                  "available":_loc3_.a,
                  "starPrice":_loc3_.star,
                  "limited":_loc3_.l,
                  "sale":_loc3_.s,
                  "isNew":this.§3R§(_loc4_.mId,_loc3_.a,_loc3_["as"])
               };
               if(_loc3_.s && !_loc3_.a)
               {
                  _loc2_ = true;
               }
               _loc1_.push(_loc5_);
            }
         }
         §#"8§(AngryBirdsBase.singleton.dataModel).§&$$§ = _loc2_;
         AvatarCreatorPopup.§!B§ = _loc1_;
         if((§3#U§.§9#^§ as §,A§).§9"x§)
         {
            (§3#U§.§9#^§ as §,A§).§9"x§.§5#v§(§#"8§(AngryBirdsBase.singleton.dataModel).§#"%§);
         }
      }
      
      private function §3R§(param1:String, param2:Boolean, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         if(param3 && !param2)
         {
            if(§#"8§(AngryBirdsBase.singleton.dataModel).§3S§.§<#x§(param1))
            {
               return false;
            }
            if((_loc4_ = §=#Q§.§[!]§(param3)) && !§#"8§(AngryBirdsBase.singleton.dataModel).§#"%§)
            {
               §#"8§(AngryBirdsBase.singleton.dataModel).§#"%§ = true;
            }
            return _loc4_;
         }
         return false;
      }
   }
}
