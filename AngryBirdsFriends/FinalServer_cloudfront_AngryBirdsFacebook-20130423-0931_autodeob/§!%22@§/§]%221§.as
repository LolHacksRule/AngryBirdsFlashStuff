package §!"@§
{
   import §4y§.§"!`§;
   import §4y§.§0"H§;
   import §4y§.Items;
   import §]!w§.§[!X§;
   
   public class §]"1§
   {
      
      private static var §+!Y§:§]"1§;
      
      public static const §3!=§:String = "RedBird";
      
      public static const §`!N§:String = "NoHat";
      
      public static const §0"2§:String = "10001";
      
      public static const §[!u§:String = "CategoryBirds";
       
      
      private var §+?§:Items;
      
      private var §+Y§:§"!`§;
      
      private var §+!<§:Vector.<§[!X§>;
      
      private var §1"A§:§[!X§;
      
      public function §]"1§()
      {
         super();
      }
      
      public static function get §&"5§() : §]"1§
      {
         if(§+!Y§ == null)
         {
            §+!Y§ = new §]"1§();
         }
         return §+!Y§;
      }
      
      public function get characters() : §"!`§
      {
         if(this.§+Y§ == null)
         {
            this.§+Y§ = new §"!`§();
         }
         return this.§+Y§;
      }
      
      public function set avatar(param1:§[!X§) : void
      {
         this.§1"A§ = param1;
      }
      
      public function get avatar() : §[!X§
      {
         return this.§1"A§;
      }
      
      public function get items() : Items
      {
         if(this.§+?§ == null)
         {
            this.§+?§ = new Items();
         }
         return this.§+?§;
      }
      
      public function §>"!§(param1:String) : §0"H§
      {
         var _loc2_:§0"H§ = null;
         for each(_loc2_ in this.characters.§]!z§)
         {
            if(_loc2_.§&N§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §@9§(param1:String) : §[!X§
      {
         var _loc2_:§0"H§ = this.§>"!§(param1);
         return new §[!X§(_loc2_);
      }
      
      public function §0!;§() : §[!X§
      {
         return this.§@9§(§3!=§);
      }
      
      public function §!q§(param1:String) : §[!X§
      {
         var _loc2_:§[!X§ = null;
         for each(_loc2_ in this.§5?§)
         {
            if(_loc2_.§=!J§().§&N§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §5?§() : Vector.<§[!X§>
      {
         var _loc1_:§0"H§ = null;
         if(this.§+!<§ == null)
         {
            this.§+!<§ = new Vector.<§[!X§>();
            for each(_loc1_ in this.characters.§]!z§)
            {
               this.§+!<§.push(this.§@9§(_loc1_.§&N§));
            }
         }
         return this.§+!<§;
      }
      
      public function §]t§() : void
      {
         var _loc1_:§[!X§ = null;
         for each(_loc1_ in this.§5?§)
         {
            _loc1_.hide();
         }
      }
   }
}
