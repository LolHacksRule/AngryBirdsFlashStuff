package §=X§
{
   import §>!J§.§?0§;
   
   public class §7!4§
   {
      
      public static const §]?§:String = "1-1";
      
      protected static var §5J§:Array = null;
      
      protected static var §4T§:Array = [];
      
      protected static var §+!0§:Array = [];
      
      public static var §"P§:String = null;
      
      public static var §6<§:String = null;
      
      public static var §>=§:Boolean;
      
      public static var §#P§:int = 0;
       
      
      public function §7!4§()
      {
         super();
      }
      
      public static function §8k§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§?2§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §5J§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §?2§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§7a§ = _loc2_.leftCorner;
            _loc3_.§;!J§ = _loc2_.rightCorner;
            _loc3_.§1!!§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§1!N§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §5J§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §+!0§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §-4§() : void
      {
      }
      
      public static function §;!9§(param1:String) : §?2§
      {
         var _loc2_:§?2§ = null;
         for each(_loc2_ in §5J§)
         {
            if(_loc2_.§'!'§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §2!U§(param1:String) : int
      {
         var _loc3_:§?2§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §5J§.length)
         {
            _loc3_ = §5J§[_loc2_];
            if(_loc3_.§'!'§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §;!@§(param1:int) : §?2§
      {
         return §5J§[param1];
      }
      
      public static function §1!A§(param1:String) : §?2§
      {
         var _loc2_:§?2§ = null;
         for each(_loc2_ in §5J§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §6H§() : int
      {
         return §5J§.length;
      }
      
      public static function §,&§(param1:String) : §"!6§
      {
         if(!§4T§[param1])
         {
            if(§+!0§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §4T§[param1];
      }
      
      public static function §!,§(param1:String, param2:§"!6§) : void
      {
         §4T§[param1] = param2;
      }
      
      public static function §'P§(param1:String, param2:int) : int
      {
         var level:§"!6§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §7!4§.§,&§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§ `§)
         {
            return 1;
         }
         if(score < level.§?9§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §!!"§(param1:String) : String
      {
         if(!§+!0§[param1])
         {
            return §]?§;
         }
         return param1;
      }
      
      public static function §^!>§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§?2§ = null;
         if(param1 != §"P§)
         {
            _loc2_ = §2!U§(param1);
            if(_loc2_ >= 0)
            {
               §#P§ = _loc2_;
               §6<§ = §"P§;
               §"P§ = param1;
               _loc3_ = §%9§();
               if(_loc3_)
               {
                  _loc3_.§`N§ = _loc3_.§&!9§(param1);
               }
            }
            else
            {
               §6<§ = §"P§;
               §"P§ = null;
            }
         }
      }
      
      public static function §7z§() : String
      {
         return §"P§.substring(5);
      }
      
      public static function §%9§() : §?2§
      {
         return §5J§[§#P§];
      }
      
      public static function §@!L§() : Boolean
      {
         return true;
      }
      
      public static function §>w§() : Boolean
      {
         var _loc1_:String = §2!K§();
         var _loc2_:String = §%9§().§@!<§(§"P§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §?0§.§[s§(_loc2_);
         }
         return true;
      }
      
      public static function §2!K§() : String
      {
         return §%9§().§2!K§(§"P§);
      }
   }
}
