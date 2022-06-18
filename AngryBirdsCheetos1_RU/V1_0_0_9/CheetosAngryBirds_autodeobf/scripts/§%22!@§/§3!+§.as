package §"!@§
{
   import §+i§.§5N§;
   
   public class §3!+§
   {
      
      public static const §[Z§:String = "1-1";
      
      protected static var §8!2§:Array = null;
      
      protected static var §5!^§:Array = [];
      
      protected static var § get§:Array = [];
      
      public static var §%2§:String = null;
      
      public static var §&F§:String = null;
      
      public static var §,!^§:Boolean;
      
      public static var §3c§:int = 0;
       
      
      public function §3!+§()
      {
         super();
      }
      
      public static function §7D§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§8W§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §8!2§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §8W§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§-6§ = _loc2_.leftCorner;
            _loc3_.§1!!§ = _loc2_.rightCorner;
            _loc3_.§0=§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§<L§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §8!2§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  § get§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §,5§() : void
      {
      }
      
      public static function § -§(param1:String) : §8W§
      {
         var _loc2_:§8W§ = null;
         for each(_loc2_ in §8!2§)
         {
            if(_loc2_.§,! §(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §]!K§(param1:String) : int
      {
         var _loc3_:§8W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §8!2§.length)
         {
            _loc3_ = §8!2§[_loc2_];
            if(_loc3_.§,! §(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function § r§(param1:int) : §8W§
      {
         return §8!2§[param1];
      }
      
      public static function §'!Z§(param1:String) : §8W§
      {
         var _loc2_:§8W§ = null;
         for each(_loc2_ in §8!2§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §+A§() : int
      {
         return §8!2§.length;
      }
      
      public static function getLevelForId(param1:String) : §&;§
      {
         if(!§5!^§[param1])
         {
            if(§ get§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §5!^§[param1];
      }
      
      public static function §7!F§(param1:String, param2:§&;§) : void
      {
         §5!^§[param1] = param2;
      }
      
      public static function §0f§(param1:String, param2:int) : int
      {
         var level:§&;§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §3!+§.getLevelForId(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§,H§)
         {
            return 1;
         }
         if(score < level.§07§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function § !W§(param1:String) : String
      {
         if(!§ get§[param1])
         {
            return §[Z§;
         }
         return param1;
      }
      
      public static function §'!D§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§8W§ = null;
         if(param1 != §%2§)
         {
            _loc2_ = §]!K§(param1);
            if(_loc2_ >= 0)
            {
               §3c§ = _loc2_;
               §&F§ = §%2§;
               §%2§ = param1;
               _loc3_ = §#M§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§;y§(param1);
               }
            }
            else
            {
               §&F§ = §%2§;
               §%2§ = null;
            }
         }
      }
      
      public static function §-!§() : String
      {
         return §%2§.substring(5);
      }
      
      public static function §#M§() : §8W§
      {
         return §8!2§[§3c§];
      }
      
      public static function §2!T§() : Boolean
      {
         return true;
      }
      
      public static function §-4§() : Boolean
      {
         var _loc1_:String = §'^§();
         var _loc2_:String = §#M§().§6!U§(§%2§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §5N§.§5e§(_loc2_);
         }
         return true;
      }
      
      public static function §'^§() : String
      {
         return §#M§().§'^§(§%2§);
      }
   }
}
