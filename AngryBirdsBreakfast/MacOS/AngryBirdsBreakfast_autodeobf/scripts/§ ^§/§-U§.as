package § ^§
{
   import §"n§.§<!e§;
   import §8!K§.§5!Y§;
   import §]0§.§=!_§;
   import §]0§.§>I§;
   import §^S§.§#!X§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §-U§ extends §#!X§ implements §>I§
   {
       
      
      private var §&C§:Boolean;
      
      protected var §;z§:Dictionary;
      
      private var §@P§:§=!_§;
      
      public function §-U§(param1:String, param2:§5!Y§)
      {
         super(param1,param2);
         this.§;z§ = new Dictionary();
         this.§&C§ = false;
         this.§@P§ = new §=!_§(§4!=§.§"l§ + "_GAME_DATA");
      }
      
      public function §&^§() : void
      {
         this.§@P§.load();
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§>z§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            this.setTutorialSeen(_loc3_);
         }
      }
      
      override public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         super.setTutorialSeen(param1,param2);
         this.§@P§.setTutorialSeen(param1,param2);
      }
      
      public function §<=§(param1:Boolean) : void
      {
         this.§@P§.§<=§(param1);
      }
      
      public function §[o§(param1:String) : void
      {
         this.§@P§.§[o§(param1);
      }
      
      public function §'!]§() : String
      {
         if(this.§@P§)
         {
            return this.§@P§.§'!]§();
         }
         return "";
      }
      
      override public function setScoreForLevel(param1:String, param2:int) : void
      {
         super.setScoreForLevel(param1,param2);
         this.§@P§.setScoreForLevel(param1,param2);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §'!s§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=o§(param1:IOErrorEvent) : void
      {
      }
      
      public function get §+!9§() : Boolean
      {
         return this.§&C§;
      }
      
      public function set §+!9§(param1:Boolean) : void
      {
         this.§&C§ = param1;
      }
      
      public function §10§(param1:String) : int
      {
         var _loc2_:§<!e§ = null;
         if(this.§;z§[param1])
         {
            _loc2_ = this.§;z§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §@!Q§(param1:String, param2:int) : void
      {
         var _loc3_:§<!e§ = new §<!e§(param2);
         this.§;z§[param1] = _loc3_;
      }
   }
}
