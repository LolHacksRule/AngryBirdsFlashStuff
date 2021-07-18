package §3Y§
{
   import §-e§.§!!<§;
   import §9I§.§>!=§;
   import §<!!§.§#!`§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §7!>§ extends §!!<§ implements §>!=§
   {
       
      
      private var §?a§:Boolean = false;
      
      protected var §+!§:Dictionary;
      
      private var §!!8§:int = 0;
      
      public function §7!>§(param1:String)
      {
         super(param1);
         this.§+!§ = new Dictionary();
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§#H§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = param1.split(",");
         var _loc4_:Object;
         (_loc4_ = {}).id = §4!_§.§,t§.§5!D§;
         _loc4_.tutorials = _loc2_;
         var _loc5_:Object = {
            "type":"tutorialshown",
            "player":_loc4_
         };
         var _loc6_:§#!`§ = new §#!`§(_loc5_,§,L§.§2;§ + "tutorialshown",this,§#!`§.§`!1§);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§!!8§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§!!8§ = param1;
      }
      
      public function get §"!1§() : Boolean
      {
         return this.§?a§;
      }
      
      public function set §"!1§(param1:Boolean) : void
      {
         this.§?a§ = param1;
      }
   }
}
