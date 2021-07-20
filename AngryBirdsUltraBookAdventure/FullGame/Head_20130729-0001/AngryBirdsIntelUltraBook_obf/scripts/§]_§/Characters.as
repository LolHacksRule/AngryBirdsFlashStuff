package §]_§
{
   import §<u§.§<y§;
   
   public class Characters
   {
      
      public static const mCharacterDataTableBin:Class = §?!c§;
       
      
      private var §<a§:Array;
      
      public function Characters()
      {
         this.§<a§ = [];
         super();
         this.§^I§();
      }
      
      public function get characters() : Array
      {
         return this.§<a§;
      }
      
      private function §^I§() : void
      {
         var characterData:XML = null;
         var character:§%1§ = null;
         var scale:String = null;
         var mCharacterDataTable:XML = §<y§.§1P§(mCharacterDataTableBin);
         this.§<a§ = [];
         for each(characterData in mCharacterDataTable.characters.character)
         {
            character = new §%1§();
            character.§7!D§ = characterData.@id;
            character.sId = characterData.@sid;
            scale = characterData.@activeScale;
            if(scale)
            {
               character.§!5§ = Number(scale);
            }
            scale = characterData.@inactiveScale;
            if(scale)
            {
               character.§#M§ = Number(scale);
            }
            scale = characterData.@snapshotScale;
            if(scale)
            {
               character.§?-§ = Number(scale);
            }
            else
            {
               character.§?-§ = character.§!5§;
            }
            scale = characterData.@profileImageScale;
            if(scale)
            {
               character.§%!h§ = Number(scale);
            }
            else
            {
               character.§?-§ = character.§!5§;
            }
            this.§<a§.push(character);
         }
      }
   }
}
