package §&!>§
{
   import §"0§.§7W§;
   import §#!n§.§3!s§;
   import §%f§.§[o§;
   import §8!e§.§3"&§;
   import com.angrybirds.utils.LocalDataHandler;
   import com.angrybirds.utils.§[!k§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §#^§ extends §7W§ implements §[!k§
   {
       
      
      private var §&o§:Boolean;
      
      protected var §5'§:Dictionary;
      
      private var mLocalData:LocalDataHandler;
      
      public function §#^§(param1:String, param2:§3"&§)
      {
         super(param1,param2);
         this.§5'§ = new Dictionary();
         this.§&o§ = false;
      }
      
      public function §%g§() : void
      {
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§+!7§[param1])
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
         (_loc5_ = {}).id = §2!V§.§!!?§.id;
         _loc5_.tutorials = _loc2_;
         _loc6_ = {
            "type":_loc4_,
            "player":_loc5_
         };
         new §3!s§(_loc6_,AngryBirdsCustom.§1=§ + _loc4_,this,§3!s§.§5%§);
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
      
      public function §0!n§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4J§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §`!K§() : Boolean
      {
         return this.§&o§;
      }
      
      public function set §`!K§(param1:Boolean) : void
      {
         this.§&o§ = param1;
      }
      
      public function §>!h§(param1:String) : int
      {
         var _loc2_:§[o§ = null;
         if(this.§5'§[param1])
         {
            _loc2_ = this.§5'§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8g§(param1:String, param2:int) : void
      {
         var _loc3_:§[o§ = new §[o§(param2);
         this.§5'§[param1] = _loc3_;
      }
   }
}
