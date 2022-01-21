package § v§
{
   import §!!h§.§1H§;
   import §7!C§.§?!'§;
   import §7"§.§1! §;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §%!^§ extends §?!'§ implements §1! §
   {
       
      
      protected var §6i§:Dictionary;
      
      private var §#p§:int = 0;
      
      private var §;!D§:Boolean;
      
      public function §%!^§(param1:String)
      {
         super(param1);
         this.§6i§ = new Dictionary();
         this.§;!D§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§>R§[param1])
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
         var _loc6_:§1H§ = null;
         if(§'j§.§%g§.§"!W§)
         {
            _loc2_ = param1.split(",");
            _loc3_ = "tutorialshown";
            (_loc4_ = {}).id = §!!^§.§,!a§.email;
            _loc4_.tutorials = _loc2_;
            _loc5_ = {
               "type":_loc3_,
               "player":_loc4_
            };
            _loc6_ = new §1H§(_loc5_,§'j§.§2H§ + _loc3_,this,§1H§.§`P§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§#p§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§#p§ = param1;
      }
      
      public function get §"!W§() : Boolean
      {
         return this.§;!D§;
      }
      
      public function set §"!W§(param1:Boolean) : void
      {
         this.§;!D§ = param1;
      }
   }
}
