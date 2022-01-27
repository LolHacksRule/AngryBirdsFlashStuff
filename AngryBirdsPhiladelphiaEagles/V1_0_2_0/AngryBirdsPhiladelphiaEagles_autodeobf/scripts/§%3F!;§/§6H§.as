package §?!;§
{
   import §%!>§.§%!8§;
   
   public class §6H§
   {
      
      public static const §-!<§:String = "1-1";
      
      protected static var §=5§:Array = null;
      
      protected static var §5M§:Array = [];
      
      protected static var §#!4§:Array = [];
      
      public static var §"Q§:String = null;
      
      public static var §<S§:String = null;
      
      public static var § B§:Boolean;
      
      public static var §6!;§:int = 0;
       
      
      public function §6H§()
      {
         super();
      }
      
      public static function §<1§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§;h§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §=5§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §;h§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§"W§ = _loc2_.leftCorner;
            _loc3_.§6'§ = _loc2_.rightCorner;
            _loc3_.§1R§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§`!$§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §=5§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §#!4§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §'p§() : void
      {
      }
      
      public static function §7`§(param1:String) : §;h§
      {
         var _loc2_:§;h§ = null;
         for each(_loc2_ in §=5§)
         {
            if(_loc2_.§ 4§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §9z§(param1:String) : int
      {
         var _loc3_:§;h§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §=5§.length)
         {
            _loc3_ = §=5§[_loc2_];
            if(_loc3_.§ 4§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §4_§(param1:int) : §;h§
      {
         return §=5§[param1];
      }
      
      public static function §^L§(param1:String) : §;h§
      {
         var _loc2_:§;h§ = null;
         for each(_loc2_ in §=5§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §%a§() : int
      {
         return §=5§.length;
      }
      
      public static function §,!C§(param1:String) : §;!,§
      {
         if(!§5M§[param1])
         {
            if(§#!4§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §5M§[param1];
      }
      
      public static function §6T§(param1:String, param2:§;!,§) : void
      {
         §5M§[param1] = param2;
      }
      
      public static function § !J§(param1:String, param2:int) : int
      {
         var level:§;!,§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §6H§.§,!C§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§<!,§)
         {
            return 1;
         }
         if(score < level.§-!K§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §4!+§(param1:String) : String
      {
         if(!§#!4§[param1])
         {
            return §-!<§;
         }
         return param1;
      }
      
      public static function §#L§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§;h§ = null;
         if(param1 != §"Q§)
         {
            _loc2_ = §9z§(param1);
            if(_loc2_ >= 0)
            {
               §6!;§ = _loc2_;
               §<S§ = §"Q§;
               §"Q§ = param1;
               _loc3_ = §'#§();
               if(_loc3_)
               {
                  _loc3_.§6§ = _loc3_.§@;§(param1);
               }
            }
            else
            {
               §<S§ = §"Q§;
               §"Q§ = null;
            }
         }
      }
      
      public static function §]!+§() : String
      {
         return §"Q§.substring(5);
      }
      
      public static function §'#§() : §;h§
      {
         return §=5§[§6!;§];
      }
      
      public static function §implements§() : Boolean
      {
         return true;
      }
      
      public static function §'T§() : Boolean
      {
         var _loc1_:String = § O§();
         var _loc2_:String = §'#§().§&T§(§"Q§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §%!8§.§7D§(_loc2_);
         }
         return true;
      }
      
      public static function § O§() : String
      {
         return §'#§().§ O§(§"Q§);
      }
   }
}
