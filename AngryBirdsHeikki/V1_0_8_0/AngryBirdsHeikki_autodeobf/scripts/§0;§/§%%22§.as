package §0;§
{
   import §1!J§.§>!Q§;
   import §3!^§.§<!O§;
   import §9]§.§@!=§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §%"§ extends §@!=§ implements §>!Q§
   {
       
      
      private var §>!C§:Boolean = false;
      
      protected var §5!&§:Dictionary;
      
      private var §0_§:int = 0;
      
      public function §%"§(param1:String)
      {
         super(param1);
         this.§5!&§ = new Dictionary();
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§7! §[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = param1.split(",");
         var _loc4_:Object;
         (_loc4_ = {}).id = §]U§.§-v§.§"!S§;
         _loc4_.tutorials = _loc2_;
         var _loc5_:Object = {
            "type":"tutorialshown",
            "player":_loc4_
         };
         var _loc6_:§<!O§ = new §<!O§(_loc5_,§2!S§.§1,§ + "tutorialshown",this,§<!O§.§#e§);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §1`§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §"W§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§0_§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§0_§ = param1;
      }
      
      public function get §'Q§() : Boolean
      {
         return this.§>!C§;
      }
      
      public function set §'Q§(param1:Boolean) : void
      {
         this.§>!C§ = param1;
      }
   }
}
