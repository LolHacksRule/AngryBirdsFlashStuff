package § ]§
{
   import §!!4§.§8>§;
   import §-"§.§,_§;
   import §9L§.§%"§;
   import §9L§.§?%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §,G§ extends EventDispatcher implements §?%§
   {
      
      public static const §4!0§:Number = 30 * 60 * 1000;
       
      
      private var §&t§:String;
      
      private var §#!7§:Boolean = true;
      
      private var §3L§:Array;
      
      private var §,"§:int = 1;
      
      private var §`k§:Number = 0;
      
      public function §,G§(param1:String)
      {
         super();
         this.§&t§ = param1;
         this.§3L§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§3L§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§`k§ = 0;
         this.§#!7§ = true;
      }
      
      public function §6!D§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§8>§ = null;
         var _loc5_:Object = null;
         if(!this.§#!7§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§`k§ > §4!0§)
         {
            this.§`k§ = _loc2_.time;
            if(this.§&t§ == HighscoreSidebar.§5!<§)
            {
               _loc3_ = "topCollector";
               if(§,_§.§9;§)
               {
                  _loc5_ = {"playerId":§,_§.§9;§.§2-§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §8>§(_loc5_,§-!#§.§>+§ + _loc3_,this,§8>§.§+!O§);
               this.§#!7§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§,_§.§9;§)
               {
                  _loc5_ = {
                     "levelId":this.§&t§,
                     "playerId":§,_§.§9;§.§2-§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§&t§};
               }
               _loc4_ = new §8>§(_loc5_,§-!#§.§>+§ + _loc3_,this,§8>§.§+!O§);
               this.§#!7§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function § >§() : void
      {
         ++this.§,"§;
         if(this.§,"§ > HighscoreSidebar.§]§)
         {
            this.§,"§ = 1;
         }
      }
      
      public function §^?§() : void
      {
         --this.§,"§;
         if(this.§,"§ < 1)
         {
            this.§,"§ = HighscoreSidebar.§]§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §%"§.§1"§((param1.currentTarget as URLLoader).data);
         if(this.§&t§ == HighscoreSidebar.§5!<§)
         {
            this.§3L§ = _loc2_.topCollectors as Array;
            §-!#§.§4,§.§=t§ = _loc2_.collectedBeats;
         }
         else if(_loc2_ is Array)
         {
            this.§3L§ = _loc2_ as Array;
         }
         this.§#!7§ = true;
         dispatchEvent(new §%P§(§%P§.§=!9§));
      }
      
      public function §#!5§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0!B§(param1:IOErrorEvent) : void
      {
         this.§#!7§ = true;
      }
      
      public function get §+!G§() : Boolean
      {
         return this.§#!7§;
      }
      
      public function get §<!8§() : Array
      {
         return this.§3L§;
      }
      
      public function get levelId() : String
      {
         return this.§&t§;
      }
      
      public function get §>!"§() : int
      {
         return this.§,"§;
      }
   }
}
