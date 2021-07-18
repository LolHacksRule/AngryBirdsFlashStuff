package §3"§
{
   import §0R§.§ for§;
   
   public class §0$§
   {
      
      public static const §!!C§:String = "1-1";
      
      protected static var § !'§:Array = null;
      
      protected static var §0!"§:Array = [];
      
      protected static var §[S§:Array = [];
      
      public static var §[C§:String = null;
      
      public static var §>Q§:String = null;
      
      public static var §+!1§:Boolean;
      
      public static var §=l§:int = 0;
       
      
      public function §0$§()
      {
         super();
      }
      
      public static function §#;§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§&9§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         § !'§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §&9§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§-a§ = _loc2_.leftCorner;
            _loc3_.§ v§ = _loc2_.rightCorner;
            _loc3_.§,!'§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§0!'§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            § !'§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §[S§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §>#§() : void
      {
      }
      
      public static function §,o§(param1:String) : §&9§
      {
         var _loc2_:§&9§ = null;
         for each(_loc2_ in § !'§)
         {
            if(_loc2_.§&;§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §%A§(param1:String) : int
      {
         var _loc3_:§&9§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < § !'§.length)
         {
            _loc3_ = § !'§[_loc2_];
            if(_loc3_.§&;§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §]>§(param1:int) : §&9§
      {
         return § !'§[param1];
      }
      
      public static function § l§() : int
      {
         return § !'§.length;
      }
      
      public static function §2Q§(param1:String) : §8+§
      {
         if(!§0!"§[param1])
         {
            if(§[S§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §0!"§[param1];
      }
      
      public static function §-,§(param1:String, param2:§8+§) : void
      {
         §0!"§[param1] = param2;
      }
      
      public static function §5Y§(param1:String, param2:int) : int
      {
         var level:§8+§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §0$§.§2Q§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§#o§)
         {
            return 1;
         }
         if(score < level.§1U§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §5D§(param1:String) : String
      {
         if(!§[S§[param1])
         {
            return §!!C§;
         }
         return param1;
      }
      
      public static function §;4§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§&9§ = null;
         if(param1 != §[C§)
         {
            _loc2_ = §%A§(param1);
            if(_loc2_ >= 0)
            {
               §=l§ = _loc2_;
               §>Q§ = §[C§;
               §[C§ = param1;
               _loc3_ = § H§();
               if(_loc3_)
               {
                  _loc3_.§^A§ = _loc3_.§%X§(param1);
               }
            }
            else
            {
               §>Q§ = §[C§;
               §[C§ = null;
            }
         }
      }
      
      public static function §]3§() : String
      {
         return §[C§.substring(5);
      }
      
      public static function § H§() : §&9§
      {
         return § !'§[§=l§];
      }
      
      public static function §1g§() : Boolean
      {
         return true;
      }
      
      public static function §;e§() : Boolean
      {
         var _loc1_:String = §?W§();
         var _loc2_:String = § H§().§1!2§(§[C§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            § for§.§@!1§(_loc2_);
         }
         return true;
      }
      
      public static function §?W§() : String
      {
         return § H§().§?W§(§[C§);
      }
   }
}
