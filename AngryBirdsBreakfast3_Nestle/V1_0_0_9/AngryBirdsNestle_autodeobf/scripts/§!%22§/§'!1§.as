package §!"§
{
   import §?u§.§48§;
   import §`!s§.§9!i§;
   import §`"§.§3h§;
   import com.angrybirds.utils.§?z§;
   import com.angrybirds.utils.LocalDataHandler;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §'!1§ extends §3h§ implements §?z§
   {
       
      
      private var §9U§:Boolean;
      
      protected var §;"!§:Dictionary;
      
      private var mLocalData:LocalDataHandler;
      
      public function §'!1§(param1:String, param2:§-g§)
      {
         super(param1,param2);
         this.§;"!§ = new Dictionary();
         this.§9U§ = false;
      }
      
      public function §?!m§() : void
      {
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§<d§[param1])
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
         (_loc5_ = {}).id = §^!7§.§>!8§.id;
         _loc5_.tutorials = _loc2_;
         _loc6_ = {
            "type":_loc4_,
            "player":_loc5_
         };
         new §48§(_loc6_,AngryBirdsCustom.§8!O§ + _loc4_,this,§48§.§6!^§);
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
      
      public function §%+§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5" §(param1:IOErrorEvent) : void
      {
      }
      
      public function get §'R§() : Boolean
      {
         return this.§9U§;
      }
      
      public function set §'R§(param1:Boolean) : void
      {
         this.§9U§ = param1;
      }
      
      public function §<y§(param1:String) : int
      {
         var _loc2_:§9!i§ = null;
         if(this.§;"!§[param1])
         {
            _loc2_ = this.§;"!§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §=#§(param1:String, param2:int) : void
      {
         var _loc3_:§9!i§ = new §9!i§(param2);
         this.§;"!§[param1] = _loc3_;
      }
   }
}
