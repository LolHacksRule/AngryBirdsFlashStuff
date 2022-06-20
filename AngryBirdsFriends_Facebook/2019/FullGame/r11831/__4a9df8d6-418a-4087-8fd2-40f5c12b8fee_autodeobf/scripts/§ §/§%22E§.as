package § §#4
{
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §%y§.Item;
   import §'Z§.§<&§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §>z§.AvatarCreatorPopup;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §"E§ extends EventDispatcher
   {
      
      public static var §0"#§:Array;
      
      private static var §;v§:Array = [{
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
       
      
      private var §[!r§:§!!o§;
      
      private var §7#e§:Boolean = false;
      
      public function §"E§()
      {
         super();
      }
      
      public static function §^1§(param1:int, param2:int) : String
      {
         var _loc3_:Object = null;
         for each(_loc3_ in §;v§)
         {
            if(param2 >= _loc3_.s && param1 < _loc3_.s)
            {
               return _loc3_.id;
            }
         }
         return "";
      }
      
      public function get §6#J§() : Boolean
      {
         return this.§7#e§;
      }
      
      public function loadItems() : void
      {
         if(this.§7#e§)
         {
            return;
         }
         this.§7#e§ = true;
         var _loc1_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/getavatarparts");
         _loc1_.method = URLRequestMethod.POST;
         this.§[!r§ = new §!!o§();
         this.§[!r§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§[!r§.load(_loc1_);
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§7#e§ = false;
         if(param1.currentTarget.data.hasOwnProperty("st"))
         {
            delete param1.currentTarget.data["st"];
         }
         §0"#§ = param1.currentTarget.data as Array;
         this.§>v§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §`#&§(param1:Object, param2:Array) : void
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
      
      private function §>v§() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Item = null;
         var _loc5_:Object = null;
         var _loc1_:Array = [];
         var _loc2_:Boolean = false;
         for each(_loc3_ in §0"#§)
         {
            this.§`#&§(_loc3_,§;v§);
            if(_loc4_ = §<&§.§7y§(_loc3_.id))
            {
               _loc5_ = {
                  "itemId":_loc4_.mId,
                  "price":_loc3_.p,
                  "available":_loc3_.a,
                  "starPrice":_loc3_.star,
                  "limited":_loc3_.l,
                  "sale":_loc3_.s,
                  "isNew":this.§>U§(_loc4_.mId,_loc3_.a,_loc3_["as"])
               };
               if(_loc3_.s && !_loc3_.a)
               {
                  _loc2_ = true;
               }
               _loc1_.push(_loc5_);
            }
         }
         §4!Q§(AngryBirdsBase.singleton.dataModel).§;#h§ = _loc2_;
         AvatarCreatorPopup.§<8§ = _loc1_;
         if((§7n§.§-$<§ as § #v§).§=#+§)
         {
            (§7n§.§-$<§ as § #v§).§=#+§.§6$&§(§4!Q§(AngryBirdsBase.singleton.dataModel).§5!2§);
         }
      }
      
      private function §>U§(param1:String, param2:Boolean, param3:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         if(param3 && !param2)
         {
            if(§4!Q§(AngryBirdsBase.singleton.dataModel).§92§.§3$;§(param1))
            {
               return false;
            }
            if((_loc4_ = §;"x§.§0!9§(param3)) && !§4!Q§(AngryBirdsBase.singleton.dataModel).§5!2§)
            {
               §4!Q§(AngryBirdsBase.singleton.dataModel).§5!2§ = true;
            }
            return _loc4_;
         }
         return false;
      }
   }
}
