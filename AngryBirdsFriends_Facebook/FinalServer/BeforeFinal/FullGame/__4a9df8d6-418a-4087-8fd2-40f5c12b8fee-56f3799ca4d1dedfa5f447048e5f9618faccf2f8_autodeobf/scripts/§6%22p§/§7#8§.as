package §6"p§
{
   import §%y§.§-#A§;
   import §%y§.§7$@§;
   import §%y§.Items;
   import §4q§.Avatar;
   
   public class §7#8§
   {
      
      private static var §1$8§:§7#8§;
      
      public static const §;!_§:String = "RedBird";
      
      public static const §?+§:String = "NoHat";
      
      public static const §+A§:String = "10001";
      
      public static const §+"+§:String = "CategoryBirds";
       
      
      private var §!$"§:Items;
      
      private var §""e§:§-#A§;
      
      private var §0"P§:Vector.<Avatar>;
      
      private var §3"Q§:Avatar;
      
      public function §7#8§()
      {
         super();
      }
      
      public static function get §`"H§() : §7#8§
      {
         if(§1$8§ == null)
         {
            §1$8§ = new §7#8§();
         }
         return §1$8§;
      }
      
      public function get characters() : §-#A§
      {
         if(this.§""e§ == null)
         {
            this.§""e§ = new §-#A§();
         }
         return this.§""e§;
      }
      
      public function set §5$D§(param1:Avatar) : void
      {
         this.§3"Q§ = param1;
      }
      
      public function get §5$D§() : Avatar
      {
         return this.§3"Q§;
      }
      
      public function get items() : Items
      {
         if(this.§!$"§ == null)
         {
            this.§!$"§ = new Items();
         }
         return this.§!$"§;
      }
      
      public function §[#B§(param1:String) : §7$@§
      {
         var _loc2_:§7$@§ = null;
         for each(_loc2_ in this.characters.§ !a§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §1#;§(param1:String) : Avatar
      {
         var _loc2_:§7$@§ = this.§[#B§(param1);
         return new Avatar(_loc2_);
      }
      
      public function § #C§() : Avatar
      {
         return this.§1#;§(§;!_§);
      }
      
      public function §5$@§(param1:String) : Avatar
      {
         var _loc2_:Avatar = null;
         for each(_loc2_ in this.§6$=§)
         {
            if(_loc2_.§+"M§().mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §6$=§() : Vector.<Avatar>
      {
         var _loc1_:§7$@§ = null;
         if(this.§0"P§ == null)
         {
            this.§0"P§ = new Vector.<Avatar>();
            for each(_loc1_ in this.characters.§ !a§)
            {
               this.§0"P§.push(this.§1#;§(_loc1_.mId));
            }
         }
         return this.§0"P§;
      }
      
      public function §"!e§() : void
      {
         var _loc1_:Avatar = null;
         for each(_loc1_ in this.§6$=§)
         {
            _loc1_.hide();
         }
      }
   }
}
