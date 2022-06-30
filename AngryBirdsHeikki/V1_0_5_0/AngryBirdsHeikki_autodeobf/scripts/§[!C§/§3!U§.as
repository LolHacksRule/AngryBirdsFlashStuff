package §[!C§
{
   import §1!a§.§3U§;
   import §1!a§.§7!I§;
   import §?!"§.§^!`§;
   import §^i§.§;§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §3!U§ extends EventDispatcher implements §7!I§
   {
      
      public static const §6;§:Number = 30 * 60 * 1000;
       
      
      private var §0"§:String;
      
      private var §'!§:Boolean = true;
      
      private var §,!2§:Array;
      
      private var §9m§:int = 0;
      
      private var § use§:int = 1;
      
      private var §-L§:Number = 0;
      
      public function §3!U§(param1:String)
      {
         super();
         this.§0"§ = param1;
         this.§,!2§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§,!2§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§-L§ = 0;
         this.§'!§ = true;
      }
      
      public function §;D§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§;§ = null;
         var _loc5_:Object = null;
         if(!this.§'!§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§-L§ > §6;§)
         {
            this.§-L§ = _loc2_.time;
            if(this.§0"§ == HighscoreSidebar.§7!Q§)
            {
               _loc3_ = "overallHighScore";
               if(§^!`§.§[K§)
               {
                  _loc5_ = {"playerId":§^!`§.§[K§.§%X§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §;§(_loc5_,§,-§.§ 6§ + _loc3_,this,§;§.§@<§);
               this.§'!§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§^!`§.§[K§)
               {
                  _loc5_ = {
                     "levelId":this.§0"§,
                     "playerId":§^!`§.§[K§.§%X§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§0"§};
               }
               _loc4_ = new §;§(_loc5_,§,-§.§ 6§ + _loc3_,this,§;§.§@<§);
               this.§'!§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §5!W§() : void
      {
         ++this.§ use§;
         if(this.§ use§ > HighscoreSidebar.§!!V§)
         {
            this.§ use§ = 1;
         }
      }
      
      public function §=!P§() : void
      {
         --this.§ use§;
         if(this.§ use§ < 1)
         {
            this.§ use§ = HighscoreSidebar.§!!V§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §3U§.§'o§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§,!2§ = _loc2_.highScore as Array;
            this.§9m§ = _loc2_.heikkiScore;
         }
         this.§'!§ = true;
         dispatchEvent(new §=!!§(§=!!§.§7B§));
      }
      
      public function §4@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!3§(param1:IOErrorEvent) : void
      {
         this.§'!§ = true;
      }
      
      public function get §0^§() : Boolean
      {
         return this.§'!§;
      }
      
      public function get §'!8§() : Array
      {
         return this.§,!2§;
      }
      
      public function get levelId() : String
      {
         return this.§0"§;
      }
      
      public function get §8!b§() : int
      {
         return this.§ use§;
      }
      
      public function get heikkiScore() : int
      {
         return this.§9m§;
      }
   }
}
