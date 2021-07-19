package §'i§
{
   import § "@§.StateLevelEditor;
   import §^!y§.§'"#§;
   
   public class §'!;§
   {
      
      private static var §1%§:§'!;§;
       
      
      private var §3H§:StateLevelEditor;
      
      private var §8!S§:§<"!§;
      
      private var §[u§:§2!4§;
      
      private var §[!a§:§+!^§;
      
      private var § !6§:§0!u§;
      
      private var §3<§:§6y§;
      
      private var §^9§:§,"%§;
      
      private var §8"4§:§ "+§;
      
      private var §,o§:§6-§;
      
      private var §8!`§:§5A§;
      
      private var §[!b§:Vector.<§8p§>;
      
      public function §'!;§(param1:StateLevelEditor)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8p§ = null;
         if(_loc6_)
         {
            this.§[!b§ = new Vector.<§8p§>();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  §1%§ = this;
                  addr291:
                  while(true)
                  {
                     this.§3H§ = param1;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public static function get §2=§() : §'!;§
      {
         return §1%§;
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8p§ = null;
         for each(_loc1_ in this.§[!b§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.activate();
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8p§ = null;
         for each(_loc2_ in this.§[!b§)
         {
            if(!_loc5_)
            {
               _loc2_.update(param1);
            }
         }
      }
      
      public function get §+"2§() : StateLevelEditor
      {
         return this.§3H§;
      }
      
      public function get §?!W§() : §<"!§
      {
         return this.§8!S§;
      }
      
      public function get §8#§() : § "+§
      {
         return this.§8"4§;
      }
      
      public function get §`!]§() : §2!4§
      {
         return this.§[u§;
      }
      
      public function get §>k§() : §+!^§
      {
         return this.§[!a§;
      }
      
      public function get §1?§() : §0!u§
      {
         return this.§ !6§;
      }
      
      public function get §4!4§() : §6y§
      {
         return this.§3<§;
      }
      
      public function get §<!B§() : §6-§
      {
         return this.§,o§;
      }
      
      public function get §4p§() : §,"%§
      {
         return this.§^9§;
      }
      
      public function get §<J§() : §5A§
      {
         return this.§8!`§;
      }
   }
}
