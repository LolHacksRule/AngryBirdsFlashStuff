package §<i§
{
   import §`",§.§2M§;
   
   public class §`!r§
   {
      
      public static const §2!l§:String = "1-1";
      
      protected static var §3M§:Array = null;
      
      protected static var §?!§:Array = [];
      
      protected static var §'!J§:Array = [];
      
      public static var §0B§:String = null;
      
      public static var §;!8§:String = null;
      
      public static var §1&§:Boolean;
      
      public static var §^0§:int = 0;
       
      
      public function §`!r§()
      {
         super();
      }
      
      public static function §?D§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§3!l§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §3M§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §3!l§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§#! § = _loc2_.leftCorner;
            _loc3_.§ "'§ = _loc2_.rightCorner;
            _loc3_.§ "#§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§""?§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §3M§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §'!J§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §use§() : void
      {
      }
      
      public static function §6!8§(param1:String) : §3!l§
      {
         var _loc2_:§3!l§ = null;
         for each(_loc2_ in §3M§)
         {
            if(_loc2_.§,e§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §-q§(param1:String) : int
      {
         var _loc3_:§3!l§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §3M§.length)
         {
            _loc3_ = §3M§[_loc2_];
            if(_loc3_.§,e§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §]-§(param1:int) : §3!l§
      {
         return §3M§[param1];
      }
      
      public static function § !6§(param1:String) : §3!l§
      {
         var _loc2_:§3!l§ = null;
         for each(_loc2_ in §3M§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §1!o§() : int
      {
         return §3M§.length;
      }
      
      public static function getLevelForId(param1:String) : §'!e§
      {
         if(!§?!§[param1])
         {
            if(§'!J§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §?!§[param1];
      }
      
      public static function §%"9§(param1:String, param2:§'!e§) : void
      {
         §?!§[param1] = param2;
      }
      
      public static function §%!g§(param1:String, param2:int) : int
      {
         var level:§'!e§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §`!r§.getLevelForId(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.mScoreSilver)
         {
            return 1;
         }
         if(score < level.mScoreGold)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §0&§(param1:String) : String
      {
         if(!§'!J§[param1])
         {
            return §2!l§;
         }
         return param1;
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§3!l§ = null;
         if(param1 != §0B§)
         {
            _loc2_ = §-q§(param1);
            if(_loc2_ >= 0)
            {
               §^0§ = _loc2_;
               §;!8§ = §0B§;
               §0B§ = param1;
               _loc3_ = §%"8§();
               if(_loc3_)
               {
                  _loc3_.§?"8§ = _loc3_.§#"<§(param1);
               }
            }
            else
            {
               §;!8§ = §0B§;
               §0B§ = null;
            }
         }
      }
      
      public static function §#_§() : String
      {
         return §0B§.substring(5);
      }
      
      public static function §%"8§() : §3!l§
      {
         return §3M§[§^0§];
      }
      
      public static function §>-§() : Boolean
      {
         return true;
      }
      
      public static function §,!9§() : Boolean
      {
         var _loc1_:String = §8E§();
         var _loc2_:String = §%"8§().§#!F§(§0B§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §2M§.§]!e§(_loc2_);
         }
         return true;
      }
      
      public static function §8E§() : String
      {
         return §%"8§().§8E§(§0B§);
      }
   }
}
