package §2`§
{
   import §3Y§.§4!_§;
   import §9I§.§+J§;
   import §9I§.§>!=§;
   import §<!!§.§#!`§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §>x§ extends EventDispatcher implements §>!=§
   {
      
      public static const §!;§:Number = 30 * 60 * 1000;
       
      
      private var §@!3§:String;
      
      private var §+?§:Boolean = true;
      
      private var §+!4§:Array;
      
      private var §>L§:int = 0;
      
      private var §-`§:int = 1;
      
      private var §#U§:Number = 0;
      
      public function §>x§(param1:String)
      {
         super();
         this.§@!3§ = param1;
         this.§+!4§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§+!4§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§#U§ = 0;
         this.§+?§ = true;
      }
      
      public function §^9§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§#!`§ = null;
         var _loc5_:Object = null;
         if(!this.§+?§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§#U§ > §!;§)
         {
            this.§#U§ = _loc2_.time;
            if(this.§@!3§ == HighscoreSidebar.§<>§)
            {
               _loc3_ = "overallHighScore";
               if(§4!_§.§,t§)
               {
                  _loc5_ = {"playerId":§4!_§.§,t§.§5!D§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §#!`§(_loc5_,§,L§.§2;§ + _loc3_,this,§#!`§.§`!1§);
               this.§+?§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§4!_§.§,t§)
               {
                  _loc5_ = {
                     "levelId":this.§@!3§,
                     "playerId":§4!_§.§,t§.§5!D§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§@!3§};
               }
               _loc4_ = new §#!`§(_loc5_,§,L§.§2;§ + _loc3_,this,§#!`§.§`!1§);
               this.§+?§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §4§() : void
      {
         ++this.§-`§;
         if(this.§-`§ > HighscoreSidebar.§2>§)
         {
            this.§-`§ = 1;
         }
      }
      
      public function §<$§() : void
      {
         --this.§-`§;
         if(this.§-`§ < 1)
         {
            this.§-`§ = HighscoreSidebar.§2>§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§+!4§ = _loc2_.highScore as Array;
            this.§>L§ = _loc2_.heikkiScore;
         }
         this.§+?§ = true;
         dispatchEvent(new §"0§(§"0§.§3!A§));
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         this.§+?§ = true;
      }
      
      public function get §0!7§() : Boolean
      {
         return this.§+?§;
      }
      
      public function get §"!?§() : Array
      {
         return this.§+!4§;
      }
      
      public function get levelId() : String
      {
         return this.§@!3§;
      }
      
      public function get §`^§() : int
      {
         return this.§-`§;
      }
      
      public function get heikkiScore() : int
      {
         return this.§>L§;
      }
   }
}
