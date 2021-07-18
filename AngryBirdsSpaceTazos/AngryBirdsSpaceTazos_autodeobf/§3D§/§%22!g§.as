package §3D§
{
   import §!?§.§'k§;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §7!B§.§@!^§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §"!g§ extends EventDispatcher implements §-!^§
   {
      
      public static const §0U§:Number = 30 * 60 * 1000;
       
      
      private var § 1§:String;
      
      private var §6t§:Boolean = true;
      
      private var §4=§:Array;
      
      private var §13§:int = -1;
      
      private var §<q§:int = 1;
      
      private var §;!z§:Number = 0;
      
      public function §"!g§(param1:String)
      {
         super();
         this.§ 1§ = param1;
         this.§4=§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§4=§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function §;B§() : void
      {
         this.§;!z§ = 0;
         this.§6t§ = true;
      }
      
      public function §3!l§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§'k§ = null;
         var _loc6_:Object = null;
         if(!this.§6t§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§;!z§ > §0U§)
         {
            this.§;!z§ = _loc2_.time;
            if(this.§ 1§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1 || this.§ 1§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2 || this.§ 1§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
            {
               _loc3_ = "episodeHighscore";
               _loc4_ = "1";
               if(this.§ 1§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
               {
                  _loc4_ = "1";
               }
               else if(this.§ 1§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
               {
                  _loc4_ = "2";
               }
               else if(this.§ 1§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
               {
                  _loc4_ = "3";
               }
               if(§@!^§.§2j§)
               {
                  _loc6_ = {
                     "episodeId":_loc4_,
                     "playerId":§@!^§.§2j§.id
                  };
               }
               else
               {
                  _loc6_ = {"episodeId":_loc4_};
               }
               _loc5_ = new §'k§(_loc6_,§`Y§.§6T§ + _loc3_,this,§'k§.§;!^§);
               this.§6t§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§@!^§.§2j§)
               {
                  _loc6_ = {
                     "levelId":this.§ 1§,
                     "playerId":§@!^§.§2j§.id
                  };
               }
               else
               {
                  _loc6_ = {"levelId":this.§ 1§};
               }
               _loc5_ = new §'k§(_loc6_,§`Y§.§6T§ + _loc3_,this,§'k§.§;!^§);
               this.§6t§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §case §() : void
      {
         ++this.§<q§;
         if(this.§<q§ > HighscoreSidebar.§-!-§)
         {
            this.§<q§ = 1;
         }
      }
      
      public function §4!S§() : void
      {
         --this.§<q§;
         if(this.§<q§ < 1)
         {
            this.§<q§ = HighscoreSidebar.§-!-§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§4=§ = _loc2_.highScore as Array;
         }
         if(_loc2_.timeLeftCompetition)
         {
            this.§13§ = _loc2_.timeLeftCompetition;
            (§ !g§.§;!'§ as §`Y§).§&,§.§5g§(this.§13§);
         }
         this.§6t§ = true;
         dispatchEvent(new §?3§(§?3§.§]!f§));
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         this.§6t§ = true;
      }
      
      public function get §;!Q§() : Boolean
      {
         return this.§6t§;
      }
      
      public function get §-W§() : Array
      {
         return this.§4=§;
      }
      
      public function get levelId() : String
      {
         return this.§ 1§;
      }
      
      public function get §-s§() : int
      {
         return this.§<q§;
      }
      
      public function get §3!J§() : int
      {
         return this.§13§;
      }
   }
}
