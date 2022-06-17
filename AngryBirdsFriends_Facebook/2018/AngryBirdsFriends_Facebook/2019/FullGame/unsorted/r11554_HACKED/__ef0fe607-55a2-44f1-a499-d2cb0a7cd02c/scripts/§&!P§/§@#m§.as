package §&!P§
{
   import § #s§.§<"@§;
   import § #s§.Items;
   import § #s§.§`c§;
   import §2!X§.Avatar;
   
   public class §@#m§
   {
      
      private static var §#!5§:§@#m§;
      
      public static const §["E§:String = "RedBird";
      
      public static const §6!;§:String = "NoHat";
      
      public static const §-$A§:String = "10001";
      
      public static const §=!G§:String = "CategoryBirds";
       
      
      private var §,#i§:Items;
      
      private var §%$6§:§<"@§;
      
      private var §1"j§:Vector.<Avatar>;
      
      private var §+"1§:Avatar;
      
      public function §@#m§()
      {
         super();
      }
      
      public static function get §?q§() : §@#m§
      {
         if(§#!5§ == null)
         {
            §#!5§ = new §@#m§();
         }
         return §#!5§;
      }
      
      public function get characters() : §<"@§
      {
         if(this.§%$6§ == null)
         {
            this.§%$6§ = new §<"@§();
         }
         return this.§%$6§;
      }
      
      public function set §#U§(param1:Avatar) : void
      {
         this.§+"1§ = param1;
      }
      
      public function get §#U§() : Avatar
      {
         return this.§+"1§;
      }
      
      public function get items() : Items
      {
         if(this.§,#i§ == null)
         {
            this.§,#i§ = new Items();
         }
         return this.§,#i§;
      }
      
      public function §>#§(param1:String) : §`c§
      {
         var _loc2_:§`c§ = null;
         for each(_loc2_ in this.characters.§=!+§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §&!i§(param1:String) : Avatar
      {
         var _loc2_:§`c§ = this.§>#§(param1);
         return new Avatar(_loc2_);
      }
      
      public function §7"3§() : Avatar
      {
         return this.§&!i§(§["E§);
      }
      
      public function §`#r§(param1:String) : Avatar
      {
         var _loc2_:Avatar = null;
         for each(_loc2_ in this.§#A§)
         {
            if(_loc2_.§@"e§().mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §#A§() : Vector.<Avatar>
      {
         var _loc1_:§`c§ = null;
         if(this.§1"j§ == null)
         {
            this.§1"j§ = new Vector.<Avatar>();
            for each(_loc1_ in this.characters.§=!+§)
            {
               this.§1"j§.push(this.§&!i§(_loc1_.mId));
            }
         }
         return this.§1"j§;
      }
      
      public function §3"y§() : void
      {
         var _loc1_:Avatar = null;
         for each(_loc1_ in this.§#A§)
         {
            _loc1_.hide();
         }
      }
   }
}
