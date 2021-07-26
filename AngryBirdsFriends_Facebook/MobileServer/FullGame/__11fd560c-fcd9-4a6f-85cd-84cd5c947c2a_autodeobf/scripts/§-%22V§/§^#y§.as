package §-"V§
{
   import §-!T§.§3!"§;
   import §-!T§.§6#g§;
   import §-!T§.Items;
   import §`!N§.Avatar;
   
   public class §^#y§
   {
      
      private static var §!c§:§^#y§;
      
      public static const §]!c§:String = "RedBird";
      
      public static const §,"J§:String = "NoHat";
      
      public static const §;"S§:String = "10001";
      
      public static const §0"'§:String = "CategoryBirds";
       
      
      private var §6$!§:Items;
      
      private var §-#&§:§3!"§;
      
      private var §&$=§:Vector.<Avatar>;
      
      private var §^#s§:Avatar;
      
      public function §^#y§()
      {
         super();
      }
      
      public static function get §6!§() : §^#y§
      {
         if(§!c§ == null)
         {
            §!c§ = new §^#y§();
         }
         return §!c§;
      }
      
      public function get characters() : §3!"§
      {
         if(this.§-#&§ == null)
         {
            this.§-#&§ = new §3!"§();
         }
         return this.§-#&§;
      }
      
      public function set §]"C§(param1:Avatar) : void
      {
         this.§^#s§ = param1;
      }
      
      public function get §]"C§() : Avatar
      {
         return this.§^#s§;
      }
      
      public function get items() : Items
      {
         if(this.§6$!§ == null)
         {
            this.§6$!§ = new Items();
         }
         return this.§6$!§;
      }
      
      public function §0Z§(param1:String) : §6#g§
      {
         var _loc2_:§6#g§ = null;
         for each(_loc2_ in this.characters.§["J§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function § i§(param1:String) : Avatar
      {
         var _loc2_:§6#g§ = this.§0Z§(param1);
         return new Avatar(_loc2_);
      }
      
      public function §#"0§() : Avatar
      {
         return this.§ i§(§]!c§);
      }
      
      public function §2!l§(param1:String) : Avatar
      {
         var _loc2_:Avatar = null;
         for each(_loc2_ in this.§'#J§)
         {
            if(_loc2_.§%Z§().mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §'#J§() : Vector.<Avatar>
      {
         var _loc1_:§6#g§ = null;
         if(this.§&$=§ == null)
         {
            this.§&$=§ = new Vector.<Avatar>();
            for each(_loc1_ in this.characters.§["J§)
            {
               this.§&$=§.push(this.§ i§(_loc1_.mId));
            }
         }
         return this.§&$=§;
      }
      
      public function §7#q§() : void
      {
         var _loc1_:Avatar = null;
         for each(_loc1_ in this.§'#J§)
         {
            _loc1_.hide();
         }
      }
   }
}
