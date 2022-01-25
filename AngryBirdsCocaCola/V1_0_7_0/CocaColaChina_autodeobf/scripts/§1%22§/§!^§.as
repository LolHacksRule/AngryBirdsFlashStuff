package §1"§
{
   import §87§.§ C§;
   import §87§.§?z§;
   import §?k§.§[n§;
   import §^!5§.§+^§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §!^§ extends EventDispatcher implements § C§
   {
      
      public static const §5E§:Number = 30 * 60 * 1000;
       
      
      private var §?!%§:String;
      
      private var §=Y§:Boolean = true;
      
      private var §5>§:Array;
      
      private var §'!Z§:int = 1;
      
      private var §'B§:Number = 0;
      
      public function §!^§(param1:String)
      {
         super();
         this.§?!%§ = param1;
         this.§5>§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§5>§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§'B§ = 0;
         this.§=Y§ = true;
      }
      
      public function §-!&§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§[n§ = null;
         var _loc5_:Object = null;
         if(!this.§=Y§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§'B§ > §5E§)
         {
            this.§'B§ = _loc2_.time;
            if(this.§?!%§ == HighscoreSidebar.§[!4§)
            {
               _loc3_ = "topCollector";
               if(§+^§.§@U§)
               {
                  _loc5_ = {"playerId":§+^§.§@U§.§"!I§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §[n§(_loc5_,§"!@§.§ !d§ + _loc3_,this,§[n§.§,!b§);
               this.§=Y§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§+^§.§@U§)
               {
                  _loc5_ = {
                     "levelId":this.§?!%§,
                     "playerId":§+^§.§@U§.§"!I§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§?!%§};
               }
               _loc4_ = new §[n§(_loc5_,§"!@§.§ !d§ + _loc3_,this,§[n§.§,!b§);
               this.§=Y§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §^I§() : void
      {
         ++this.§'!Z§;
         if(this.§'!Z§ > HighscoreSidebar.§&!@§)
         {
            this.§'!Z§ = 1;
         }
      }
      
      public function §#4§() : void
      {
         --this.§'!Z§;
         if(this.§'!Z§ < 1)
         {
            this.§'!Z§ = HighscoreSidebar.§&!@§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §?z§.§>7§((param1.currentTarget as URLLoader).data);
         if(this.§?!%§ == HighscoreSidebar.§[!4§)
         {
            this.§5>§ = _loc2_.topCollectors as Array;
            §"!@§.§6!-§.§ !^§ = _loc2_.collectedBeats;
         }
         else if(_loc2_ is Array)
         {
            this.§5>§ = _loc2_ as Array;
         }
         this.§=Y§ = true;
         dispatchEvent(new §+,§(§+,§.§@!=§));
      }
      
      public function §<p§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §;n§(param1:IOErrorEvent) : void
      {
         this.§=Y§ = true;
      }
      
      public function get §4C§() : Boolean
      {
         return this.§=Y§;
      }
      
      public function get §6P§() : Array
      {
         return this.§5>§;
      }
      
      public function get levelId() : String
      {
         return this.§?!%§;
      }
      
      public function get §0!a§() : int
      {
         return this.§'!Z§;
      }
   }
}
