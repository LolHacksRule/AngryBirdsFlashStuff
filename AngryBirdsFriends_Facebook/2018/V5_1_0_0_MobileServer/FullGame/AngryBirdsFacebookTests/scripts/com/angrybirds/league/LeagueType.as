package com.angrybirds.league
{
   import com.angrybirds.popups.ErrorPopup;
   
   public class LeagueType
   {
      
      public static const STAR_LEAGUE_ID:String = "STAR";
      
      public static const STAR_LEAGUE_DESCRIPTION:String = "Star Player, rank ";
      
      public static const STAR_PLAYER_RATING_RANGE:int = 100;
      
      public static const sQualifierLeague:LeagueDefinition = new LeagueDefinition("QUALIFIER","Warm-up league","","");
      
      public static const sGlassLeague:LeagueDefinition = new LeagueDefinition("GLASS","Glass League","","");
      
      public static const sWoodLeague:LeagueDefinition = new LeagueDefinition("WOOD","Wood League","","league_promotion_wood");
      
      public static const sStoneLeague:LeagueDefinition = new LeagueDefinition("STONE","Stone League","","league_promotion_stone");
      
      public static const sBronzeLeague:LeagueDefinition = new LeagueDefinition("BRONZE","Bronze League","","league_promotion_bronze");
      
      public static const sSilverLeague:LeagueDefinition = new LeagueDefinition("SILVER","Silver League","","league_promotion_silver");
      
      public static const sGoldLeague:LeagueDefinition = new LeagueDefinition("GOLD","Gold League","","league_promotion_gold");
      
      public static const sDiamondLeague:LeagueDefinition = new LeagueDefinition("DIAMOND","Diamond League","","league_promotion_diamond");
      
      public static const sAllLeagues:Array = [sGlassLeague,sWoodLeague,sStoneLeague,sBronzeLeague,sSilverLeague,sGoldLeague,sDiamondLeague];
       
      
      public function LeagueType()
      {
         super();
      }
      
      public static function getLeagueById(id:String) : LeagueDefinition
      {
         var ld:LeagueDefinition = null;
         for each(ld in sAllLeagues)
         {
            if(ld.id == id)
            {
               return ld;
            }
         }
         return sQualifierLeague;
      }
      
      public static function getNextLeagueId(id:String) : LeagueDefinition
      {
         for(var index:int = 0; index < sAllLeagues.length; index++)
         {
            if(sAllLeagues[index].id == id)
            {
               if(index == sAllLeagues.length - 1)
               {
                  return sAllLeagues[index];
               }
               return sAllLeagues[index + 1];
            }
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"Can\'t find league ID: " + id));
         return null;
      }
      
      public static function getPreviousLeagueId(id:String) : LeagueDefinition
      {
         for(var index:int = 0; index < sAllLeagues.length; index++)
         {
            if(sAllLeagues[index].id == id)
            {
               if(index == sAllLeagues.length - 1)
               {
                  return sAllLeagues[index];
               }
               return sAllLeagues[index - 1];
            }
         }
         return null;
      }
      
      public static function setLeagueDataFromServer(serverData:Object) : LeagueDefinition
      {
         var ld:LeagueDefinition = null;
         if(serverData)
         {
            for each(ld in sAllLeagues)
            {
               if(ld.id == serverData.tn)
               {
                  ld.name = serverData.ln;
                  return ld;
               }
            }
         }
         return null;
      }
      
      public static function injectLeagueConfig(data:Object) : void
      {
         var d:Object = null;
         var ld:LeagueDefinition = null;
         if(data)
         {
            for each(d in data)
            {
               ld = getLeagueById(d.n);
               if(ld)
               {
                  ld.reward = d.r;
                  ld.minRating = d.rm;
               }
            }
         }
      }
      
      public static function getLastLeagueName() : String
      {
         return sAllLeagues[sAllLeagues.length - 1].name;
      }
      
      public static function getLeagueOrderNumber(id:String) : int
      {
         var ld:LeagueDefinition = null;
         var counter:int = 1;
         for each(ld in sAllLeagues)
         {
            if(ld.id == id)
            {
               return counter;
            }
            counter++;
         }
         return -1;
      }
   }
}
