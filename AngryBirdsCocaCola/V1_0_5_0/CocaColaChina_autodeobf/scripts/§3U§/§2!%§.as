package §3U§
{
   import §%!@§.§17§;
   
   public class §2!%§
   {
      
      public static const §+§:String = "1-1";
      
      protected static var §?!W§:Array = null;
      
      protected static var §2z§:Array = [];
      
      protected static var §+$§:Array = [];
      
      public static var §<G§:String = null;
      
      public static var §-d§:String = null;
      
      public static var §^5§:Boolean;
      
      public static var §[!=§:int = 0;
       
      
      public function §2!%§()
      {
         super();
      }
      
      public static function §`!D§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§^v§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §?!W§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §^v§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§5!X§ = _loc2_.leftCorner;
            _loc3_.§&-§ = _loc2_.rightCorner;
            _loc3_.§,#§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§7!#§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §?!W§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §+$§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §#G§() : void
      {
      }
      
      public static function §@l§(param1:String) : §^v§
      {
         var _loc2_:§^v§ = null;
         for each(_loc2_ in §?!W§)
         {
            if(_loc2_.§%!_§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §;!W§(param1:String) : int
      {
         var _loc3_:§^v§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §?!W§.length)
         {
            _loc3_ = §?!W§[_loc2_];
            if(_loc3_.§%!_§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §<3§(param1:int) : §^v§
      {
         return §?!W§[param1];
      }
      
      public static function §'q§() : int
      {
         return §?!W§.length;
      }
      
      public static function §&j§(param1:String) : § !M§
      {
         if(!§2z§[param1])
         {
            if(§+$§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §2z§[param1];
      }
      
      public static function §!![§(param1:String, param2:§ !M§) : void
      {
         §2z§[param1] = param2;
      }
      
      public static function §^V§(param1:String, param2:int) : int
      {
         var level:§ !M§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §2!%§.§&j§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§>!+§)
         {
            return 1;
         }
         if(score < level.§[p§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §4D§(param1:String) : String
      {
         if(!§+$§[param1])
         {
            return §+§;
         }
         return param1;
      }
      
      public static function §4y§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§^v§ = null;
         if(param1 != §<G§)
         {
            _loc2_ = §;!W§(param1);
            if(_loc2_ >= 0)
            {
               §[!=§ = _loc2_;
               §-d§ = §<G§;
               §<G§ = param1;
               _loc3_ = §-U§();
               if(_loc3_)
               {
                  _loc3_.§>!L§ = _loc3_.§[Q§(param1);
               }
            }
            else
            {
               §-d§ = §<G§;
               §<G§ = null;
            }
         }
      }
      
      public static function §"!_§() : String
      {
         return §<G§.substring(5);
      }
      
      public static function §-U§() : §^v§
      {
         return §?!W§[§[!=§];
      }
      
      public static function §+j§() : Boolean
      {
         return true;
      }
      
      public static function §[A§() : Boolean
      {
         var _loc1_:String = §>1§();
         var _loc2_:String = §-U§().§0K§(§<G§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §17§.§70§(_loc2_);
         }
         return true;
      }
      
      public static function §>1§() : String
      {
         return §-U§().§>1§(§<G§);
      }
   }
}
