package §#b§
{
   import §`!,§.§#!#§;
   
   public class §5!#§
   {
      
      public static const §?!X§:String = "1-1";
      
      protected static var §9! §:Array = null;
      
      protected static var §-!]§:Array = [];
      
      protected static var §8Z§:Array = [];
      
      public static var §'D§:String = null;
      
      public static var §-!E§:String = null;
      
      public static var §%!$§:Boolean;
      
      public static var §[F§:int = 0;
       
      
      public function §5!#§()
      {
         super();
      }
      
      public static function §8M§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§%Y§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §9! § = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §%Y§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§;j§ = _loc2_.leftCorner;
            _loc3_.§2V§ = _loc2_.rightCorner;
            _loc3_.§ ! § = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§?!T§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §9! §.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §8Z§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §"!^§() : void
      {
      }
      
      public static function §4&§(param1:String) : §%Y§
      {
         var _loc2_:§%Y§ = null;
         for each(_loc2_ in §9! §)
         {
            if(_loc2_.§5c§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8E§(param1:String) : int
      {
         var _loc3_:§%Y§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §9! §.length)
         {
            _loc3_ = §9! §[_loc2_];
            if(_loc3_.§5c§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §^=§(param1:int) : §%Y§
      {
         return §9! §[param1];
      }
      
      public static function §%#§(param1:String) : §%Y§
      {
         var _loc2_:§%Y§ = null;
         for each(_loc2_ in §9! §)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §,O§() : int
      {
         return §9! §.length;
      }
      
      public static function getLevelForId(param1:String) : §85§
      {
         if(!§-!]§[param1])
         {
            if(§8Z§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §-!]§[param1];
      }
      
      public static function §+!E§(param1:String, param2:§85§) : void
      {
         §-!]§[param1] = param2;
      }
      
      public static function §<!P§(param1:String, param2:int) : int
      {
         var level:§85§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §5!#§.getLevelForId(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§96§)
         {
            return 1;
         }
         if(score < level.§[^§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §@!§(param1:String) : String
      {
         if(!§8Z§[param1])
         {
            return §?!X§;
         }
         return param1;
      }
      
      public static function §6F§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§%Y§ = null;
         if(param1 != §'D§)
         {
            _loc2_ = §8E§(param1);
            if(_loc2_ >= 0)
            {
               §[F§ = _loc2_;
               §-!E§ = §'D§;
               §'D§ = param1;
               _loc3_ = §%!H§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§&!X§(param1);
               }
            }
            else
            {
               §-!E§ = §'D§;
               §'D§ = null;
            }
         }
      }
      
      public static function §5X§() : String
      {
         return §'D§.substring(5);
      }
      
      public static function §%!H§() : §%Y§
      {
         return §9! §[§[F§];
      }
      
      public static function § N§() : Boolean
      {
         return true;
      }
      
      public static function §&2§() : Boolean
      {
         var _loc1_:String = §8!<§();
         var _loc2_:String = §%!H§().§"!#§(§'D§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §#!#§.§^! §(_loc2_);
         }
         return true;
      }
      
      public static function §8!<§() : String
      {
         return §%!H§().§8!<§(§'D§);
      }
   }
}
