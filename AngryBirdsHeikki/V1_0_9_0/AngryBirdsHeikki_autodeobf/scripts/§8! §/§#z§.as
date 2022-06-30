package §8! §
{
   import §>X§.§ !C§;
   
   public class §#z§
   {
      
      public static const §?m§:String = "1-1";
      
      protected static var §&!M§:Array = null;
      
      protected static var §-!a§:Array = [];
      
      protected static var §%S§:Array = [];
      
      public static var §@k§:String = null;
      
      public static var §-y§:String = null;
      
      public static var §%!?§:Boolean;
      
      public static var §,?§:int = 0;
       
      
      public function §#z§()
      {
         super();
      }
      
      public static function §"l§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§'j§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §&!M§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §'j§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§1!b§ = _loc2_.leftCorner;
            _loc3_.§<^§ = _loc2_.rightCorner;
            _loc3_.§?!K§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§-l§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §&!M§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §%S§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §3A§() : void
      {
      }
      
      public static function §"!I§(param1:String) : §'j§
      {
         var _loc2_:§'j§ = null;
         for each(_loc2_ in §&!M§)
         {
            if(_loc2_.§case §(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § P§(param1:String) : int
      {
         var _loc3_:§'j§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §&!M§.length)
         {
            _loc3_ = §&!M§[_loc2_];
            if(_loc3_.§case §(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §@! §(param1:int) : §'j§
      {
         return §&!M§[param1];
      }
      
      public static function §0X§(param1:String) : §'j§
      {
         var _loc2_:§'j§ = null;
         for each(_loc2_ in §&!M§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §`&§() : int
      {
         return §&!M§.length;
      }
      
      public static function §2!>§(param1:String) : §1_§
      {
         if(!§-!a§[param1])
         {
            if(§%S§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §-!a§[param1];
      }
      
      public static function §,S§(param1:String, param2:§1_§) : void
      {
         §-!a§[param1] = param2;
      }
      
      public static function § !§(param1:String, param2:int) : int
      {
         var level:§1_§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §#z§.§2!>§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§]!@§)
         {
            return 1;
         }
         if(score < level.§?!4§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §8F§(param1:String) : String
      {
         if(!§%S§[param1])
         {
            return §?m§;
         }
         return param1;
      }
      
      public static function §[6§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§'j§ = null;
         if(param1 != §@k§)
         {
            _loc2_ = § P§(param1);
            if(_loc2_ >= 0)
            {
               §,?§ = _loc2_;
               §-y§ = §@k§;
               §@k§ = param1;
               _loc3_ = § !e§();
               if(_loc3_)
               {
                  _loc3_.§1M§ = _loc3_.§%-§(param1);
               }
            }
            else
            {
               §-y§ = §@k§;
               §@k§ = null;
            }
         }
      }
      
      public static function §5!B§() : String
      {
         return §@k§.substring(5);
      }
      
      public static function § !e§() : §'j§
      {
         return §&!M§[§,?§];
      }
      
      public static function §6!b§() : Boolean
      {
         return true;
      }
      
      public static function §@7§() : Boolean
      {
         var _loc1_:String = §5!@§();
         var _loc2_:String = § !e§().§2N§(§@k§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            § !C§.§8!P§(_loc2_);
         }
         return true;
      }
      
      public static function §5!@§() : String
      {
         return § !e§().§5!@§(§@k§);
      }
   }
}
