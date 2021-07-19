package §3Y§
{
   import §-e§.§!!<§;
   import §9I§.§>!=§;
   import §<!!§.§#!`§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   
   public class §7!>§ extends §!!<§ implements §>!=§
   {
       
      
      private var §?a§:Boolean = false;
      
      protected var §+!§:Dictionary;
      
      private var §!!8§:int = 0;
      
      public function §7!>§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super(param1);
            do
            {
               this.§+!§ = new Dictionary();
            }
            while(_loc2_);
            
         }
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§#H§[param1])
            {
               if(_loc3_)
               {
                  addr50:
                  §§push(true);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr50);
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Array = param1.split(",");
         var _loc3_:String = "tutorialshown";
         var _loc4_:Object;
         (_loc4_ = {}).id = §4!_§.§,t§.§5!D§;
         if(_loc7_)
         {
            _loc4_.tutorials = _loc2_;
         }
         var _loc5_:Object = {
            "type":_loc3_,
            "player":_loc4_
         };
         var _loc6_:§#!`§ = new §#!`§(_loc5_,§,L§.§2;§ + _loc3_,this,§#!`§.§`!1§);
      }
      
      public function onComplete(param1:Event) : void
      {
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
      }
      
      public function get overallScore() : int
      {
         return this.§!!8§;
      }
      
      public function set overallScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§!!8§ = param1;
         }
      }
      
      public function get §"!1§() : Boolean
      {
         return this.§?a§;
      }
      
      public function set §"!1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?a§ = param1;
         }
      }
   }
}
