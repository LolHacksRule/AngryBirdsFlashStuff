package §%!^§
{
   import §9!3§.§7!"§;
   
   public class §"=§
   {
      
      public static const §[o§:String = "1-1";
      
      protected static var §]!H§:Array = null;
      
      protected static var §,Y§:Array = [];
      
      protected static var §?!G§:Array = [];
      
      public static var §?x§:String = null;
      
      public static var §4+§:String = null;
      
      public static var §]m§:Boolean;
      
      public static var §<q§:int = 0;
       
      
      public function §"=§()
      {
         super();
      }
      
      public static function §?-§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§#!@§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §]!H§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §#!@§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§>!_§ = _loc2_.leftCorner;
            _loc3_.§!-§ = _loc2_.rightCorner;
            _loc3_.§%g§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§@g§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §]!H§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §?!G§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §-!L§() : void
      {
      }
      
      public static function §#E§(param1:String) : §#!@§
      {
         var _loc2_:§#!@§ = null;
         for each(_loc2_ in §]!H§)
         {
            if(_loc2_.§%-§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<!_§(param1:String) : int
      {
         var _loc3_:§#!@§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §]!H§.length)
         {
            _loc3_ = §]!H§[_loc2_];
            if(_loc3_.§%-§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §1x§(param1:int) : §#!@§
      {
         return §]!H§[param1];
      }
      
      public static function §5!N§(param1:String) : §#!@§
      {
         var _loc2_:§#!@§ = null;
         for each(_loc2_ in §]!H§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5K§() : int
      {
         return §]!H§.length;
      }
      
      public static function §'a§(param1:String) : §"!7§
      {
         if(!§,Y§[param1])
         {
            if(§?!G§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §,Y§[param1];
      }
      
      public static function §,z§(param1:String, param2:§"!7§) : void
      {
         §,Y§[param1] = param2;
      }
      
      public static function §]K§(param1:String, param2:int) : int
      {
         var level:§"!7§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §"=§.§'a§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§!N§)
         {
            return 1;
         }
         if(score < level.§?!<§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §&N§(param1:String) : String
      {
         if(!§?!G§[param1])
         {
            return §[o§;
         }
         return param1;
      }
      
      public static function § H§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§#!@§ = null;
         if(param1 != §?x§)
         {
            _loc2_ = §<!_§(param1);
            if(_loc2_ >= 0)
            {
               §<q§ = _loc2_;
               §4+§ = §?x§;
               §?x§ = param1;
               _loc3_ = §<4§();
               if(_loc3_)
               {
                  _loc3_.§ &§ = _loc3_.§5O§(param1);
               }
            }
            else
            {
               §4+§ = §?x§;
               §?x§ = null;
            }
         }
      }
      
      public static function §&b§() : String
      {
         return §?x§.substring(5);
      }
      
      public static function §<4§() : §#!@§
      {
         return §]!H§[§<q§];
      }
      
      public static function §=B§() : Boolean
      {
         return true;
      }
      
      public static function §4T§() : Boolean
      {
         var _loc1_:String = §9D§();
         var _loc2_:String = §<4§().§4&§(§?x§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §7!"§.§=C§(_loc2_);
         }
         return true;
      }
      
      public static function §9D§() : String
      {
         return §<4§().§9D§(§?x§);
      }
   }
}
