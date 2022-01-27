package §`V§
{
   import §0;§.§]U§;
   import §1!J§.§6Y§;
   import §1!J§.§>!Q§;
   import §3!^§.§<!O§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §]s§ extends EventDispatcher implements §>!Q§
   {
      
      public static const §5i§:Number = 30 * 60 * 1000;
       
      
      private var §5R§:String;
      
      private var §36§:Boolean = true;
      
      private var §^9§:Array;
      
      private var §"x§:int = 0;
      
      private var § !§:int = 1;
      
      private var §!Q§:Number = 0;
      
      public function §]s§(param1:String)
      {
         super();
         this.§5R§ = param1;
         this.§^9§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§^9§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§!Q§ = 0;
         this.§36§ = true;
      }
      
      public function §^?§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§<!O§ = null;
         var _loc5_:Object = null;
         if(!this.§36§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§!Q§ > §5i§)
         {
            this.§!Q§ = _loc2_.time;
            if(this.§5R§ == HighscoreSidebar.§[!Z§)
            {
               _loc3_ = "overallHighScore";
               if(§]U§.§-v§)
               {
                  _loc5_ = {"playerId":§]U§.§-v§.§"!S§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §<!O§(_loc5_,§2!S§.§1,§ + _loc3_,this,§<!O§.§#e§);
               this.§36§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§]U§.§-v§)
               {
                  _loc5_ = {
                     "levelId":this.§5R§,
                     "playerId":§]U§.§-v§.§"!S§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§5R§};
               }
               _loc4_ = new §<!O§(_loc5_,§2!S§.§1,§ + _loc3_,this,§<!O§.§#e§);
               this.§36§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §2!6§() : void
      {
         ++this.§ !§;
         if(this.§ !§ > HighscoreSidebar.§'E§)
         {
            this.§ !§ = 1;
         }
      }
      
      public function §;C§() : void
      {
         --this.§ !§;
         if(this.§ !§ < 1)
         {
            this.§ !§ = HighscoreSidebar.§'E§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §6Y§.static((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§^9§ = _loc2_.highScore as Array;
            this.§"x§ = _loc2_.heikkiScore;
         }
         this.§36§ = true;
         dispatchEvent(new §3O§(§3O§.§@!;§));
      }
      
      public function §1`§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §"W§(param1:IOErrorEvent) : void
      {
         this.§36§ = true;
      }
      
      public function get § true§() : Boolean
      {
         return this.§36§;
      }
      
      public function get §34§() : Array
      {
         return this.§^9§;
      }
      
      public function get levelId() : String
      {
         return this.§5R§;
      }
      
      public function get §0p§() : int
      {
         return this.§ !§;
      }
      
      public function get heikkiScore() : int
      {
         return this.§"x§;
      }
   }
}
