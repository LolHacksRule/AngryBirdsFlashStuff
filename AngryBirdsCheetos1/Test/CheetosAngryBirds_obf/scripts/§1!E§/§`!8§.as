package §1!E§
{
   import §&!F§.§"!d§;
   import §[h§.§7Z§;
   import §^!W§.§@!0§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   
   public class §`!8§ extends §@!0§ implements §7Z§
   {
       
      
      public function §`!8§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super(param1);
         }
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(_loc9_ || _loc2_)
         {
            if(!§>f§.§%!`§)
            {
               if(!_loc10_)
               {
                  §§goto(addr40);
               }
            }
            var _loc2_:Array = param1.split(",");
            for each(_loc3_ in _loc2_)
            {
               if(_loc9_)
               {
                  §2!;§(_loc3_);
               }
            }
            _loc4_ = "tutorialshown";
            (_loc5_ = {}).id = §>f§.§%!`§.id;
            if(_loc9_ || this)
            {
               _loc5_.tutorials = _loc2_;
            }
            _loc6_ = {
               "type":_loc4_,
               "player":_loc5_
            };
            if(_loc9_)
            {
               new §"!d§(_loc6_,§5!9§.§<V§ + _loc4_,this,§"!d§.§9X§);
            }
            return;
         }
         addr40:
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
      }
   }
}
