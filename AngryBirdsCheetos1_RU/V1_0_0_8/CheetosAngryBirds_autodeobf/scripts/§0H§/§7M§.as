package §0H§
{
   import §'r§.§?n§;
   
   public class §7M§
   {
      
      public static const §+!E§:String = "1-1";
      
      protected static var §[%§:Array = null;
      
      protected static var §#!H§:Array = [];
      
      protected static var § for§:Array = [];
      
      public static var §9-§:String = null;
      
      public static var §4p§:String = null;
      
      public static var §continue§:Boolean;
      
      public static var §-@§:int = 0;
       
      
      public function §7M§()
      {
         super();
      }
      
      public static function §%!F§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§1l§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §[%§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §1l§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§9!'§ = _loc2_.leftCorner;
            _loc3_.§36§ = _loc2_.rightCorner;
            _loc3_.§'6§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§[!W§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §[%§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  § for§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §+!6§() : void
      {
      }
      
      public static function §`N§(param1:String) : §1l§
      {
         var _loc2_:§1l§ = null;
         for each(_loc2_ in §[%§)
         {
            if(_loc2_.§1!W§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §>!7§(param1:String) : int
      {
         var _loc3_:§1l§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §[%§.length)
         {
            _loc3_ = §[%§[_loc2_];
            if(_loc3_.§1!W§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §8!Q§(param1:int) : §1l§
      {
         return §[%§[param1];
      }
      
      public static function §!!_§(param1:String) : §1l§
      {
         var _loc2_:§1l§ = null;
         for each(_loc2_ in §[%§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<h§() : int
      {
         return §[%§.length;
      }
      
      public static function getLevelForId(param1:String) : §0!&§
      {
         if(!§#!H§[param1])
         {
            if(§ for§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §#!H§[param1];
      }
      
      public static function §`!Y§(param1:String, param2:§0!&§) : void
      {
         §#!H§[param1] = param2;
      }
      
      public static function §=2§(param1:String, param2:int) : int
      {
         var level:§0!&§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §7M§.getLevelForId(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§ !W§)
         {
            return 1;
         }
         if(score < level.§ !L§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §5q§(param1:String) : String
      {
         if(!§ for§[param1])
         {
            return §+!E§;
         }
         return param1;
      }
      
      public static function §"1§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§1l§ = null;
         if(param1 != §9-§)
         {
            _loc2_ = §>!7§(param1);
            if(_loc2_ >= 0)
            {
               §-@§ = _loc2_;
               §4p§ = §9-§;
               §9-§ = param1;
               _loc3_ = §>! §();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§^!G§(param1);
               }
            }
            else
            {
               §4p§ = §9-§;
               §9-§ = null;
            }
         }
      }
      
      public static function §<A§() : String
      {
         return §9-§.substring(5);
      }
      
      public static function §>! §() : §1l§
      {
         return §[%§[§-@§];
      }
      
      public static function §4!N§() : Boolean
      {
         return true;
      }
      
      public static function §4V§() : Boolean
      {
         var _loc1_:String = §]b§();
         var _loc2_:String = §>! §().§`M§(§9-§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §?n§.§%!9§(_loc2_);
         }
         return true;
      }
      
      public static function §]b§() : String
      {
         return §>! §().§]b§(§9-§);
      }
   }
}
