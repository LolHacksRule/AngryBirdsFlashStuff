package §?!"§
{
   import §#!P§.§6!]§;
   import §1!a§.§7!I§;
   import §^i§.§;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §?!N§ extends §6!]§ implements §7!I§
   {
       
      
      private var §0!2§:Boolean = false;
      
      protected var § case§:Dictionary;
      
      private var §5!I§:int = 0;
      
      public function §?!N§(param1:String)
      {
         super(param1);
         this.§ case§ = new Dictionary();
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§]#§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = param1.split(",");
         var _loc4_:Object;
         (_loc4_ = {}).id = §^!`§.§[K§.§%X§;
         _loc4_.tutorials = _loc2_;
         var _loc5_:Object = {
            "type":"tutorialshown",
            "player":_loc4_
         };
         var _loc6_:§;§ = new §;§(_loc5_,§,-§.§ 6§ + "tutorialshown",this,§;§.§@<§);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §4@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!3§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§5!I§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§5!I§ = param1;
      }
      
      public function get §"0§() : Boolean
      {
         return this.§0!2§;
      }
      
      public function set §"0§(param1:Boolean) : void
      {
         this.§0!2§ = param1;
      }
   }
}
