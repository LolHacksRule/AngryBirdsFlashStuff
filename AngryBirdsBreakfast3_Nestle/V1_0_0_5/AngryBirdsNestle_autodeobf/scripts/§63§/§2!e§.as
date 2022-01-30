package §63§
{
   import § !T§.§ q§;
   import §2W§.§2E§;
   import §?!v§.§2" §;
   import §]Z§.§8j§;
   import com.angrybirds.utils.§0;§;
   import com.angrybirds.utils.LocalDataHandler;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §2!e§ extends §8j§ implements §0;§
   {
       
      
      private var §6]§:Boolean;
      
      protected var §%Q§:Dictionary;
      
      private var mLocalData:LocalDataHandler;
      
      public function §2!e§(param1:String, param2:§ q§)
      {
         super(param1,param2);
         this.§%Q§ = new Dictionary();
         this.§6]§ = false;
      }
      
      public function §^!>§() : void
      {
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§[!-§[param1])
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
         var _loc7_:§2" § = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.setTutorialSeen(_loc3_);
         }
         _loc4_ = "tutorialshown";
         (_loc5_ = {}).id = §^!!§.§]!P§.id;
         _loc5_.tutorials = _loc2_;
         _loc6_ = {
            "type":_loc4_,
            "player":_loc5_
         };
         _loc7_ = new §2" §(_loc6_,AngryBirdsCustom.§'P§ + _loc4_,this,§2" §.§0!<§);
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
      
      public function §&k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0C§(param1:IOErrorEvent) : void
      {
      }
      
      public function get § !%§() : Boolean
      {
         return this.§6]§;
      }
      
      public function set § !%§(param1:Boolean) : void
      {
         this.§6]§ = param1;
      }
      
      public function §&!d§(param1:String) : int
      {
         var _loc2_:§2E§ = null;
         if(this.§%Q§[param1])
         {
            _loc2_ = this.§%Q§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §=!C§(param1:String, param2:int) : void
      {
         var _loc3_:§2E§ = new §2E§(param2);
         this.§%Q§[param1] = _loc3_;
      }
   }
}
