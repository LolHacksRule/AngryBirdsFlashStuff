package §1j§
{
   import §-!0§.§0!k§;
   import §-!0§.§2! §;
   import §-!0§.§=J§;
   
   public class §=q§
   {
      
      private static var §?!]§:§=J§ = null;
      
      private static var §^!0§:Vector.<§0!k§> = null;
      
      private static var §'>§:int = 0;
      
      private static var §>!l§:String = null;
       
      
      public function §=q§()
      {
         super();
      }
      
      public static function §]!j§(param1:§=J§) : void
      {
         var _loc2_:int = 0;
         §?!]§ = param1;
         if(§^!0§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < §^!0§.length)
            {
               if(§^!0§[_loc2_].id == param1.info.id)
               {
                  §'>§ = _loc2_;
                  break;
               }
               _loc2_++;
            }
         }
         else
         {
            §^!0§ = new Vector.<§0!k§>();
            §^!0§.push(param1.info);
            §'>§ = 0;
         }
      }
      
      public static function get §?!2§() : §2! §
      {
         return §?!]§;
      }
      
      public static function get §"!N§() : String
      {
         if(§^!0§ != null && §^!0§.length > 0)
         {
            return §^!0§[§'>§].id;
         }
         if(§?!]§)
         {
            return §?!]§.info.id;
         }
         return null;
      }
      
      public static function get §+!T§() : String
      {
         return §?!]§ != null ? §?!]§.info.§'!#§ : "";
      }
      
      public static function get §-f§() : String
      {
         return §?!]§.info.authorId;
      }
      
      public static function get §9@§() : Boolean
      {
         return §^!0§ != null && §^!0§.length > §'>§ + 1;
      }
      
      public static function §?!+§() : void
      {
         ++§'>§;
      }
      
      public static function §[!A§(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§0!k§ = null;
         var _loc4_:Object = null;
         §^!0§ = new Vector.<§0!k§>();
         if(param1[0] is String)
         {
            if((param1[0] as String).length > 10)
            {
               _loc2_ = 0;
               while(_loc2_ < param1.length)
               {
                  _loc4_ = JSON.parse(param1[_loc2_]);
                  _loc3_ = §0!k§.§7!`§(_loc4_);
                  §^!0§.push(_loc3_);
                  _loc2_++;
               }
            }
         }
         else if(param1[0] is Object)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.length)
            {
               _loc3_ = §0!k§.§7!`§(param1[_loc2_]);
               §^!0§.push(_loc3_);
               _loc2_++;
            }
         }
         §'>§ = 0;
      }
      
      public static function §0c§() : Vector.<§0!k§>
      {
         return §^!0§;
      }
      
      public static function set §<!@§(param1:String) : void
      {
         §>!l§ = param1;
      }
      
      public static function get §<!@§() : String
      {
         if(§>!l§ == null)
         {
            return "levelOfDay";
         }
         return §>!l§;
      }
   }
}
