package §[0§
{
   public class §5#;§
   {
      
      public static const §8!;§:String = "STAR";
      
      public static const §-"0§:String = "Star Player, rank ";
      
      public static const §9!6§:int = 100;
      
      public static const §1$+§:§6![§ = new §6![§("QUALIFIER","Warm-up league","","");
      
      public static const §<!5§:§6![§ = new §6![§("GLASS","Glass League","","");
      
      public static const §0l§:§6![§ = new §6![§("WOOD","Wood League","","league_promotion_wood");
      
      public static const §^$2§:§6![§ = new §6![§("STONE","Stone League","","league_promotion_stone");
      
      public static const §@"E§:§6![§ = new §6![§("BRONZE","Bronze League","","league_promotion_bronze");
      
      public static const §<c§:§6![§ = new §6![§("SILVER","Silver League","","league_promotion_silver");
      
      public static const §]#J§:§6![§ = new §6![§("GOLD","Gold League","","league_promotion_gold");
      
      public static const §##W§:§6![§ = new §6![§("DIAMOND","Diamond League","","league_promotion_diamond");
      
      public static const §<#J§:Array = [§<!5§,§0l§,§^$2§,§@"E§,§<c§,§]#J§,§##W§];
       
      
      public function §5#;§()
      {
         super();
      }
      
      public static function §9"h§(param1:String) : §6![§
      {
         var _loc2_:§6![§ = null;
         for each(_loc2_ in §<#J§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return §1$+§;
      }
      
      public static function §,!-§(param1:String) : §6![§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §<#J§.length)
         {
            if(§<#J§[_loc2_].id == param1)
            {
               if(_loc2_ == §<#J§.length - 1)
               {
                  return §<#J§[_loc2_];
               }
               return §<#J§[_loc2_ + 1];
            }
            _loc2_++;
         }
         throw new Error("Can\'t find league ID: " + param1);
      }
      
      public static function §6!R§(param1:String) : §6![§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §<#J§.length)
         {
            if(§<#J§[_loc2_].id == param1)
            {
               if(_loc2_ == §<#J§.length - 1)
               {
                  return §<#J§[_loc2_];
               }
               return §<#J§[_loc2_ - 1];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §`$0§(param1:Object) : §6![§
      {
         var _loc2_:§6![§ = null;
         if(param1)
         {
            for each(_loc2_ in §<#J§)
            {
               if(_loc2_.id == param1.tn)
               {
                  _loc2_.name = param1.ln;
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §+x§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§6![§ = null;
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               _loc3_ = §9"h§(_loc2_.n);
               if(_loc3_)
               {
                  _loc3_.reward = _loc2_.r;
                  _loc3_.§"e§ = _loc2_.rm;
               }
            }
         }
      }
      
      public static function §5#x§() : String
      {
         return §<#J§[§<#J§.length - 1].name;
      }
   }
}
