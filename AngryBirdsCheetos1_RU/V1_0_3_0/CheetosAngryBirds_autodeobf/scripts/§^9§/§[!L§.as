package §^9§
{
   import §&-§.§=B§;
   
   public class §[!L§
   {
      
      public static const §<!U§:String = "1-1";
      
      protected static var §=!"§:Array = null;
      
      protected static var §]!;§:Array = [];
      
      protected static var §+!Q§:Array = [];
      
      public static var §^!X§:String = null;
      
      public static var §0h§:String = null;
      
      public static var §<O§:Boolean;
      
      public static var §6K§:int = 0;
       
      
      public function §[!L§()
      {
         super();
      }
      
      public static function §6S§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:override = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §=!"§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new override();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§9!<§ = _loc2_.leftCorner;
            _loc3_.§2!A§ = _loc2_.rightCorner;
            _loc3_.§5#§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§%!3§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §=!"§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §+!Q§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §2!H§() : void
      {
      }
      
      public static function §=!§(param1:String) : override
      {
         var _loc2_:override = null;
         for each(_loc2_ in §=!"§)
         {
            if(_loc2_.§3!P§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §!5§(param1:String) : int
      {
         var _loc3_:override = null;
         var _loc2_:int = 0;
         while(_loc2_ < §=!"§.length)
         {
            _loc3_ = §=!"§[_loc2_];
            if(_loc3_.§3!P§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §=k§(param1:int) : override
      {
         return §=!"§[param1];
      }
      
      public static function §<!K§(param1:String) : override
      {
         var _loc2_:override = null;
         for each(_loc2_ in §=!"§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §`G§() : int
      {
         return §=!"§.length;
      }
      
      public static function getLevelForId(param1:String) : §3A§
      {
         if(!§]!;§[param1])
         {
            if(§+!Q§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §]!;§[param1];
      }
      
      public static function §5?§(param1:String, param2:§3A§) : void
      {
         §]!;§[param1] = param2;
      }
      
      public static function §"!&§(param1:String, param2:int) : int
      {
         var level:§3A§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §[!L§.getLevelForId(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§9N§)
         {
            return 1;
         }
         if(score < level.§8!I§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §5a§(param1:String) : String
      {
         if(!§+!Q§[param1])
         {
            return §<!U§;
         }
         return param1;
      }
      
      public static function §"!Y§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:override = null;
         if(param1 != §^!X§)
         {
            _loc2_ = §!5§(param1);
            if(_loc2_ >= 0)
            {
               §6K§ = _loc2_;
               §0h§ = §^!X§;
               §^!X§ = param1;
               _loc3_ = §[8§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§1!U§(param1);
               }
            }
            else
            {
               §0h§ = §^!X§;
               §^!X§ = null;
            }
         }
      }
      
      public static function §1D§() : String
      {
         return §^!X§.substring(5);
      }
      
      public static function §[8§() : override
      {
         return §=!"§[§6K§];
      }
      
      public static function §5!3§() : Boolean
      {
         return true;
      }
      
      public static function §0!P§() : Boolean
      {
         var _loc1_:String = §6m§();
         var _loc2_:String = §[8§().§9Z§(§^!X§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §=B§.§,!B§(_loc2_);
         }
         return true;
      }
      
      public static function §6m§() : String
      {
         return §[8§().§6m§(§^!X§);
      }
   }
}
