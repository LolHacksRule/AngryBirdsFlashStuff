package §#%§
{
   import §0!X§.§!!Z§;
   import §49§.§<!@§;
   import §>!M§.§2?§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §,!E§ extends §<!@§ implements §!!Z§
   {
       
      
      private var §8w§:Boolean = false;
      
      protected var §+C§:Dictionary;
      
      private var §8!Q§:int = 0;
      
      public function §,!E§(param1:String)
      {
         super(param1);
         this.§+C§ = new Dictionary();
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§9!Z§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = param1.split(",");
         var _loc4_:Object;
         (_loc4_ = {}).id = §70§.§6d§.§6!X§;
         _loc4_.tutorials = _loc2_;
         var _loc5_:Object = {
            "type":"tutorialshown",
            "player":_loc4_
         };
         var _loc6_:§2?§ = new §2?§(_loc5_,§"!R§.§['§ + "tutorialshown",this,§2?§.§&!g§);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §;!Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §>!6§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§8!Q§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§8!Q§ = param1;
      }
      
      public function get §4g§() : Boolean
      {
         return this.§8w§;
      }
      
      public function set §4g§(param1:Boolean) : void
      {
         this.§8w§ = param1;
      }
   }
}
