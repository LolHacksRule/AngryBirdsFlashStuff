package §"q§
{
   import §!!&§.§0!_§;
   import §!P§.§5!1§;
   import §3@§.§=W§;
   import §>!'§.§<U§;
   import com.angrybirds.utils.§#!z§;
   import com.angrybirds.utils.LocalDataHandler;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §;!z§ extends §<U§ implements §#!z§
   {
       
      
      private var §&!e§:Boolean;
      
      protected var §#<§:Dictionary;
      
      private var mLocalData:LocalDataHandler;
      
      public function §;!z§(param1:String, param2:§5!1§)
      {
         super(param1,param2);
         this.§#<§ = new Dictionary();
         this.§&!e§ = false;
      }
      
      public function §8!n§() : void
      {
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§ !+§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§=W§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.setTutorialSeen(_loc3_);
         }
         _loc4_ = "tutorialshown";
         (_loc5_ = {}).id = §6,§.§!!7§.id;
         _loc5_.tutorials = _loc2_;
         _loc6_ = {
            "type":_loc4_,
            "player":_loc5_
         };
         _loc7_ = new §=W§(_loc6_,AngryBirdsCustom.§9"+§ + _loc4_,this,§=W§.§"!x§);
      }
      
      override public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         super.setTutorialSeen(param1,param2);
      }
      
      override public function setScoreForLevel(param1:String, param2:int) : void
      {
         super.setScoreForLevel(param1,param2);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §9!@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §@!2§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §2!?§() : Boolean
      {
         return this.§&!e§;
      }
      
      public function set §2!?§(param1:Boolean) : void
      {
         this.§&!e§ = param1;
      }
      
      public function §41§(param1:String) : int
      {
         var _loc2_:§0!_§ = null;
         if(this.§#<§[param1])
         {
            _loc2_ = this.§#<§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §@"4§(param1:String, param2:int) : void
      {
         var _loc3_:§0!_§ = new §0!_§(param2);
         this.§#<§[param1] = _loc3_;
      }
   }
}
