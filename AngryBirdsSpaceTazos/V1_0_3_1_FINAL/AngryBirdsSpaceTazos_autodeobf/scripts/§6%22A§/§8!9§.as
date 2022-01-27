package §6"A§
{
   import §!!r§.§&!D§;
   import §!!r§.§,!u§;
   import §!"4§.§;";§;
   import §5R§.§=F§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §8!9§ extends EventDispatcher implements §&!D§
   {
      
      public static const §'7§:Number = 30 * 60 * 1000;
       
      
      private var §9G§:String;
      
      private var §5$§:Boolean = true;
      
      private var §`!g§:Array;
      
      private var §+!`§:int = -1;
      
      private var §@5§:int = 1;
      
      private var §2S§:Number = 0;
      
      public function §8!9§(param1:String)
      {
         super();
         this.§9G§ = param1;
         this.§`!g§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§`!g§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function §,!h§() : void
      {
         this.§2S§ = 0;
         this.§5$§ = true;
      }
      
      public function §;!j§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§=F§ = null;
         var _loc6_:Object = null;
         if(!this.§5$§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§2S§ > §'7§)
         {
            this.§2S§ = _loc2_.time;
            if(this.§9G§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1 || this.§9G§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2 || this.§9G§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
            {
               _loc3_ = "episodeHighscore";
               _loc4_ = "1";
               if(this.§9G§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
               {
                  _loc4_ = "1";
               }
               else if(this.§9G§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
               {
                  _loc4_ = "2";
               }
               else if(this.§9G§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
               {
                  _loc4_ = "3";
               }
               if(§;";§.§3U§)
               {
                  _loc6_ = {
                     "episodeId":_loc4_,
                     "playerId":§;";§.§3U§.id
                  };
               }
               else
               {
                  _loc6_ = {"episodeId":_loc4_};
               }
               _loc5_ = new §=F§(_loc6_,§["!§.§7!h§ + _loc3_,this,§=F§.§8"H§);
               this.§5$§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§;";§.§3U§)
               {
                  _loc6_ = {
                     "levelId":this.§9G§,
                     "playerId":§;";§.§3U§.id
                  };
               }
               else
               {
                  _loc6_ = {"levelId":this.§9G§};
               }
               _loc5_ = new §=F§(_loc6_,§["!§.§7!h§ + _loc3_,this,§=F§.§8"H§);
               this.§5$§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §?"G§() : void
      {
         ++this.§@5§;
         if(this.§@5§ > HighscoreSidebar.§9k§)
         {
            this.§@5§ = 1;
         }
      }
      
      public function §-"A§() : void
      {
         --this.§@5§;
         if(this.§@5§ < 1)
         {
            this.§@5§ = HighscoreSidebar.§9k§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §,!u§.§4!E§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§`!g§ = _loc2_.highScore as Array;
         }
         if(_loc2_.timeLeftCompetition)
         {
            this.§+!`§ = _loc2_.timeLeftCompetition;
            (§&"<§.§<!7§ as §["!§).§^"<§.§+!_§(this.§+!`§);
         }
         this.§5$§ = true;
         dispatchEvent(new §9!K§(§9!K§.§+!d§));
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
         this.§5$§ = true;
      }
      
      public function get §-"6§() : Boolean
      {
         return this.§5$§;
      }
      
      public function get §%!s§() : Array
      {
         return this.§`!g§;
      }
      
      public function get levelId() : String
      {
         return this.§9G§;
      }
      
      public function get §[^§() : int
      {
         return this.§@5§;
      }
      
      public function get §2M§() : int
      {
         return this.§+!`§;
      }
   }
}
