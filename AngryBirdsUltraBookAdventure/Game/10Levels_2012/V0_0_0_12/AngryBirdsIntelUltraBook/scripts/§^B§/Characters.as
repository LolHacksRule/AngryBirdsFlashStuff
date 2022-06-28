package §^B§
{
   import §6b§.§^9§;
   
   public class Characters
   {
      
      public static const mCharacterDataTableBin:Class = §%A§;
       
      
      private var §6!J§:Array;
      
      public function Characters()
      {
         this.§6!J§ = [];
         super();
         this.§+[§();
      }
      
      public function get characters() : Array
      {
         return this.§6!J§;
      }
      
      private function §+[§() : void
      {
         var characterData:XML = null;
         var character:§[_§ = null;
         var scale:String = null;
         var mCharacterDataTable:XML = §^9§.§1<§(mCharacterDataTableBin);
         this.§6!J§ = [];
         for each(characterData in mCharacterDataTable.characters.character)
         {
            character = new §[_§();
            character.§<!B§ = characterData.@id;
            character.sId = characterData.@sid;
            scale = characterData.@activeScale;
            if(scale)
            {
               character.§1I§ = Number(scale);
            }
            scale = characterData.@inactiveScale;
            if(scale)
            {
               character.§1!=§ = Number(scale);
            }
            scale = characterData.@snapshotScale;
            if(scale)
            {
               character.§2!P§ = Number(scale);
            }
            else
            {
               character.§2!P§ = character.§1I§;
            }
            scale = characterData.@profileImageScale;
            if(scale)
            {
               character.§2!O§ = Number(scale);
            }
            else
            {
               character.§2!P§ = character.§1I§;
            }
            this.§6!J§.push(character);
         }
      }
   }
}
