package §<"@§
{
   import §%#!§.§4,§;
   import §%#!§.§;V§;
   import §%#!§.Items;
   import §4#,§.Avatar;
   
   public class §8y§
   {
      
      private static var §%#b§:§8y§;
      
      public static const §^!Z§:String = "RedBird";
      
      public static const §4"R§:String = "NoHat";
      
      public static const §-#c§:String = "10001";
      
      public static const §5"f§:String = "CategoryBirds";
       
      
      private var §+G§:Items;
      
      private var §!"c§:§;V§;
      
      private var §["z§:Vector.<Avatar>;
      
      private var §>,§:Avatar;
      
      public function §8y§()
      {
         super();
      }
      
      public static function get § "D§() : §8y§
      {
         if(§%#b§ == null)
         {
            §%#b§ = new §8y§();
         }
         return §%#b§;
      }
      
      public function get characters() : §;V§
      {
         if(this.§!"c§ == null)
         {
            this.§!"c§ = new §;V§();
         }
         return this.§!"c§;
      }
      
      public function set avatar(param1:Avatar) : void
      {
         this.§>,§ = param1;
      }
      
      public function get avatar() : Avatar
      {
         return this.§>,§;
      }
      
      public function get items() : Items
      {
         if(this.§+G§ == null)
         {
            this.§+G§ = new Items();
         }
         return this.§+G§;
      }
      
      public function §6"J§(param1:String) : §4,§
      {
         var _loc2_:§4,§ = null;
         for each(_loc2_ in this.characters.§ !z§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §="[§(param1:String) : Avatar
      {
         var _loc2_:§4,§ = this.§6"J§(param1);
         return new Avatar(_loc2_);
      }
      
      public function §;$!§() : Avatar
      {
         return this.§="[§(§^!Z§);
      }
      
      public function §22§(param1:String) : Avatar
      {
         var _loc2_:Avatar = null;
         for each(_loc2_ in this.§ X§)
         {
            if(_loc2_.§9#T§().mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get § X§() : Vector.<Avatar>
      {
         var _loc1_:§4,§ = null;
         if(this.§["z§ == null)
         {
            this.§["z§ = new Vector.<Avatar>();
            for each(_loc1_ in this.characters.§ !z§)
            {
               this.§["z§.push(this.§="[§(_loc1_.mId));
            }
         }
         return this.§["z§;
      }
      
      public function §^%§() : void
      {
         var _loc1_:Avatar = null;
         for each(_loc1_ in this.§ X§)
         {
            _loc1_.hide();
         }
      }
   }
}
