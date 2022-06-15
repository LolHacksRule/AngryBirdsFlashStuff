package §4§
{
   import §4",§.Avatar;
   import §@`§.§'$8§;
   import §@`§.§=!1§;
   import §@`§.Items;
   
   public class §7j§
   {
      
      private static var §+#!§:§7j§;
      
      public static const §>#0§:String = "RedBird";
      
      public static const §9# §:String = "NoHat";
      
      public static const §4!X§:String = "10001";
      
      public static const §@#f§:String = "CategoryBirds";
       
      
      private var §2p§:Items;
      
      private var §>#S§:§=!1§;
      
      private var §["L§:Vector.<Avatar>;
      
      private var §40§:Avatar;
      
      public function §7j§()
      {
         super();
      }
      
      public static function get §+!,§() : §7j§
      {
         if(§+#!§ == null)
         {
            §+#!§ = new §7j§();
         }
         return §+#!§;
      }
      
      public function get characters() : §=!1§
      {
         if(this.§>#S§ == null)
         {
            this.§>#S§ = new §=!1§();
         }
         return this.§>#S§;
      }
      
      public function set §?"9§(param1:Avatar) : void
      {
         this.§40§ = param1;
      }
      
      public function get §?"9§() : Avatar
      {
         return this.§40§;
      }
      
      public function get items() : Items
      {
         if(this.§2p§ == null)
         {
            this.§2p§ = new Items();
         }
         return this.§2p§;
      }
      
      public function §>#6§(param1:String) : §'$8§
      {
         var _loc2_:§'$8§ = null;
         for each(_loc2_ in this.characters.§^#,§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §>q§(param1:String) : Avatar
      {
         var _loc2_:§'$8§ = this.§>#6§(param1);
         return new Avatar(_loc2_);
      }
      
      public function §5#s§() : Avatar
      {
         return this.§>q§(§>#0§);
      }
      
      public function §@!_§(param1:String) : Avatar
      {
         var _loc2_:Avatar = null;
         for each(_loc2_ in this.§'"'§)
         {
            if(_loc2_.§@"$§().mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §'"'§() : Vector.<Avatar>
      {
         var _loc1_:§'$8§ = null;
         if(this.§["L§ == null)
         {
            this.§["L§ = new Vector.<Avatar>();
            for each(_loc1_ in this.characters.§^#,§)
            {
               this.§["L§.push(this.§>q§(_loc1_.mId));
            }
         }
         return this.§["L§;
      }
      
      public function §>!E§() : void
      {
         var _loc1_:Avatar = null;
         for each(_loc1_ in this.§'"'§)
         {
            _loc1_.hide();
         }
      }
   }
}
