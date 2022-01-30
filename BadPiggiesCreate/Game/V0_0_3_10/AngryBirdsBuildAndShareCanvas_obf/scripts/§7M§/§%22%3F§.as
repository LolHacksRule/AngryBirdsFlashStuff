package §7M§
{
   import §9A§.§30§;
   
   public class §"?§
   {
      
      public static const §]!g§:String = "1-1";
      
      protected static var §8!2§:Array = null;
      
      protected static var §<s§:Array = [];
      
      protected static var §[<§:Array = [];
      
      public static var §4M§:String = null;
      
      public static var §5O§:String = null;
      
      public static var §"!6§:Boolean;
      
      public static var §]"0§:int = 0;
       
      
      public function §"?§()
      {
         super();
      }
      
      public static function §;L§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§ !e§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §8!2§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new § !e§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§<"8§ = _loc2_.leftCorner;
            _loc3_.§5"-§ = _loc2_.rightCorner;
            _loc3_.§ Z§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§do§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §8!2§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §[<§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §<!i§() : void
      {
      }
      
      public static function § do§(param1:String) : § !e§
      {
         var _loc2_:§ !e§ = null;
         for each(_loc2_ in §8!2§)
         {
            if(_loc2_.§7%§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §&R§(param1:String) : int
      {
         var _loc3_:§ !e§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §8!2§.length)
         {
            _loc3_ = §8!2§[_loc2_];
            if(_loc3_.§7%§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §3!X§(param1:int) : § !e§
      {
         return §8!2§[param1];
      }
      
      public static function §6"2§(param1:String) : § !e§
      {
         var _loc2_:§ !e§ = null;
         for each(_loc2_ in §8!2§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §6!G§() : int
      {
         return §8!2§.length;
      }
      
      public static function §+!M§(param1:String) : §+R§
      {
         if(!§<s§[param1])
         {
            if(§[<§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §<s§[param1];
      }
      
      public static function §+!G§(param1:String, param2:§+R§) : void
      {
         §<s§[param1] = param2;
      }
      
      public static function §!8§(param1:String, param2:int) : int
      {
         var level:§+R§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §"?§.§+!M§(levelId);
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
      
      public static function §4?§(param1:String) : String
      {
         if(!§[<§[param1])
         {
            return §]!g§;
         }
         return param1;
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§ !e§ = null;
         if(param1 != §4M§)
         {
            _loc2_ = §&R§(param1);
            if(_loc2_ >= 0)
            {
               §]"0§ = _loc2_;
               §5O§ = §4M§;
               §4M§ = param1;
               _loc3_ = §-!"§();
               if(_loc3_)
               {
                  _loc3_.§@w§ = _loc3_.§+K§(param1);
               }
            }
            else
            {
               §5O§ = §4M§;
               §4M§ = null;
            }
         }
      }
      
      public static function §#!f§() : String
      {
         return §4M§.substring(5);
      }
      
      public static function §-!"§() : § !e§
      {
         return §8!2§[§]"0§];
      }
      
      public static function §=7§() : Boolean
      {
         return true;
      }
      
      public static function §0k§() : Boolean
      {
         var _loc1_:String = §7!=§();
         var _loc2_:String = §-!"§().§;U§(§4M§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §30§.§^]§(_loc2_);
         }
         return true;
      }
      
      public static function §7!=§() : String
      {
         return §-!"§().§7!=§(§4M§);
      }
   }
}
