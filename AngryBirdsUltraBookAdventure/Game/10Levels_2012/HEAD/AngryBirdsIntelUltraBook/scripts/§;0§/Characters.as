package §;0§
{
   import §'N§.§0d§;
   
   public class Characters
   {
      
      public static const mCharacterDataTableBin:Class = §&<§;
       
      
      private var §<`§:Array;
      
      public function Characters()
      {
         this.§<`§ = [];
         super();
         this.§8!'§();
      }
      
      public function get characters() : Array
      {
         return this.§<`§;
      }
      
      private function §8!'§() : void
      {
         var characterData:XML = null;
         var character:§`!6§ = null;
         var scale:String = null;
         var mCharacterDataTable:XML = §0d§.§@A§(mCharacterDataTableBin);
         this.§<`§ = [];
         for each(characterData in mCharacterDataTable.characters.character)
         {
            character = new §`!6§();
            character.§^!,§ = characterData.@id;
            character.sId = characterData.@sid;
            scale = characterData.@activeScale;
            if(scale)
            {
               character.§!!L§ = Number(scale);
            }
            scale = characterData.@inactiveScale;
            if(scale)
            {
               character.§'!X§ = Number(scale);
            }
            scale = characterData.@snapshotScale;
            if(scale)
            {
               character.§8l§ = Number(scale);
            }
            else
            {
               character.§8l§ = character.§!!L§;
            }
            scale = characterData.@profileImageScale;
            if(scale)
            {
               character.§2"§ = Number(scale);
            }
            else
            {
               character.§8l§ = character.§!!L§;
            }
            this.§<`§.push(character);
         }
      }
   }
}
