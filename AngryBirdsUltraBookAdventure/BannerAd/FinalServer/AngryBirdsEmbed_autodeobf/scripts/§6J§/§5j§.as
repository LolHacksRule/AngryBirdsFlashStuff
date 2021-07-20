package §6J§
{
   import §8!>§.§`!D§;
   
   public class §5j§
   {
      
      public static const §9t§:String = "1-1";
      
      protected static var § _§:Array = null;
      
      protected static var §%%§:Array = [];
      
      protected static var §?!F§:Array = [];
      
      public static var §%V§:String = null;
      
      public static var §>N§:String = null;
      
      public static var §%J§:Boolean;
      
      public static var §0P§:int = 0;
       
      
      public function §5j§()
      {
         super();
      }
      
      public static function §;I§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§?S§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         § _§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §?S§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§7<§ = _loc2_.leftCorner;
            _loc3_.§8S§ = _loc2_.rightCorner;
            _loc3_.§var § = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§8!D§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            § _§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §?!F§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §6-§() : void
      {
      }
      
      public static function §^!>§(param1:String) : §?S§
      {
         var _loc2_:§?S§ = null;
         for each(_loc2_ in § _§)
         {
            if(_loc2_.§2!+§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §,!>§(param1:String) : int
      {
         var _loc3_:§?S§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < § _§.length)
         {
            _loc3_ = § _§[_loc2_];
            if(_loc3_.§2!+§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §^!E§(param1:int) : §?S§
      {
         return § _§[param1];
      }
      
      public static function §9'§(param1:String) : §?S§
      {
         var _loc2_:§?S§ = null;
         for each(_loc2_ in § _§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §,5§() : int
      {
         return § _§.length;
      }
      
      public static function §%!I§(param1:String) : §&!;§
      {
         if(!§%%§[param1])
         {
            if(§?!F§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §%%§[param1];
      }
      
      public static function §,!5§(param1:String, param2:§&!;§) : void
      {
         §%%§[param1] = param2;
      }
      
      public static function §"n§(param1:String, param2:int) : int
      {
         var level:§&!;§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §5j§.§%!I§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§=N§)
         {
            return 1;
         }
         if(score < level.§'T§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §8[§(param1:String) : String
      {
         if(!§?!F§[param1])
         {
            return §9t§;
         }
         return param1;
      }
      
      public static function §#8§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§?S§ = null;
         if(param1 != §%V§)
         {
            _loc2_ = §,!>§(param1);
            if(_loc2_ >= 0)
            {
               §0P§ = _loc2_;
               §>N§ = §%V§;
               §%V§ = param1;
               _loc3_ = §'!#§();
               if(_loc3_)
               {
                  _loc3_.§7E§ = _loc3_.§'+§(param1);
               }
            }
            else
            {
               §>N§ = §%V§;
               §%V§ = null;
            }
         }
      }
      
      public static function §&!&§() : String
      {
         return §%V§.substring(5);
      }
      
      public static function §'!#§() : §?S§
      {
         return § _§[§0P§];
      }
      
      public static function §4c§() : Boolean
      {
         return true;
      }
      
      public static function §!d§() : Boolean
      {
         var _loc1_:String = §&1§();
         var _loc2_:String = §'!#§().§0!9§(§%V§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §`!D§.§6u§(_loc2_);
         }
         return true;
      }
      
      public static function §&1§() : String
      {
         return §'!#§().§&1§(§%V§);
      }
   }
}
