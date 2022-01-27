package §5"@§
{
   import §%!P§.§7""§;
   import §1z§.§^!@§;
   import §4u§.§1!C§;
   import §[V§.§=G§;
   import §[z§.§[!A§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §7!7§ extends §=G§ implements §[!A§
   {
       
      
      private var §9!c§:Boolean;
      
      protected var §=d§:Dictionary;
      
      public function §7!7§(param1:String, param2:§^!@§)
      {
         super(param1,param2);
         this.§=d§ = new Dictionary();
         this.§9!c§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§2X§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§7""§ = null;
         if(this.§ ^§)
         {
            _loc2_ = param1.split(",");
            for each(_loc3_ in _loc2_)
            {
               §7b§(_loc3_);
            }
            _loc4_ = "tutorialshown";
            (_loc5_ = {}).id = §1!N§.§,!<§.id;
            _loc5_.tutorials = _loc2_;
            _loc6_ = {
               "type":_loc4_,
               "player":_loc5_
            };
            _loc7_ = new §7""§(_loc6_,§@T§.§&Z§ + _loc4_,this,§7""§.§4!8§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
      }
      
      public function get § ^§() : Boolean
      {
         return this.§9!c§;
      }
      
      public function set § ^§(param1:Boolean) : void
      {
         this.§9!c§ = param1;
      }
      
      public function §]-§(param1:String) : int
      {
         var _loc2_:§1!C§ = null;
         if(this.§=d§[param1])
         {
            _loc2_ = this.§=d§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §#D§(param1:String, param2:int) : void
      {
         var _loc3_:§1!C§ = new §1!C§(param2);
         this.§=d§[param1] = _loc3_;
      }
   }
}
