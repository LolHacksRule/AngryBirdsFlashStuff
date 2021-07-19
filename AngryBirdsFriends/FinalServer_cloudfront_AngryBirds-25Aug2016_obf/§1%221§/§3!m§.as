package §1"1§
{
   import §1"o§.Avatar;
   import §6#s§.§1#o§;
   import §6#s§.§8#?§;
   import §6#s§.Items;
   
   public class §3!m§
   {
      
      private static var §,!m§:§3!m§;
      
      public static const §1"m§:String = "RedBird";
      
      public static const §2!T§:String = "NoHat";
      
      public static const §5$ §:String = "10001";
      
      public static const §^!C§:String = "CategoryBirds";
       
      
      private var §5&§:Items;
      
      private var §@O§:§1#o§;
      
      private var §9"z§:Vector.<Avatar>;
      
      private var §6"5§:Avatar;
      
      public function §3!m§()
      {
         super();
      }
      
      public static function get §3!]§() : §3!m§
      {
         if(§,!m§ == null)
         {
            §,!m§ = new §3!m§();
         }
         return §,!m§;
      }
      
      public function get characters() : §1#o§
      {
         if(this.§@O§ == null)
         {
            this.§@O§ = new §1#o§();
         }
         return this.§@O§;
      }
      
      public function set avatar(param1:Avatar) : void
      {
         this.§6"5§ = param1;
      }
      
      public function get avatar() : Avatar
      {
         return this.§6"5§;
      }
      
      public function get items() : Items
      {
         if(this.§5&§ == null)
         {
            this.§5&§ = new Items();
         }
         return this.§5&§;
      }
      
      public function §]"T§(param1:String) : §8#?§
      {
         var _loc2_:§8#?§ = null;
         for each(_loc2_ in this.characters.§1"L§)
         {
            if(_loc2_.mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §&#M§(param1:String) : Avatar
      {
         var _loc2_:§8#?§ = this.§]"T§(param1);
         return new Avatar(_loc2_);
      }
      
      public function §]n§() : Avatar
      {
         return this.§&#M§(§1"m§);
      }
      
      public function §?!,§(param1:String) : Avatar
      {
         var _loc2_:Avatar = null;
         for each(_loc2_ in this.§<"B§)
         {
            if(_loc2_.§%#h§().mId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §<"B§() : Vector.<Avatar>
      {
         var _loc1_:§8#?§ = null;
         if(this.§9"z§ == null)
         {
            this.§9"z§ = new Vector.<Avatar>();
            for each(_loc1_ in this.characters.§1"L§)
            {
               this.§9"z§.push(this.§&#M§(_loc1_.mId));
            }
         }
         return this.§9"z§;
      }
      
      public function §&!X§() : void
      {
         var _loc1_:Avatar = null;
         for each(_loc1_ in this.§<"B§)
         {
            _loc1_.hide();
         }
      }
   }
}
