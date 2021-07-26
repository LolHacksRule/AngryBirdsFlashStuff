package com.angrybirds.data.level.theme
{
   import com.angrybirds.tournament.TournamentModel;
   
   public class LevelThemeBackgroundManagerFriends extends LevelThemeBackgroundManager
   {
       
      
      public function LevelThemeBackgroundManagerFriends()
      {
         super();
      }
      
      public function loadBackgroundsLua(luaData:Object, tournamentAssetID:String) : Boolean
      {
         var name:* = null;
         var backgroundID:String = TournamentModel.BACKGROUND_FB_NAME_PREFIX + tournamentAssetID;
         var backgroundLoaded:Boolean = false;
         for(name in luaData)
         {
            this.parseTheme(luaData[name],backgroundID);
            backgroundLoaded = true;
         }
         return backgroundLoaded;
      }
      
      protected function parseTheme(theme:Object, backgroundID:String) : void
      {
         if(!theme)
         {
            return;
         }
         var bgLayers:Array = theme.backgroundLayers;
         var fgLayers:Array = theme.foregroundLayers;
         var groundColorValue:int = this.getColorValue(theme.groundColor);
         var skyColorValue:int = this.getColorValue(theme.color);
         var music:String = theme.music;
         var musicVolume:Number = !!theme.musicVolume ? Number(theme.musicVolume) : Number(0);
         var texture:* = TournamentModel.instance.brandedTournamentAssetId + "_GROUND";
         var backgroundTexture:* = TournamentModel.instance.brandedTournamentAssetId + "_GROUND2";
         if(theme.texture)
         {
            texture = theme.texture;
         }
         if(theme.backgroundTexture)
         {
            backgroundTexture = theme.backgroundTexture;
         }
         var iconName:String = theme.icon;
         var background:LevelThemeBackgroundFriends = new LevelThemeBackgroundFriends(backgroundID,skyColorValue,groundColorValue,music,musicVolume,texture,backgroundTexture,iconName);
         background.initLayersFromObject(bgLayers,fgLayers,theme.animations);
         mBackgrounds.push(background);
      }
      
      protected function getColorValue(color:Object) : int
      {
         return (parseInt(color.r) << 16) + (parseInt(color.g) << 8) + (parseInt(color.b) << 0);
      }
   }
}
