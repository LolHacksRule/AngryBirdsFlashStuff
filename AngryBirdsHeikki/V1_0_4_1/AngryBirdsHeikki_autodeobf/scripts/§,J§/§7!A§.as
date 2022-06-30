package §,J§
{
   import § a§.§`4§;
   
   public class §7!A§
   {
      
      public static const §9#§:String = "1-1";
      
      protected static var §`!N§:Array = null;
      
      protected static var §4k§:Array = [];
      
      protected static var §9K§:Array = [];
      
      public static var § !A§:String = null;
      
      public static var §3C§:String = null;
      
      public static var § ![§:Boolean;
      
      public static var §2u§:int = 0;
       
      
      public function §7!A§()
      {
         super();
      }
      
      public static function §=!0§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§04§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §`!N§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §04§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§!!V§ = _loc2_.leftCorner;
            _loc3_.§4S§ = _loc2_.rightCorner;
            _loc3_.§-D§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§ =§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §`!N§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §9K§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function § ! §() : void
      {
      }
      
      public static function §9<§(param1:String) : §04§
      {
         var _loc2_:§04§ = null;
         for each(_loc2_ in §`!N§)
         {
            if(_loc2_.§,!§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8!D§(param1:String) : int
      {
         var _loc3_:§04§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §`!N§.length)
         {
            _loc3_ = §`!N§[_loc2_];
            if(_loc3_.§,!§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §>&§(param1:int) : §04§
      {
         return §`!N§[param1];
      }
      
      public static function §#?§(param1:String) : §04§
      {
         var _loc2_:§04§ = null;
         for each(_loc2_ in §`!N§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § try§() : int
      {
         return §`!N§.length;
      }
      
      public static function §5!O§(param1:String) : §74§
      {
         if(!§4k§[param1])
         {
            if(§9K§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §4k§[param1];
      }
      
      public static function §2B§(param1:String, param2:§74§) : void
      {
         §4k§[param1] = param2;
      }
      
      public static function §2!!§(param1:String, param2:int) : int
      {
         var level:§74§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §7!A§.§5!O§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§+!H§)
         {
            return 1;
         }
         if(score < level.§!!O§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §]a§(param1:String) : String
      {
         if(!§9K§[param1])
         {
            return §9#§;
         }
         return param1;
      }
      
      public static function §get §(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§04§ = null;
         if(param1 != § !A§)
         {
            _loc2_ = §8!D§(param1);
            if(_loc2_ >= 0)
            {
               §2u§ = _loc2_;
               §3C§ = § !A§;
               § !A§ = param1;
               _loc3_ = §^s§();
               if(_loc3_)
               {
                  _loc3_.§0i§ = _loc3_.§`!L§(param1);
               }
            }
            else
            {
               §3C§ = § !A§;
               § !A§ = null;
            }
         }
      }
      
      public static function §&]§() : String
      {
         return § !A§.substring(5);
      }
      
      public static function §^s§() : §04§
      {
         return §`!N§[§2u§];
      }
      
      public static function §+!=§() : Boolean
      {
         return true;
      }
      
      public static function §`R§() : Boolean
      {
         var _loc1_:String = §5R§();
         var _loc2_:String = §^s§().§]+§(§ !A§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §`4§.§7d§(_loc2_);
         }
         return true;
      }
      
      public static function §5R§() : String
      {
         return §^s§().§5R§(§ !A§);
      }
   }
}
