package §-"-§
{
   import §,!F§.§@"B§;
   import §8!-§.Items;
   import §8!-§.§["<§;
   import §8!-§.§`"$§;
   
   public class §@!t§
   {
      
      private static var §#!O§:§@!t§;
      
      public static const §^"<§:String = "RedBird";
      
      public static const §+Y§:String = "NoHat";
      
      public static const §!!Q§:String = "10001";
      
      public static const §^!b§:String = "CategoryBirds";
       
      
      private var §8%§:Items;
      
      private var §const§:§`"$§;
      
      private var §-";§:Vector.<§@"B§>;
      
      private var §@t§:§@"B§;
      
      public function §@!t§()
      {
         super();
      }
      
      public static function get §8c§() : §@!t§
      {
         if(§#!O§ == null)
         {
            §#!O§ = new §@!t§();
         }
         return §#!O§;
      }
      
      public function get characters() : §`"$§
      {
         if(this.§const§ == null)
         {
            this.§const§ = new §`"$§();
         }
         return this.§const§;
      }
      
      public function set avatar(param1:§@"B§) : void
      {
         this.§@t§ = param1;
      }
      
      public function get avatar() : §@"B§
      {
         return this.§@t§;
      }
      
      public function get items() : Items
      {
         if(this.§8%§ == null)
         {
            this.§8%§ = new Items();
         }
         return this.§8%§;
      }
      
      public function §!v§(param1:String) : §["<§
      {
         var _loc2_:§["<§ = null;
         for each(_loc2_ in this.characters.§`"-§)
         {
            if(_loc2_.§4W§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §2@§(param1:String) : §@"B§
      {
         var _loc2_:§["<§ = this.§!v§(param1);
         return new §@"B§(_loc2_);
      }
      
      public function §6!4§() : §@"B§
      {
         return this.§2@§(§^"<§);
      }
      
      public function §^!h§(param1:String) : §@"B§
      {
         var _loc2_:§@"B§ = null;
         for each(_loc2_ in this.§"C§)
         {
            if(_loc2_.§"L§().§4W§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §"C§() : Vector.<§@"B§>
      {
         var _loc1_:§["<§ = null;
         if(this.§-";§ == null)
         {
            this.§-";§ = new Vector.<§@"B§>();
            for each(_loc1_ in this.characters.§`"-§)
            {
               this.§-";§.push(this.§2@§(_loc1_.§4W§));
            }
         }
         return this.§-";§;
      }
      
      public function §6O§() : void
      {
         var _loc1_:§@"B§ = null;
         for each(_loc1_ in this.§"C§)
         {
            _loc1_.hide();
         }
      }
   }
}
