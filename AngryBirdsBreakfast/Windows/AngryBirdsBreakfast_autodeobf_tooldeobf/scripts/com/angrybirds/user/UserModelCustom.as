package com.angrybirds.user
{
   import com.rovio.model.UserModel;
   
   public class UserModelCustom extends UserModel
   {
       
      
      private var mLanguage:String;
      
      private var mCountry:String;
      
      private var mUnlockedChapters:Vector.<int>;
      
      public function UserModelCustom()
      {
         super();
         this.mUnlockedChapters = new Vector.<int>();
      }
      
      public function get language() : String
      {
         return this.mLanguage;
      }
      
      public function set language(param1:String) : void
      {
         this.mLanguage = param1;
      }
      
      public function get country() : String
      {
         return this.mCountry;
      }
      
      public function set country(param1:String) : void
      {
         this.mCountry = param1;
      }
      
      public function unlockChapter(param1:int) : void
      {
         if(this.mUnlockedChapters.indexOf(param1) == -1)
         {
            this.mUnlockedChapters.push(param1);
         }
      }
      
      public function getUnlockedChapters() : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>();
         for each(_loc2_ in this.mUnlockedChapters)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function clearUnlockedChapters() : void
      {
         this.mUnlockedChapters = new Vector.<int>();
      }
   }
}
