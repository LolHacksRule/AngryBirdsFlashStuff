package §-!G§
{
   import §&"&§.§#!'§;
   import §'<§.§=!o§;
   import §[j§.§%p§;
   import §`6§.§-!j§;
   import com.angrybirds.utils.§!!^§;
   import com.angrybirds.utils.LocalDataHandler;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §0![§ extends §#!'§ implements §!!^§
   {
       
      
      private var §5D§:Boolean;
      
      protected var §>n§:Dictionary;
      
      private var mLocalData:LocalDataHandler;
      
      public function §0![§(param1:String, param2:§=!o§)
      {
         super(param1,param2);
         this.§>n§ = new Dictionary();
         this.§5D§ = false;
      }
      
      public function §?!]§() : void
      {
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§,!Y§[param1])
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
         var _loc7_:§%p§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.setTutorialSeen(_loc3_);
         }
         _loc4_ = "tutorialshown";
         (_loc5_ = {}).id = §!!Y§.§9!L§.id;
         _loc5_.tutorials = _loc2_;
         _loc6_ = {
            "type":_loc4_,
            "player":_loc5_
         };
         _loc7_ = new §%p§(_loc6_,AngryBirdsCustom.§5"+§ + _loc4_,this,§%p§.§#0§);
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
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&!`§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §&!P§() : Boolean
      {
         return this.§5D§;
      }
      
      public function set §&!P§(param1:Boolean) : void
      {
         this.§5D§ = param1;
      }
      
      public function §;-§(param1:String) : int
      {
         var _loc2_:§-!j§ = null;
         if(this.§>n§[param1])
         {
            _loc2_ = this.§>n§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §9!U§(param1:String, param2:int) : void
      {
         var _loc3_:§-!j§ = new §-!j§(param2);
         this.§>n§[param1] = _loc3_;
      }
   }
}
