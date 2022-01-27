package §3!%§
{
   import §?6§.§'!K§;
   
   public class §-k§
   {
      
      public static const §'!C§:String = "1-1";
      
      protected static var §90§:Array = null;
      
      protected static var §@!P§:Array = [];
      
      protected static var §"u§:Array = [];
      
      public static var §%D§:String = null;
      
      public static var §5!0§:String = null;
      
      public static var §&!@§:Boolean;
      
      public static var §>-§:int = 0;
       
      
      public function §-k§()
      {
         super();
      }
      
      public static function §^j§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§9i§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §90§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §9i§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§8t§ = _loc2_.leftCorner;
            _loc3_.§<D§ = _loc2_.rightCorner;
            _loc3_.§+!+§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§;Y§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §90§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §"u§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §&n§() : void
      {
      }
      
      public static function §#L§(param1:String) : §9i§
      {
         var _loc2_:§9i§ = null;
         for each(_loc2_ in §90§)
         {
            if(_loc2_.§2!8§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8$§(param1:String) : int
      {
         var _loc3_:§9i§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §90§.length)
         {
            _loc3_ = §90§[_loc2_];
            if(_loc3_.§2!8§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §^4§(param1:int) : §9i§
      {
         return §90§[param1];
      }
      
      public static function §`!H§(param1:String) : §9i§
      {
         var _loc2_:§9i§ = null;
         for each(_loc2_ in §90§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §;F§() : int
      {
         return §90§.length;
      }
      
      public static function §>!5§(param1:String) : §#!K§
      {
         if(!§@!P§[param1])
         {
            if(§"u§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §@!P§[param1];
      }
      
      public static function §-B§(param1:String, param2:§#!K§) : void
      {
         §@!P§[param1] = param2;
      }
      
      public static function §!T§(param1:String, param2:int) : int
      {
         var level:§#!K§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §-k§.§>!5§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§]!H§)
         {
            return 1;
         }
         if(score < level.§+!<§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §0S§(param1:String) : String
      {
         if(!§"u§[param1])
         {
            return §'!C§;
         }
         return param1;
      }
      
      public static function §+p§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§9i§ = null;
         if(param1 != §%D§)
         {
            _loc2_ = §8$§(param1);
            if(_loc2_ >= 0)
            {
               §>-§ = _loc2_;
               §5!0§ = §%D§;
               §%D§ = param1;
               _loc3_ = §0!1§();
               if(_loc3_)
               {
                  _loc3_.§3Y§ = _loc3_.§"n§(param1);
               }
            }
            else
            {
               §5!0§ = §%D§;
               §%D§ = null;
            }
         }
      }
      
      public static function §6j§() : String
      {
         return §%D§.substring(5);
      }
      
      public static function §0!1§() : §9i§
      {
         return §90§[§>-§];
      }
      
      public static function §&!0§() : Boolean
      {
         return true;
      }
      
      public static function §>!%§() : Boolean
      {
         var _loc1_:String = §7#§();
         var _loc2_:String = §0!1§().§[x§(§%D§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §'!K§.§^]§(_loc2_);
         }
         return true;
      }
      
      public static function §7#§() : String
      {
         return §0!1§().§7#§(§%D§);
      }
   }
}
