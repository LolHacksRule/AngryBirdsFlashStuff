package §7!N§
{
   import §-@§.§5p§;
   import §1!^§.§,!n§;
   import §<! §.§<<§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §9!o§ extends §5p§ implements §<<§
   {
       
      
      protected var §+_§:Dictionary;
      
      private var §`g§:int = 0;
      
      private var §;!T§:Boolean;
      
      public function §9!o§(param1:String)
      {
         super(param1);
         this.§+_§ = new Dictionary();
         this.§;!T§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§0!=§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§,!n§ = null;
         if(§9!_§.§1!?§.§`2§)
         {
            _loc2_ = param1.split(",");
            _loc3_ = "tutorialshown";
            (_loc4_ = {}).id = §0-§.§6!&§.email;
            _loc4_.tutorials = _loc2_;
            _loc5_ = {
               "type":_loc3_,
               "player":_loc4_
            };
            _loc6_ = new §,!n§(_loc5_,§9!_§.§?!k§ + _loc3_,this,§,!n§.§-I§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§`g§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§`g§ = param1;
      }
      
      public function get §`2§() : Boolean
      {
         return this.§;!T§;
      }
      
      public function set §`2§(param1:Boolean) : void
      {
         this.§;!T§ = param1;
      }
   }
}
