package §'!S§
{
   import §>!u§.Avatar;
   import §^"K§.§'"V§;
   import §^"K§.§9#%§;
   import §^"K§.Items;
   
   public class §<"5§
   {
      
      private static var §!#m§:§<"5§;
      
      public static const §"S§:String = "RedBird";
      
      public static const §7"+§:String = "NoHat";
      
      public static const §,N§:String = "10001";
      
      public static const §>!f§:String = "CategoryBirds";
       
      
      private var §#z§:Items;
      
      private var §^"e§:§'"V§;
      
      private var §,F§:Vector.<Avatar>;
      
      private var §!"K§:Avatar;
      
      public function §<"5§()
      {
         super();
      }
      
      public static function get §3"1§() : §<"5§
      {
         if(§!#m§ == null)
         {
            §!#m§ = new §<"5§();
         }
         return §!#m§;
      }
      
      public function get characters() : §'"V§
      {
         if(this.§^"e§ == null)
         {
            this.§^"e§ = new §'"V§();
         }
         return this.§^"e§;
      }
      
      public function set §["z§(param1:Avatar) : void
      {
         this.§!"K§ = param1;
      }
      
      public function get §["z§() : Avatar
      {
         return this.§!"K§;
      }
      
      public function get items() : Items
      {
         if(this.§#z§ == null)
         {
            this.§#z§ = new Items();
         }
         return this.§#z§;
      }
      
      public function §7"G§(param1:String) : §9#%§
      {
         var _loc2_:§9#%§ = null;
         for each(_loc2_ in this.characters.§?!-§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §<"+§(param1:String) : Avatar
      {
         var _loc2_:§9#%§ = this.§7"G§(param1);
         return new Avatar(_loc2_);
      }
      
      public function §="+§() : Avatar
      {
         return this.§<"+§(§"S§);
      }
      
      public function §6s§(param1:String) : Avatar
      {
         var _loc2_:Avatar = null;
         for each(_loc2_ in this.§,"h§)
         {
            if(_loc2_.§9!s§().mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §,"h§() : Vector.<Avatar>
      {
         var _loc1_:§9#%§ = null;
         if(this.§,F§ == null)
         {
            this.§,F§ = new Vector.<Avatar>();
            for each(_loc1_ in this.characters.§?!-§)
            {
               this.§,F§.push(this.§<"+§(_loc1_.mId));
            }
         }
         return this.§,F§;
      }
      
      public function §'E§() : void
      {
         var _loc1_:Avatar = null;
         for each(_loc1_ in this.§,"h§)
         {
            _loc1_.hide();
         }
      }
   }
}
