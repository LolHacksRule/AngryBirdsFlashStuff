package §>!x§
{
   import §%!P§.§7""§;
   import §5"@§.§1!N§;
   import §[z§.§4!L§;
   import §[z§.§[!A§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §-![§ extends EventDispatcher implements §[!A§
   {
      
      public static const §&^§:Number = 30 * 60 * 1000;
       
      
      private var §5]§:String;
      
      private var §;""§:Boolean = true;
      
      private var §2!H§:Array;
      
      private var §#>§:int = -1;
      
      private var §!"2§:int = 1;
      
      private var § $§:Number = 0;
      
      public function §-![§(param1:String)
      {
         super();
         this.§5]§ = param1;
         this.§2!H§ = [];
         var _loc2_:int = 0;
         while(_loc2_ < 50)
         {
            this.§2!H§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            _loc2_++;
         }
      }
      
      public function §+?§() : void
      {
         this.§ $§ = 0;
         this.§;""§ = true;
      }
      
      public function §&"@§(param1:Boolean = false) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§7""§ = null;
         var _loc6_:Object = null;
         if(!this.§;""§)
         {
            return false;
         }
         var _loc2_:Date = new Date();
         if(param1 || _loc2_.time - this.§ $§ > §&^§)
         {
            this.§ $§ = _loc2_.time;
            if(this.§5]§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1 || this.§5]§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2 || this.§5]§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
            {
               _loc3_ = "episodeHighscore";
               _loc4_ = "1";
               if(this.§5]§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_1)
               {
                  _loc4_ = "1";
               }
               else if(this.§5]§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_2)
               {
                  _loc4_ = "2";
               }
               else if(this.§5]§ == HighscoreSidebar.TOP_OVERALL_SCORES_EPISODE_3)
               {
                  _loc4_ = "3";
               }
               if(§1!N§.§,!<§)
               {
                  _loc6_ = {
                     "episodeId":_loc4_,
                     "playerId":§1!N§.§,!<§.id
                  };
               }
               else
               {
                  _loc6_ = {"episodeId":_loc4_};
               }
               _loc5_ = new §7""§(_loc6_,§@T§.§&Z§ + _loc3_,this,§7""§.§4!8§);
               this.§;""§ = false;
            }
            else
            {
               _loc3_ = "highscore";
               if(§1!N§.§,!<§)
               {
                  _loc6_ = {
                     "levelId":this.§5]§,
                     "playerId":§1!N§.§,!<§.id
                  };
               }
               else
               {
                  _loc6_ = {"levelId":this.§5]§};
               }
               _loc5_ = new §7""§(_loc6_,§@T§.§&Z§ + _loc3_,this,§7""§.§4!8§);
               this.§;""§ = false;
            }
            return true;
         }
         return false;
      }
      
      public function §2!=§() : void
      {
         ++this.§!"2§;
         if(this.§!"2§ > HighscoreSidebar.§[$§)
         {
            this.§!"2§ = 1;
         }
      }
      
      public function §'!m§() : void
      {
         --this.§!"2§;
         if(this.§!"2§ < 1)
         {
            this.§!"2§ = HighscoreSidebar.§[$§;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §4!L§.§#";§((param1.currentTarget as URLLoader).data);
         if(_loc2_.highScore is Array)
         {
            this.§2!H§ = _loc2_.highScore as Array;
         }
         if(_loc2_.timeLeftCompetition)
         {
            this.§#>§ = _loc2_.timeLeftCompetition;
            (§2&§.§6o§ as §@T§).§56§.§ !6§(this.§#>§);
         }
         this.§;""§ = true;
         dispatchEvent(new §2E§(§2E§.§^f§));
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
         this.§;""§ = true;
      }
      
      public function get §"!F§() : Boolean
      {
         return this.§;""§;
      }
      
      public function get §@Q§() : Array
      {
         return this.§2!H§;
      }
      
      public function get levelId() : String
      {
         return this.§5]§;
      }
      
      public function get §1"=§() : int
      {
         return this.§!"2§;
      }
      
      public function get §,R§() : int
      {
         return this.§#>§;
      }
   }
}
