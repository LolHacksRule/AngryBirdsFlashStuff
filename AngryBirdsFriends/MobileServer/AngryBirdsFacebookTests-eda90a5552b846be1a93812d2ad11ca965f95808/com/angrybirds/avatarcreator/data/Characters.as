package com.angrybirds.avatarcreator.data
{
   import com.rovio.factory.XMLFactory;
   
   public class Characters
   {
      
      public static const mCharacterDataTableBin:Class = Characters_mCharacterDataTableBin;
       
      
      private var mCharacters:Array;
      
      public function Characters()
      {
         this.mCharacters = [];
         super();
         this.loadCharacters();
      }
      
      public function getCharacterById(id:String) : Character
      {
         var character:Character = null;
         for each(character in this.allCharacters)
         {
            if(character.mId == id)
            {
               return character;
            }
         }
         return null;
      }
      
      public function get allCharacters() : Array
      {
         return this.mCharacters;
      }
      
      private function loadCharacters() : void
      {
         var characterData:XML = null;
         var character:Character = null;
         var scale:String = null;
         var mCharacterDataTable:XML = XMLFactory.fromOctetStreamClass(mCharacterDataTableBin);
         this.mCharacters = [];
         for each(characterData in mCharacterDataTable.characters.character)
         {
            character = new Character();
            character.mId = characterData.@id;
            character.sId = characterData.@sid;
            scale = characterData.@activeScale;
            if(scale)
            {
               character.mActiveScale = Number(scale);
            }
            scale = characterData.@inactiveScale;
            if(scale)
            {
               character.mInactiveScale = Number(scale);
            }
            scale = characterData.@snapshotScale;
            this.mCharacters.push(character);
         }
      }
   }
}
