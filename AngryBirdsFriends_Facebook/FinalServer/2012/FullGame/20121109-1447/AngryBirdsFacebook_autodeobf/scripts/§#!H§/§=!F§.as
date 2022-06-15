package §#!H§
{
   import §!"=§.§8S§;
   import §!K§.§<=§;
   import §!K§.Items;
   import §!K§.§]q§;
   
   public class §=!F§
   {
      
      private static var §2"<§:§=!F§;
      
      public static const §+S§:String = "RedBird";
      
      public static const §=!n§:String = "NoHat";
      
      public static const §&!s§:String = "10001";
      
      public static const §]" §:String = "CategoryBirds";
       
      
      private var §&!Z§:Items;
      
      private var §?">§:§<=§;
      
      private var §3"#§:Vector.<§8S§>;
      
      private var §;O§:§8S§;
      
      public function §=!F§()
      {
         super();
      }
      
      public static function get §;"§() : §=!F§
      {
         if(§2"<§ == null)
         {
            §2"<§ = new §=!F§();
         }
         return §2"<§;
      }
      
      public function get characters() : §<=§
      {
         if(this.§?">§ == null)
         {
            this.§?">§ = new §<=§();
         }
         return this.§?">§;
      }
      
      public function set avatar(param1:§8S§) : void
      {
         this.§;O§ = param1;
      }
      
      public function get avatar() : §8S§
      {
         return this.§;O§;
      }
      
      public function get items() : Items
      {
         if(this.§&!Z§ == null)
         {
            this.§&!Z§ = new Items();
         }
         return this.§&!Z§;
      }
      
      public function §4"3§(param1:String) : §]q§
      {
         var _loc2_:§]q§ = null;
         for each(_loc2_ in this.characters.§]!6§)
         {
            if(_loc2_.§;!Y§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §8!T§(param1:String) : §8S§
      {
         var _loc2_:§]q§ = this.§4"3§(param1);
         return new §8S§(_loc2_);
      }
      
      public function §;!8§() : §8S§
      {
         return this.§8!T§(§+S§);
      }
      
      public function §,"9§(param1:String) : §8S§
      {
         var _loc2_:§8S§ = null;
         for each(_loc2_ in this.§=u§)
         {
            if(_loc2_.§&!h§().§;!Y§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §=u§() : Vector.<§8S§>
      {
         var _loc1_:§]q§ = null;
         if(this.§3"#§ == null)
         {
            this.§3"#§ = new Vector.<§8S§>();
            for each(_loc1_ in this.characters.§]!6§)
            {
               this.§3"#§.push(this.§8!T§(_loc1_.§;!Y§));
            }
         }
         return this.§3"#§;
      }
      
      public function §5!o§() : void
      {
         var _loc1_:§8S§ = null;
         for each(_loc1_ in this.§=u§)
         {
            _loc1_.hide();
         }
      }
   }
}
