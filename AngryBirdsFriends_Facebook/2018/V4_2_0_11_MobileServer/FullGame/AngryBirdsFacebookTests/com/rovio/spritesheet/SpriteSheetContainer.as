package com.rovio.spritesheet
{
   public class SpriteSheetContainer implements ISpriteSheetContainer
   {
       
      
      private var mName:String;
      
      private var mSheetContainer:Array;
      
      private var mSorted:Boolean;
      
      public function SpriteSheetContainer(name:String)
      {
         this.mSheetContainer = [];
         super();
         this.mName = name;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function getSpriteSheetWithName(name:String) : SpriteSheetBase
      {
         var sheet:SpriteSheetBase = null;
         for each(sheet in this.mSheetContainer)
         {
            if(sheet.name == name)
            {
               return sheet;
            }
         }
         return null;
      }
      
      public function addSheet(sheet:SpriteSheetBase) : void
      {
         if(this.getSpriteSheetWithName(sheet.name))
         {
            sheet.dispose();
            return;
         }
         this.mSheetContainer.push(sheet);
         this.mSorted = false;
      }
      
      public function dispose() : void
      {
         var spriteSheet:SpriteSheetBase = null;
         for each(spriteSheet in this.mSheetContainer)
         {
            spriteSheet.dispose();
         }
         this.mSheetContainer = [];
      }
      
      public function getSprite(name:String) : SpriteRovio
      {
         var sprite:SpriteRovio = null;
         for(var i:Number = 0; i < this.mSheetContainer.length; i++)
         {
            sprite = (this.mSheetContainer[i] as SpriteSheetBase).getSprite(name);
            if(sprite != null)
            {
               return sprite;
            }
         }
         return null;
      }
      
      public function get spriteSheetCount() : int
      {
         return this.mSheetContainer.length;
      }
      
      public function getSpriteSheet(index:int) : SpriteSheetBase
      {
         if(index < 0 || index >= this.spriteSheetCount)
         {
            return null;
         }
         if(!this.mSorted)
         {
            this.mSheetContainer.sortOn("name");
            this.mSorted = true;
         }
         return this.mSheetContainer[index];
      }
   }
}
