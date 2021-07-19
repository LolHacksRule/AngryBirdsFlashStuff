package com.angrybirds.data.level.theme
{
   public class LevelThemeBackgroundManager
   {
       
      
      protected var mBackgrounds:Vector.<LevelThemeBackground>;
      
      public function LevelThemeBackgroundManager()
      {
         super();
         this.mBackgrounds = new Vector.<LevelThemeBackground>();
      }
      
      public function loadBackgroundsXML(backgrounds:XMLList) : void
      {
         var background:XML = null;
         for each(background in backgrounds.Background)
         {
            this.newBackground(background.@id,background.Layers,background.@sky,background.@ground,background.@sound,background.@volume,background.@texture,background.@backgroundBlockTexture,background.@icon,background.@clearGround);
         }
      }
      
      public function loadBackgroundXML(background:XML) : void
      {
         this.newBackground(background.@id,background.Layers,background.@sky,background.@ground,background.@sound,background.@volume,background.@texture,background.@backgroundBlockTexture,background.@icon,background.@clearGround);
      }
      
      private function newBackground(name:String, layers:XMLList, colorSky:Number, colorGround:Number, ambientName:String, volume:Number, textureName:String, backgroundBlockTextureName:String, iconName:String, clearGround:Number = 0) : void
      {
         var background:LevelThemeBackground = new LevelThemeBackground(name,colorSky,colorGround,ambientName,volume,textureName,backgroundBlockTextureName,iconName);
         background.initLayersFromXML(layers);
         this.mBackgrounds.push(background);
      }
      
      public function getBackground(name:String) : LevelThemeBackground
      {
         for(var i:int = 0; i < this.mBackgrounds.length; i++)
         {
            if(this.mBackgrounds[i].id.toLowerCase() == name.toLowerCase())
            {
               return this.mBackgrounds[i];
            }
         }
         return null;
      }
      
      public function replaceBackgroundFromXML(background:XML) : void
      {
         var replaced:Boolean = false;
         var bg:LevelThemeBackground = new LevelThemeBackground(background.@id,background.@sky,background.@ground,background.@sound,background.@volume,background.@texture,background.@backgroundBlockTexture,background.@icon);
         bg.initLayersFromXML(background.Layers);
         for(var i:int = 0; i < this.mBackgrounds.length; i++)
         {
            if(this.mBackgrounds[i].id.toLowerCase() == bg.id.toLowerCase())
            {
               this.mBackgrounds[i] = bg;
               replaced = true;
               break;
            }
         }
         if(!replaced)
         {
            this.mBackgrounds.push(bg);
         }
      }
      
      public function getRandomBackgroundName() : String
      {
         var r:int = Math.random() * this.mBackgrounds.length;
         return this.mBackgrounds[r].id;
      }
      
      public function getBackgroundNames() : Array
      {
         var result:Array = [];
         for(var i:int = 0; i < this.mBackgrounds.length; i++)
         {
            result.push(this.mBackgrounds[i].id.toLowerCase());
         }
         return result;
      }
   }
}
