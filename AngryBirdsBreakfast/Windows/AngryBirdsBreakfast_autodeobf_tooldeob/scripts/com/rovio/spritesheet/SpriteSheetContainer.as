package com.rovio.spritesheet
{
   public class SpriteSheetContainer implements ISpriteSheetContainer
   {
       
      
      private var mName:String;
      
      private var mSheetContainer:Array;
      
      private var mSorted:Boolean;
      
      public function SpriteSheetContainer(param1:String)
      {
         this.mSheetContainer = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function getSpriteSheetWithName(param1:String) : SpriteSheetBase
      {
         var _loc2_:SpriteSheetBase = null;
         for each(_loc2_ in this.mSheetContainer)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function addSheet(param1:SpriteSheetBase) : void
      {
         if(this.getSpriteSheetWithName(param1.name))
         {
            param1.dispose();
            return;
         }
         this.mSheetContainer.push(param1);
         this.mSorted = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:SpriteSheetBase = null;
         for each(_loc1_ in this.mSheetContainer)
         {
            _loc1_.dispose();
         }
         this.mSheetContainer = [];
      }
      
      public function getSprite(param1:String) : SpriteRovio
      {
         var _loc2_:SpriteRovio = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.mSheetContainer.length)
         {
            _loc2_ = (this.mSheetContainer[_loc3_] as SpriteSheetBase).getSprite(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get spriteSheetCount() : int
      {
         return this.mSheetContainer.length;
      }
      
      public function getSpriteSheet(param1:int) : SpriteSheetBase
      {
         if(param1 < 0 || param1 >= this.spriteSheetCount)
         {
            return null;
         }
         if(!this.mSorted)
         {
            this.mSheetContainer.sortOn("name");
            this.mSorted = true;
         }
         return this.mSheetContainer[param1];
      }
   }
}
