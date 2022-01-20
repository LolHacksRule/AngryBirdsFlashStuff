package §0$§
{
   import §&6§.§`!T§;
   import §,E§.§"!K§;
   import §]!!§.§^!D§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §;L§ extends §^!D§ implements §`!T§
   {
       
      
      protected var §?!H§:Dictionary;
      
      private var §+!Y§:int = 0;
      
      private var §9!^§:Boolean;
      
      public function §;L§(param1:String)
      {
         super(param1);
         this.§?!H§ = new Dictionary();
         this.§9!^§ = false;
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         if(§&k§[param1])
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
         var _loc6_:§"!K§ = null;
         if(§3![§.§5!6§.§%!%§)
         {
            _loc2_ = param1.split(",");
            _loc3_ = "tutorialshown";
            (_loc4_ = {}).id = §!t§.§<1§.email;
            _loc4_.tutorials = _loc2_;
            _loc5_ = {
               "type":_loc3_,
               "player":_loc4_
            };
            _loc6_ = new §"!K§(_loc5_,§3![§.§=![§ + _loc3_,this,§"!K§.§<!4§);
         }
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§+!Y§;
      }
      
      public function set overallScore(param1:int) : void
      {
         this.§+!Y§ = param1;
      }
      
      public function get §%!%§() : Boolean
      {
         return this.§9!^§;
      }
      
      public function set §%!%§(param1:Boolean) : void
      {
         this.§9!^§ = param1;
      }
   }
}
