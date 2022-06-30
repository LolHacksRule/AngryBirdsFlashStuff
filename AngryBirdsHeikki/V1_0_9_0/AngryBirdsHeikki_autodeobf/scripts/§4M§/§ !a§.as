package §4M§
{
   import §4V§.§=!=§;
   import §4V§.§@!Y§;
   import §5!O§.§%!O§;
   import §^E§.§9!Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class § !a§ extends EventDispatcher implements §@!Y§
   {
      
      public static const §!!0§:Number = 30 * 60 * 1000;
       
      
      private var §'F§:String;
      
      private var §-@§:Boolean = true;
      
      private var §;z§:Array;
      
      private var §!_§:int = 0;
      
      private var §"!8§:int = 1;
      
      private var §"!^§:Number = 0;
      
      public function § !a§(param1:String)
      {
         super();
         this.§'F§ = param1;
         this.§;z§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§;z§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function clearReloadTimer() : void
      {
         this.§"!^§ = 0;
         this.§-@§ = true;
      }
      
      public function §0=§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§%!O§ = null;
         var _loc5_:Object = null;
         if(!this.§-@§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§"!^§ > §!!0§)
         {
            this.§"!^§ = _loc2_.time;
            if(this.§'F§ == HighscoreSidebar.§6!_§)
            {
               _loc3_ = "overallHighScore";
               if(§9!Q§.§`!$§)
               {
                  _loc5_ = {"playerId":§9!Q§.§`!$§.§%^§};
               }
               else
               {
                  _loc5_ = {};
               }
               _loc4_ = new §%!O§(_loc5_,§"H§.§4O§ + _loc3_,this,§%!O§.§4!-§);
               this.§-@§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§9!Q§.§`!$§)
               {
                  _loc5_ = {
                     "levelId":this.§'F§,
                     "playerId":§9!Q§.§`!$§.§%^§
                  };
               }
               else
               {
                  _loc5_ = {"levelId":this.§'F§};
               }
               _loc4_ = new §%!O§(_loc5_,§"H§.§4O§ + _loc3_,this,§%!O§.§4!-§);
               this.§-@§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §2B§() : void
      {
         ++this.§"!8§;
         if(this.§"!8§ > HighscoreSidebar.§8s§)
         {
            this.§"!8§ = 1;
         }
      }
      
      public function §<d§() : void
      {
         --this.§"!8§;
         if(this.§"!8§ < 1)
         {
            this.§"!8§ = HighscoreSidebar.§8s§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §=!=§.§=!a§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§;z§ = _loc2_.highScore as Array;
            this.§!_§ = _loc2_.heikkiScore;
         }
         this.§-@§ = true;
         dispatchEvent(new §1!e§(§1!e§.§'!W§));
      }
      
      public function §^;§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6R§(param1:IOErrorEvent) : void
      {
         this.§-@§ = true;
      }
      
      public function get §+B§() : Boolean
      {
         return this.§-@§;
      }
      
      public function get §`w§() : Array
      {
         return this.§;z§;
      }
      
      public function get levelId() : String
      {
         return this.§'F§;
      }
      
      public function get §]2§() : int
      {
         return this.§"!8§;
      }
      
      public function get heikkiScore() : int
      {
         return this.§!_§;
      }
   }
}
