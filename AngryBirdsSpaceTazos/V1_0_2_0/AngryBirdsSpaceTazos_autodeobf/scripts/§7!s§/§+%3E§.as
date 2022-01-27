package §7!s§
{
   import §""%§.§#`§;
   import §4!x§.§`[§;
   import §4!x§.§`q§;
   import §6"6§.§40§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §+>§ extends EventDispatcher implements §`[§
   {
      
      public static const §4l§:Number = 30 * 60 * 1000;
       
      
      private var §8T§:String;
      
      private var §9F§:Boolean = true;
      
      private var §8"A§:Array;
      
      private var §;!p§:int = -1;
      
      private var §-2§:int = 1;
      
      private var §6"!§:Number = 0;
      
      public function §+>§(param1:String)
      {
         super();
         this.§8T§ = param1;
         this.§8"A§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§8"A§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function §5"1§() : void
      {
         this.§6"!§ = 0;
         this.§9F§ = true;
      }
      
      public function §?V§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§#`§ = null;
         var _loc6_:Object = null;
         if(!this.§9F§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§6"!§ > §4l§)
         {
            this.§6"!§ = _loc2_.time;
            if(this.§8T§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1 || this.§8T§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2 || this.§8T§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
            {
               _loc3_ = "episodeHighscore";
               _loc4_ = "1";
               if(this.§8T§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
               {
                  _loc4_ = "1";
               }
               else if(this.§8T§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
               {
                  _loc4_ = "2";
               }
               else if(this.§8T§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
               {
                  _loc4_ = "3";
               }
               if(§40§.§1"$§)
               {
                  _loc6_ = {
                     "episodeId":_loc4_,
                     "playerId":§40§.§1"$§.id
                  };
               }
               else
               {
                  _loc6_ = {"episodeId":_loc4_};
               }
               _loc5_ = new §#`§(_loc6_,§^"=§.§^"3§ + _loc3_,this,§#`§.§-n§);
               this.§9F§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§40§.§1"$§)
               {
                  _loc6_ = {
                     "levelId":this.§8T§,
                     "playerId":§40§.§1"$§.id
                  };
               }
               else
               {
                  _loc6_ = {"levelId":this.§8T§};
               }
               _loc5_ = new §#`§(_loc6_,§^"=§.§^"3§ + _loc3_,this,§#`§.§-n§);
               this.§9F§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §7?§() : void
      {
         ++this.§-2§;
         if(this.§-2§ > HighscoreSidebar.§'!!§)
         {
            this.§-2§ = 1;
         }
      }
      
      public function §<!U§() : void
      {
         --this.§-2§;
         if(this.§-2§ < 1)
         {
            this.§-2§ = HighscoreSidebar.§'!!§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §`q§.§<f§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§8"A§ = _loc2_.highScore as Array;
         }
         if(_loc2_.timeLeftCompetition)
         {
            this.§;!p§ = _loc2_.timeLeftCompetition;
            (§&!h§.§ u§ as §^"=§).§?P§.§>d§(this.§;!p§);
         }
         this.§9F§ = true;
         dispatchEvent(new §23§(§23§.§?"F§));
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
         this.§9F§ = true;
      }
      
      public function get §#"A§() : Boolean
      {
         return this.§9F§;
      }
      
      public function get §;!1§() : Array
      {
         return this.§8"A§;
      }
      
      public function get levelId() : String
      {
         return this.§8T§;
      }
      
      public function get §,!C§() : int
      {
         return this.§-2§;
      }
      
      public function get § d§() : int
      {
         return this.§;!p§;
      }
   }
}
