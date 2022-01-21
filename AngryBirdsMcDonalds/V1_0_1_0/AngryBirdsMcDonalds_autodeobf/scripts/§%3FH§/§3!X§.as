package §?H§
{
   import § !1§.§[n§;
   import §'>§.§]8§;
   import §'Y§.§6Q§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §3!X§ extends §]8§ implements §[n§
   {
       
      
      protected var §1!Q§:Dictionary;
      
      private var §@!S§:int = 0;
      
      private var § get§:Boolean;
      
      public function §3!X§(param1:String)
      {
         super(param1);
         this.§1!Q§ = new Dictionary();
         this.§ get§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§@!h§[param1])
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
         var _loc6_:§6Q§ = null;
         if(§;!4§.§8'§.§2!^§)
         {
            _loc2_ = param1.split(",");
            _loc3_ = "tutorialshown";
            (_loc4_ = {}).id = §>!!§.§^!4§.email;
            _loc4_.tutorials = _loc2_;
            _loc5_ = {
               "type":_loc3_,
               "player":_loc4_
            };
            _loc6_ = new §6Q§(_loc5_,§;!4§.§'!O§ + _loc3_,this,§6Q§.§&!0§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§@!S§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§@!S§ = param1;
      }
      
      public function get §2!^§() : Boolean
      {
         return this.§ get§;
      }
      
      public function set §2!^§(param1:Boolean) : void
      {
         this.§ get§ = param1;
      }
   }
}
