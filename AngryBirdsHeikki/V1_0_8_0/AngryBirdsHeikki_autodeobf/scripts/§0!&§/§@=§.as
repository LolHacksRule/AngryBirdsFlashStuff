package §0!&§
{
   import §>[§.§ v§;
   
   public class §@=§
   {
      
      public static const §+]§:String = "1-1";
      
      protected static var §`,§:Array = null;
      
      protected static var §3!P§:Array = [];
      
      protected static var §7!=§:Array = [];
      
      public static var §!!S§:String = null;
      
      public static var §?q§:String = null;
      
      public static var §1!d§:Boolean;
      
      public static var §<v§:int = 0;
       
      
      public function §@=§()
      {
         super();
      }
      
      public static function §,%§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§&b§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §`,§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §&b§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§`+§ = _loc2_.leftCorner;
            _loc3_.§9!E§ = _loc2_.rightCorner;
            _loc3_.§;!F§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§]W§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §`,§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §7!=§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §<`§() : void
      {
      }
      
      public static function §=9§(param1:String) : §&b§
      {
         var _loc2_:§&b§ = null;
         for each(_loc2_ in §`,§)
         {
            if(_loc2_.§[!E§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §0!J§(param1:String) : int
      {
         var _loc3_:§&b§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §`,§.length)
         {
            _loc3_ = §`,§[_loc2_];
            if(_loc3_.§[!E§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §[8§(param1:int) : §&b§
      {
         return §`,§[param1];
      }
      
      public static function §1S§(param1:String) : §&b§
      {
         var _loc2_:§&b§ = null;
         for each(_loc2_ in §`,§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §4S§() : int
      {
         return §`,§.length;
      }
      
      public static function §'%§(param1:String) : §!'§
      {
         if(!§3!P§[param1])
         {
            if(§7!=§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §3!P§[param1];
      }
      
      public static function §0!`§(param1:String, param2:§!'§) : void
      {
         §3!P§[param1] = param2;
      }
      
      public static function §4!§(param1:String, param2:int) : int
      {
         var level:§!'§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §@=§.§'%§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§>!V§)
         {
            return 1;
         }
         if(score < level.§4!W§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §%^§(param1:String) : String
      {
         if(!§7!=§[param1])
         {
            return §+]§;
         }
         return param1;
      }
      
      public static function §-!Q§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§&b§ = null;
         if(param1 != §!!S§)
         {
            _loc2_ = §0!J§(param1);
            if(_loc2_ >= 0)
            {
               §<v§ = _loc2_;
               §?q§ = §!!S§;
               §!!S§ = param1;
               _loc3_ = §2>§();
               if(_loc3_)
               {
                  _loc3_.§9c§ = _loc3_.§&x§(param1);
               }
            }
            else
            {
               §?q§ = §!!S§;
               §!!S§ = null;
            }
         }
      }
      
      public static function § V§() : String
      {
         return §!!S§.substring(5);
      }
      
      public static function §2>§() : §&b§
      {
         return §`,§[§<v§];
      }
      
      public static function §&!O§() : Boolean
      {
         return true;
      }
      
      public static function §^![§() : Boolean
      {
         var _loc1_:String = §1+§();
         var _loc2_:String = §2>§().§1Q§(§!!S§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            § v§.§"!,§(_loc2_);
         }
         return true;
      }
      
      public static function §1+§() : String
      {
         return §2>§().§1+§(§!!S§);
      }
   }
}
