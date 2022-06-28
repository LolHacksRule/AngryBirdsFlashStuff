package §=!B§
{
   import §9!7§.§?U§;
   
   public class §59§
   {
      
      public static const §3;§:String = "1-1";
      
      protected static var §0J§:Array = null;
      
      protected static var §8!1§:Array = [];
      
      protected static var §2u§:Array = [];
      
      public static var §%j§:String = null;
      
      public static var §72§:String = null;
      
      public static var §]s§:Boolean;
      
      public static var §2>§:int = 0;
       
      
      public function §59§()
      {
         super();
      }
      
      public static function §"2§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§=e§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §0J§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §=e§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§2L§ = _loc2_.leftCorner;
            _loc3_.§%!%§ = _loc2_.rightCorner;
            _loc3_.§4u§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§3m§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §0J§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §2u§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §3!E§() : void
      {
      }
      
      public static function §+,§(param1:String) : §=e§
      {
         var _loc2_:§=e§ = null;
         for each(_loc2_ in §0J§)
         {
            if(_loc2_.§<#§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §6X§(param1:String) : int
      {
         var _loc3_:§=e§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §0J§.length)
         {
            _loc3_ = §0J§[_loc2_];
            if(_loc3_.§<#§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §+!!§(param1:int) : §=e§
      {
         return §0J§[param1];
      }
      
      public static function §<E§(param1:String) : §=e§
      {
         var _loc2_:§=e§ = null;
         for each(_loc2_ in §0J§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<L§() : int
      {
         return §0J§.length;
      }
      
      public static function §'Y§(param1:String) : §^!9§
      {
         if(!§8!1§[param1])
         {
            if(§2u§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §8!1§[param1];
      }
      
      public static function §;f§(param1:String, param2:§^!9§) : void
      {
         §8!1§[param1] = param2;
      }
      
      public static function §1;§(param1:String, param2:int) : int
      {
         var level:§^!9§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §59§.§'Y§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§7G§)
         {
            return 1;
         }
         if(score < level.§`0§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §7?§(param1:String) : String
      {
         if(!§2u§[param1])
         {
            return §3;§;
         }
         return param1;
      }
      
      public static function §6!9§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§=e§ = null;
         if(param1 != §%j§)
         {
            _loc2_ = §6X§(param1);
            if(_loc2_ >= 0)
            {
               §2>§ = _loc2_;
               §72§ = §%j§;
               §%j§ = param1;
               _loc3_ = §8!F§();
               if(_loc3_)
               {
                  _loc3_.§6!%§ = _loc3_.§6!F§(param1);
               }
            }
            else
            {
               §72§ = §%j§;
               §%j§ = null;
            }
         }
      }
      
      public static function §7P§() : String
      {
         return §%j§.substring(5);
      }
      
      public static function §8!F§() : §=e§
      {
         return §0J§[§2>§];
      }
      
      public static function §0!#§() : Boolean
      {
         return true;
      }
      
      public static function §^G§() : Boolean
      {
         var _loc1_:String = §+-§();
         var _loc2_:String = §8!F§().§&n§(§%j§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §?U§.§try §(_loc2_);
         }
         return true;
      }
      
      public static function §+-§() : String
      {
         return §8!F§().§+-§(§%j§);
      }
   }
}
