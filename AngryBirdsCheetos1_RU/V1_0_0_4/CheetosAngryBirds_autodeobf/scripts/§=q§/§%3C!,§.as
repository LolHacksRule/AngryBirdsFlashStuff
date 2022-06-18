package §=q§
{
   import §8!P§.§]4§;
   
   public class §<!,§
   {
      
      public static const §=c§:String = "1-1";
      
      protected static var §8!1§:Array = null;
      
      protected static var §^C§:Array = [];
      
      protected static var §%!H§:Array = [];
      
      public static var §1D§:String = null;
      
      public static var §&_§:String = null;
      
      public static var § use§:Boolean;
      
      public static var §7Z§:int = 0;
       
      
      public function §<!,§()
      {
         super();
      }
      
      public static function §>0§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§2!8§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §8!1§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §2!8§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§5f§ = _loc2_.leftCorner;
            _loc3_.§@!6§ = _loc2_.rightCorner;
            _loc3_.§0^§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§49§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §8!1§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §%!H§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §-"§() : void
      {
      }
      
      public static function §&S§(param1:String) : §2!8§
      {
         var _loc2_:§2!8§ = null;
         for each(_loc2_ in §8!1§)
         {
            if(_loc2_.§3!-§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §[S§(param1:String) : int
      {
         var _loc3_:§2!8§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §8!1§.length)
         {
            _loc3_ = §8!1§[_loc2_];
            if(_loc3_.§3!-§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §9!C§(param1:int) : §2!8§
      {
         return §8!1§[param1];
      }
      
      public static function §#z§(param1:String) : §2!8§
      {
         var _loc2_:§2!8§ = null;
         for each(_loc2_ in §8!1§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §'f§() : int
      {
         return §8!1§.length;
      }
      
      public static function getLevelForId(param1:String) : §?X§
      {
         if(!§^C§[param1])
         {
            if(§%!H§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §^C§[param1];
      }
      
      public static function §>!1§(param1:String, param2:§?X§) : void
      {
         §^C§[param1] = param2;
      }
      
      public static function §<[§(param1:String, param2:int) : int
      {
         var level:§?X§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §<!,§.getLevelForId(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§2B§)
         {
            return 1;
         }
         if(score < level.§&j§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §9![§(param1:String) : String
      {
         if(!§%!H§[param1])
         {
            return §=c§;
         }
         return param1;
      }
      
      public static function §4b§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§2!8§ = null;
         if(param1 != §1D§)
         {
            _loc2_ = §[S§(param1);
            if(_loc2_ >= 0)
            {
               §7Z§ = _loc2_;
               §&_§ = §1D§;
               §1D§ = param1;
               _loc3_ = §7I§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§7f§(param1);
               }
            }
            else
            {
               §&_§ = §1D§;
               §1D§ = null;
            }
         }
      }
      
      public static function §1Y§() : String
      {
         return §1D§.substring(5);
      }
      
      public static function §7I§() : §2!8§
      {
         return §8!1§[§7Z§];
      }
      
      public static function §2!G§() : Boolean
      {
         return true;
      }
      
      public static function §>Z§() : Boolean
      {
         var _loc1_:String = §8`§();
         var _loc2_:String = §7I§().§2=§(§1D§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §]4§.§4x§(_loc2_);
         }
         return true;
      }
      
      public static function §8`§() : String
      {
         return §7I§().§8`§(§1D§);
      }
   }
}
