package §6!L§
{
   import §1a§.§"v§;
   
   public class §&u§
   {
      
      public static const §4h§:String = "1-1";
      
      protected static var §&P§:Array = null;
      
      protected static var §>Y§:Array = [];
      
      protected static var §"!%§:Array = [];
      
      public static var § !+§:String = null;
      
      public static var §'<§:String = null;
      
      public static var §6!E§:Boolean;
      
      public static var §@!#§:int = 0;
       
      
      public function §&u§()
      {
         super();
      }
      
      public static function §%7§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§7n§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §&P§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §7n§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§?!"§ = _loc2_.leftCorner;
            _loc3_.§?]§ = _loc2_.rightCorner;
            _loc3_.§2+§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§]B§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §&P§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §"!%§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §"^§() : void
      {
      }
      
      public static function §8!!§(param1:String) : §7n§
      {
         var _loc2_:§7n§ = null;
         for each(_loc2_ in §&P§)
         {
            if(_loc2_.§@O§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §`!&§(param1:String) : int
      {
         var _loc3_:§7n§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §&P§.length)
         {
            _loc3_ = §&P§[_loc2_];
            if(_loc3_.§@O§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §"!0§(param1:int) : §7n§
      {
         return §&P§[param1];
      }
      
      public static function §<_§(param1:String) : §7n§
      {
         var _loc2_:§7n§ = null;
         for each(_loc2_ in §&P§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §=^§() : int
      {
         return §&P§.length;
      }
      
      public static function §`!0§(param1:String) : §#!M§
      {
         if(!§>Y§[param1])
         {
            if(§"!%§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §>Y§[param1];
      }
      
      public static function §5j§(param1:String, param2:§#!M§) : void
      {
         §>Y§[param1] = param2;
      }
      
      public static function §"h§(param1:String, param2:int) : int
      {
         var level:§#!M§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §&u§.§`!0§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§!p§)
         {
            return 1;
         }
         if(score < level.§#6§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §"V§(param1:String) : String
      {
         if(!§"!%§[param1])
         {
            return §4h§;
         }
         return param1;
      }
      
      public static function §8v§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§7n§ = null;
         if(param1 != § !+§)
         {
            _loc2_ = §`!&§(param1);
            if(_loc2_ >= 0)
            {
               §@!#§ = _loc2_;
               §'<§ = § !+§;
               § !+§ = param1;
               _loc3_ = §3c§();
               if(_loc3_)
               {
                  _loc3_.§&<§ = _loc3_.§@9§(param1);
               }
            }
            else
            {
               §'<§ = § !+§;
               § !+§ = null;
            }
         }
      }
      
      public static function §'!7§() : String
      {
         return § !+§.substring(5);
      }
      
      public static function §3c§() : §7n§
      {
         return §&P§[§@!#§];
      }
      
      public static function §8!#§() : Boolean
      {
         return true;
      }
      
      public static function §0!@§() : Boolean
      {
         var _loc1_:String = §7E§();
         var _loc2_:String = §3c§().§&!4§(§ !+§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §"v§.§=G§(_loc2_);
         }
         return true;
      }
      
      public static function §7E§() : String
      {
         return §3c§().§7E§(§ !+§);
      }
   }
}
