package §7!B§
{
   import § !Y§.§]!,§;
   import § I§.§]"6§;
   import §!?§.§'k§;
   import §7!0§.§-!^§;
   import §`!j§.§9"!§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §@!w§ extends §]"6§ implements §-!^§
   {
       
      
      private var §@!r§:Boolean;
      
      protected var §"D§:Dictionary;
      
      public function §@!w§(param1:String, param2:§9"!§)
      {
         super(param1,param2);
         this.§"D§ = new Dictionary();
         this.§@!r§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§&!-§[param1])
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
         var _loc7_:§'k§ = null;
         if(this.§?m§)
         {
            _loc2_ = param1.split(",");
            for each(_loc3_ in _loc2_)
            {
               §8R§(_loc3_);
            }
            _loc4_ = "tutorialshown";
            (_loc5_ = {}).id = §@!^§.§2j§.id;
            _loc5_.tutorials = _loc2_;
            _loc6_ = {
               "type":_loc4_,
               "player":_loc5_
            };
            _loc7_ = new §'k§(_loc6_,§`Y§.§6T§ + _loc4_,this,§'k§.§;!^§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §?m§() : Boolean
      {
         return this.§@!r§;
      }
      
      public function set §?m§(param1:Boolean) : void
      {
         this.§@!r§ = param1;
      }
      
      public function § !o§(param1:String) : int
      {
         var _loc2_:§]!,§ = null;
         if(this.§"D§[param1])
         {
            _loc2_ = this.§"D§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4!e§(param1:String, param2:int) : void
      {
         var _loc3_:§]!,§ = new §]!,§(param2);
         this.§"D§[param1] = _loc3_;
      }
   }
}
