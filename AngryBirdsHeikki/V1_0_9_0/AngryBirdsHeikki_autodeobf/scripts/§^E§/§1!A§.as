package §^E§
{
   import §3!;§.§3i§;
   import §4V§.§@!Y§;
   import §5!O§.§%!O§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §1!A§ extends §3i§ implements §@!Y§
   {
       
      
      private var §@P§:Boolean = false;
      
      protected var §2m§:Dictionary;
      
      private var §0y§:int = 0;
      
      public function §1!A§(param1:String)
      {
         super(param1);
         this.§2m§ = new Dictionary();
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§9+§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = param1.split(",");
         var _loc4_:Object;
         (_loc4_ = {}).id = §9!Q§.§`!$§.§%^§;
         _loc4_.tutorials = _loc2_;
         var _loc5_:Object = {
            "type":"tutorialshown",
            "player":_loc4_
         };
         var _loc6_:§%!O§ = new §%!O§(_loc5_,§"H§.§4O§ + "tutorialshown",this,§%!O§.§4!-§);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §^;§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6R§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§0y§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§0y§ = param1;
      }
      
      public function get §?@§() : Boolean
      {
         return this.§@P§;
      }
      
      public function set §?@§(param1:Boolean) : void
      {
         this.§@P§ = param1;
      }
   }
}
