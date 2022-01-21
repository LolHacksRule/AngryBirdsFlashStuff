package §+-§
{
   import §9L§.§;!K§;
   
   public class §3!5§
   {
      
      public static const §7S§:String = "1-1";
      
      protected static var §;!a§:Array = null;
      
      protected static var §<!^§:Array = [];
      
      protected static var §8!<§:Array = [];
      
      public static var §-!2§:String = null;
      
      public static var §&z§:String = null;
      
      public static var § !B§:Boolean;
      
      public static var §>A§:int = 0;
       
      
      public function §3!5§()
      {
         super();
      }
      
      public static function §8T§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§;!n§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §;!a§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §;!n§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§]!c§ = _loc2_.leftCorner;
            _loc3_.§@r§ = _loc2_.rightCorner;
            _loc3_.§"e§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§4T§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §;!a§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §8!<§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §2@§() : void
      {
      }
      
      public static function §>C§(param1:String) : §;!n§
      {
         var _loc2_:§;!n§ = null;
         for each(_loc2_ in §;!a§)
         {
            if(_loc2_.§'!§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §##§(param1:String) : int
      {
         var _loc3_:§;!n§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §;!a§.length)
         {
            _loc3_ = §;!a§[_loc2_];
            if(_loc3_.§'!§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §"a§(param1:int) : §;!n§
      {
         return §;!a§[param1];
      }
      
      public static function §;x§(param1:String) : §;!n§
      {
         var _loc2_:§;!n§ = null;
         for each(_loc2_ in §;!a§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §0!>§() : int
      {
         return §;!a§.length;
      }
      
      public static function § !R§(param1:String) : §,K§
      {
         if(!§<!^§[param1])
         {
            if(§8!<§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §<!^§[param1];
      }
      
      public static function §1!]§(param1:String, param2:§,K§) : void
      {
         §<!^§[param1] = param2;
      }
      
      public static function §4c§(param1:String, param2:int) : int
      {
         var level:§,K§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §3!5§.§ !R§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§9!&§)
         {
            return 1;
         }
         if(score < level.§3!7§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §&!2§(param1:String) : String
      {
         if(!§8!<§[param1])
         {
            return §7S§;
         }
         return param1;
      }
      
      public static function §[C§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§;!n§ = null;
         if(param1 != §-!2§)
         {
            _loc2_ = §##§(param1);
            if(_loc2_ >= 0)
            {
               §>A§ = _loc2_;
               §&z§ = §-!2§;
               §-!2§ = param1;
               _loc3_ = §#!X§();
               if(_loc3_)
               {
                  _loc3_.§7G§ = _loc3_.§]!l§(param1);
               }
            }
            else
            {
               §&z§ = §-!2§;
               §-!2§ = null;
            }
         }
      }
      
      public static function §8@§() : String
      {
         return §-!2§.substring(5);
      }
      
      public static function §#!X§() : §;!n§
      {
         return §;!a§[§>A§];
      }
      
      public static function §=#§() : Boolean
      {
         return true;
      }
      
      public static function §18§() : Boolean
      {
         var _loc1_:String = §@!4§();
         var _loc2_:String = §#!X§().§?!U§(§-!2§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §;!K§.§+v§(_loc2_);
         }
         return true;
      }
      
      public static function §@!4§() : String
      {
         return §#!X§().§@!4§(§-!2§);
      }
   }
}
