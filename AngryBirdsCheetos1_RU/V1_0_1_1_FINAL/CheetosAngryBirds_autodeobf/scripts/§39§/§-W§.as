package §39§
{
   import §'6§.§[W§;
   
   public class §-W§
   {
      
      public static const §!!F§:String = "1-1";
      
      protected static var §<8§:Array = null;
      
      protected static var §23§:Array = [];
      
      protected static var §'L§:Array = [];
      
      public static var §,[§:String = null;
      
      public static var §^6§:String = null;
      
      public static var §=f§:Boolean;
      
      public static var §15§:int = 0;
       
      
      public function §-W§()
      {
         super();
      }
      
      public static function §=8§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§6R§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §<8§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §6R§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§`J§ = _loc2_.leftCorner;
            _loc3_.§'f§ = _loc2_.rightCorner;
            _loc3_.§2a§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§7!G§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §<8§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §'L§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §;!>§() : void
      {
      }
      
      public static function §54§(param1:String) : §6R§
      {
         var _loc2_:§6R§ = null;
         for each(_loc2_ in §<8§)
         {
            if(_loc2_.§5c§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §^!1§(param1:String) : int
      {
         var _loc3_:§6R§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §<8§.length)
         {
            _loc3_ = §<8§[_loc2_];
            if(_loc3_.§5c§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §`L§(param1:int) : §6R§
      {
         return §<8§[param1];
      }
      
      public static function §8!X§(param1:String) : §6R§
      {
         var _loc2_:§6R§ = null;
         for each(_loc2_ in §<8§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §84§() : int
      {
         return §<8§.length;
      }
      
      public static function §2d§(param1:String) : §=R§
      {
         if(!§23§[param1])
         {
            if(§'L§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §23§[param1];
      }
      
      public static function §#^§(param1:String, param2:§=R§) : void
      {
         §23§[param1] = param2;
      }
      
      public static function §#V§(param1:String, param2:int) : int
      {
         var level:§=R§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §-W§.§2d§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§5+§)
         {
            return 1;
         }
         if(score < level.§2m§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §;!I§(param1:String) : String
      {
         if(!§'L§[param1])
         {
            return §!!F§;
         }
         return param1;
      }
      
      public static function §#N§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§6R§ = null;
         if(param1 != §,[§)
         {
            _loc2_ = §^!1§(param1);
            if(_loc2_ >= 0)
            {
               §15§ = _loc2_;
               §^6§ = §,[§;
               §,[§ = param1;
               _loc3_ = §7U§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§&!%§(param1);
               }
            }
            else
            {
               §^6§ = §,[§;
               §,[§ = null;
            }
         }
      }
      
      public static function §^!K§() : String
      {
         return §,[§.substring(5);
      }
      
      public static function §7U§() : §6R§
      {
         return §<8§[§15§];
      }
      
      public static function §4!F§() : Boolean
      {
         return true;
      }
      
      public static function §#3§() : Boolean
      {
         var _loc1_:String = §[?§();
         var _loc2_:String = §7U§().§"!H§(§,[§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §[W§.§;v§(_loc2_);
         }
         return true;
      }
      
      public static function §[?§() : String
      {
         return §7U§().§[?§(§,[§);
      }
   }
}
