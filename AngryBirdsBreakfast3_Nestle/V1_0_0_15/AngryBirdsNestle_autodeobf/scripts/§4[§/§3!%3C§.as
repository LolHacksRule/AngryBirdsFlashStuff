package §4[§
{
   import §%!B§.§0![§;
   import §%!n§.§%]§;
   import §1![§.§#E§;
   import §4!i§.§@t§;
   import com.angrybirds.utils.§30§;
   import com.angrybirds.utils.LocalDataHandler;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §3!<§ extends §%]§ implements §30§
   {
       
      
      private var §1!w§:Boolean;
      
      protected var §-U§:Dictionary;
      
      private var mLocalData:LocalDataHandler;
      
      public function §3!<§(param1:String, param2:§0![§)
      {
         super(param1,param2);
         this.§-U§ = new Dictionary();
         this.§1!w§ = false;
      }
      
      public function §+!6§() : void
      {
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§?a§[param1])
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
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.setTutorialSeen(_loc3_);
         }
         _loc4_ = "tutorialshown";
         (_loc5_ = {}).id = §2P§.§[!$§.id;
         _loc5_.tutorials = _loc2_;
         _loc6_ = {
            "type":_loc4_,
            "player":_loc5_
         };
         new §#E§(_loc6_,AngryBirdsCustom.§;"1§ + _loc4_,this,§#E§.§3b§);
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
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §5!z§() : Boolean
      {
         return this.§1!w§;
      }
      
      public function set §5!z§(param1:Boolean) : void
      {
         this.§1!w§ = param1;
      }
      
      public function §5K§(param1:String) : int
      {
         var _loc2_:§@t§ = null;
         if(this.§-U§[param1])
         {
            _loc2_ = this.§-U§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §9!k§(param1:String, param2:int) : void
      {
         var _loc3_:§@t§ = new §@t§(param2);
         this.§-U§[param1] = _loc3_;
      }
   }
}
