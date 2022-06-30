package §1!6§
{
   import §,i§.§6!B§;
   import §9i§.§+A§;
   import §;<§.§%!I§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §-%§ extends §6!B§ implements §%!I§
   {
       
      
      private var §2!Z§:Boolean = false;
      
      protected var §`v§:Dictionary;
      
      private var §3!§:int = 0;
      
      public function §-%§(param1:String)
      {
         super(param1);
         this.§`v§ = new Dictionary();
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§4!B§[param1])
         {
            return true;
         }
         return false;
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc2_:Array = param1.split(",");
         var _loc4_:Object;
         (_loc4_ = {}).id = § !3§.§@!`§.§#!3§;
         _loc4_.tutorials = _loc2_;
         var _loc5_:Object = {
            "type":"tutorialshown",
            "player":_loc4_
         };
         var _loc6_:§+A§ = new §+A§(_loc5_,§1F§.§&1§ + "tutorialshown",this,§+A§.§<!&§);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §1x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!L§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§3!§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§3!§ = param1;
      }
      
      public function get §1n§() : Boolean
      {
         return this.§2!Z§;
      }
      
      public function set §1n§(param1:Boolean) : void
      {
         this.§2!Z§ = param1;
      }
   }
}
