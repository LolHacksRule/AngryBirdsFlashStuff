package com.AngryBirds.AvatarCreator.data
{
   import com.rovio.factory.XMLFactory;
   
   public class Characters
   {
      
      private static var mCharacterDataTableBin:Class = Characters_mCharacterDataTableBin;
      
      public static var mCharacterDataTable:XML;
       
      
      public var mCharacters:Array = null;
      
      public function Characters()
      {
         super();
      }
      
      public function loadCharacters() : void
      {
         var _loc1_:XML = null;
         var _loc2_:Character = null;
         var _loc3_:String = null;
         mCharacterDataTable = XMLFactory.fromOctetStreamClass(mCharacterDataTableBin);
         this.mCharacters = new Array();
         for each(_loc1_ in mCharacterDataTable.Characters.Character)
         {
            _loc2_ = new Character();
            _loc2_.mId = _loc1_.@id;
            _loc3_ = _loc1_.@activeScale;
            if(_loc3_)
            {
               _loc2_.mActiveScale = Number(_loc3_);
            }
            _loc3_ = _loc1_.@inactiveScale;
            if(_loc3_)
            {
               _loc2_.mInactiveScale = Number(_loc3_);
            }
            _loc3_ = _loc1_.@snapshotScale;
            if(_loc3_)
            {
               _loc2_.mSnapshotScale = Number(_loc3_);
            }
            else
            {
               _loc2_.mSnapshotScale = _loc2_.mActiveScale;
            }
            _loc3_ = _loc1_.@profileImageScale;
            if(_loc3_)
            {
               _loc2_.mProfileImageScale = Number(_loc3_);
            }
            else
            {
               _loc2_.mSnapshotScale = _loc2_.mActiveScale;
            }
            this.mCharacters.push(_loc2_);
         }
      }
   }
}
