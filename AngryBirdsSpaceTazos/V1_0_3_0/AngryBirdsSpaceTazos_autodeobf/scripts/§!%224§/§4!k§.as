package §!"4§
{
   import §!!r§.§&!D§;
   import §'!n§.§??§;
   import §4",§.§,!j§;
   import §5R§.§=F§;
   import §;a§.§5!;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §4!k§ extends §5!;§ implements §&!D§
   {
       
      
      private var §"I§:Boolean;
      
      protected var §@!Y§:Dictionary;
      
      public function §4!k§(param1:String, param2:§,!j§)
      {
         super(param1,param2);
         this.§@!Y§ = new Dictionary();
         this.§"I§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§+<§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§=F§ = null;
         if(this.§-"9§)
         {
            _loc2_ = param1.split(",");
            for each(_loc3_ in _loc2_)
            {
               §6"$§(_loc3_);
            }
            _loc4_ = "tutorialshown";
            (_loc5_ = {}).id = §;";§.§3U§.id;
            _loc5_.tutorials = _loc2_;
            _loc6_ = {
               "type":_loc4_,
               "player":_loc5_
            };
            _loc7_ = new §=F§(_loc6_,§["!§.§7!h§ + _loc4_,this,§=F§.§8"H§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §-"9§() : Boolean
      {
         return this.§"I§;
      }
      
      public function set §-"9§(param1:Boolean) : void
      {
         this.§"I§ = param1;
      }
      
      public function §#!E§(param1:String) : int
      {
         var _loc2_:§??§ = null;
         if(this.§@!Y§[param1])
         {
            _loc2_ = this.§@!Y§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §>!`§(param1:String, param2:int) : void
      {
         var _loc3_:§??§ = new §??§(param2);
         this.§@!Y§[param1] = _loc3_;
      }
   }
}
