package §!9§
{
   import §5!q§.§2"L§;
   import §`!?§.§9!P§;
   import §`!?§.§;!`§;
   import §`!?§.Items;
   
   public class §%y§
   {
      
      private static var §`"$§:§%y§;
      
      public static const §!!j§:String = "RedBird";
      
      public static const §<T§:String = "NoHat";
      
      public static const §85§:String = "10001";
      
      public static const §&""§:String = "CategoryBirds";
       
      
      private var §!!&§:Items;
      
      private var § -§:§9!P§;
      
      private var §?"@§:Vector.<§2"L§>;
      
      private var §#a§:§2"L§;
      
      public function §%y§()
      {
         super();
      }
      
      public static function get §1[§() : §%y§
      {
         if(§`"$§ == null)
         {
            §`"$§ = new §%y§();
         }
         return §`"$§;
      }
      
      public function get characters() : §9!P§
      {
         if(this.§ -§ == null)
         {
            this.§ -§ = new §9!P§();
         }
         return this.§ -§;
      }
      
      public function set avatar(param1:§2"L§) : void
      {
         this.§#a§ = param1;
      }
      
      public function get avatar() : §2"L§
      {
         return this.§#a§;
      }
      
      public function get items() : Items
      {
         if(this.§!!&§ == null)
         {
            this.§!!&§ = new Items();
         }
         return this.§!!&§;
      }
      
      public function §2f§(param1:String) : §;!`§
      {
         var _loc2_:§;!`§ = null;
         for each(_loc2_ in this.characters.§]O§)
         {
            if(_loc2_.§3!9§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §#!t§(param1:String) : §2"L§
      {
         var _loc2_:§;!`§ = this.§2f§(param1);
         return new §2"L§(_loc2_);
      }
      
      public function §1!j§() : §2"L§
      {
         return this.§#!t§(§!!j§);
      }
      
      public function §6!9§(param1:String) : §2"L§
      {
         var _loc2_:§2"L§ = null;
         for each(_loc2_ in this.§&!y§)
         {
            if(_loc2_.§8S§().§3!9§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §&!y§() : Vector.<§2"L§>
      {
         var _loc1_:§;!`§ = null;
         if(this.§?"@§ == null)
         {
            this.§?"@§ = new Vector.<§2"L§>();
            for each(_loc1_ in this.characters.§]O§)
            {
               this.§?"@§.push(this.§#!t§(_loc1_.§3!9§));
            }
         }
         return this.§?"@§;
      }
      
      public function §00§() : void
      {
         var _loc1_:§2"L§ = null;
         for each(_loc1_ in this.§&!y§)
         {
            _loc1_.hide();
         }
      }
   }
}
