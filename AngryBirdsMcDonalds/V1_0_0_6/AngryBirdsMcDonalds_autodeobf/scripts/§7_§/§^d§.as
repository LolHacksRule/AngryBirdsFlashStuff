package §7_§
{
   import § d§.§7!&§;
   
   public class §^d§
   {
      
      public static const §&!I§:String = "1-1";
      
      protected static var §`u§:Array = null;
      
      protected static var §4H§:Array = [];
      
      protected static var § f§:Array = [];
      
      public static var §@P§:String = null;
      
      public static var §6§:String = null;
      
      public static var §`>§:Boolean;
      
      public static var §'!<§:int = 0;
       
      
      public function §^d§()
      {
         super();
      }
      
      public static function §76§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§3!Q§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §`u§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §3!Q§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§=D§ = _loc2_.leftCorner;
            _loc3_.§5!X§ = _loc2_.rightCorner;
            _loc3_.§4!`§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§2!]§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §`u§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  § f§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §&!X§() : void
      {
      }
      
      public static function §-G§(param1:String) : §3!Q§
      {
         var _loc2_:§3!Q§ = null;
         for each(_loc2_ in §`u§)
         {
            if(_loc2_.§?e§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<!6§(param1:String) : int
      {
         var _loc3_:§3!Q§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §`u§.length)
         {
            _loc3_ = §`u§[_loc2_];
            if(_loc3_.§?e§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §"a§(param1:int) : §3!Q§
      {
         return §`u§[param1];
      }
      
      public static function §`-§(param1:String) : §3!Q§
      {
         var _loc2_:§3!Q§ = null;
         for each(_loc2_ in §`u§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §,!o§() : int
      {
         return §`u§.length;
      }
      
      public static function §'!J§(param1:String) : §]![§
      {
         if(!§4H§[param1])
         {
            if(§ f§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §4H§[param1];
      }
      
      public static function §-x§(param1:String, param2:§]![§) : void
      {
         §4H§[param1] = param2;
      }
      
      public static function §@!f§(param1:String, param2:int) : int
      {
         var level:§]![§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §^d§.§'!J§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§>!Y§)
         {
            return 1;
         }
         if(score < level.§&!W§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §?;§(param1:String) : String
      {
         if(!§ f§[param1])
         {
            return §&!I§;
         }
         return param1;
      }
      
      public static function §^N§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§3!Q§ = null;
         if(param1 != §@P§)
         {
            _loc2_ = §<!6§(param1);
            if(_loc2_ >= 0)
            {
               §'!<§ = _loc2_;
               §6§ = §@P§;
               §@P§ = param1;
               _loc3_ = §@3§();
               if(_loc3_)
               {
                  _loc3_.§7V§ = _loc3_.§+!b§(param1);
               }
            }
            else
            {
               §6§ = §@P§;
               §@P§ = null;
            }
         }
      }
      
      public static function §@X§() : String
      {
         return §@P§.substring(5);
      }
      
      public static function §@3§() : §3!Q§
      {
         return §`u§[§'!<§];
      }
      
      public static function §9!L§() : Boolean
      {
         return true;
      }
      
      public static function §5o§() : Boolean
      {
         var _loc1_:String = §3!B§();
         var _loc2_:String = §@3§().§#!@§(§@P§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §7!&§.§]B§(_loc2_);
         }
         return true;
      }
      
      public static function §3!B§() : String
      {
         return §@3§().§3!B§(§@P§);
      }
   }
}
