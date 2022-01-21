package §=b§
{
   import §,i§.§7;§;
   import §7!W§.§;!^§;
   import §<Z§.§!!W§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §!!Z§ extends §;!^§ implements §!!W§
   {
       
      
      protected var §=!M§:Dictionary;
      
      private var §0!6§:int = 0;
      
      private var §'?§:Boolean;
      
      public function §!!Z§(param1:String)
      {
         super(param1);
         this.§=!M§ = new Dictionary();
         this.§'?§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§1!_§[param1])
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
         var _loc6_:§7;§ = null;
         if(§2!M§.§&!#§.§-!Z§)
         {
            _loc2_ = param1.split(",");
            _loc3_ = "tutorialshown";
            (_loc4_ = {}).id = §,!G§.§-!8§.email;
            _loc4_.tutorials = _loc2_;
            _loc5_ = {
               "type":_loc3_,
               "player":_loc4_
            };
            _loc6_ = new §7;§(_loc5_,§2!M§.§`8§ + _loc3_,this,§7;§.§[%§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§0!6§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§0!6§ = param1;
      }
      
      public function get §-!Z§() : Boolean
      {
         return this.§'?§;
      }
      
      public function set §-!Z§(param1:Boolean) : void
      {
         this.§'?§ = param1;
      }
   }
}
