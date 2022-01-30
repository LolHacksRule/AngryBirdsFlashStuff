package §=X§
{
   import §!!L§.§5!n§;
   import §#!`§.§4!#§;
   import §-!F§.§?!k§;
   import §>!a§.§5l§;
   import com.angrybirds.utils.LocalDataHandler;
   import com.angrybirds.utils.§finally§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §-!f§ extends §5!n§ implements §finally§
   {
       
      
      private var §@!>§:Boolean;
      
      protected var §3n§:Dictionary;
      
      private var mLocalData:LocalDataHandler;
      
      public function §-!f§(param1:String, param2:§5l§)
      {
         super(param1,param2);
         this.§3n§ = new Dictionary();
         this.§@!>§ = false;
      }
      
      public function §3![§() : void
      {
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§%!0§[param1])
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
         var _loc7_:§4!#§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.setTutorialSeen(_loc3_);
         }
         _loc4_ = "tutorialshown";
         (_loc5_ = {}).id = §3j§.§0!i§.id;
         _loc5_.tutorials = _loc2_;
         _loc6_ = {
            "type":_loc4_,
            "player":_loc5_
         };
         _loc7_ = new §4!#§(_loc6_,AngryBirdsCustom.§91§ + _loc4_,this,§4!#§.§;0§);
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
      
      public function §+!R§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!E§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §2!7§() : Boolean
      {
         return this.§@!>§;
      }
      
      public function set §2!7§(param1:Boolean) : void
      {
         this.§@!>§ = param1;
      }
      
      public function §1!v§(param1:String) : int
      {
         var _loc2_:§?!k§ = null;
         if(this.§3n§[param1])
         {
            _loc2_ = this.§3n§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §7$§(param1:String, param2:int) : void
      {
         var _loc3_:§?!k§ = new §?!k§(param2);
         this.§3n§[param1] = _loc3_;
      }
   }
}
