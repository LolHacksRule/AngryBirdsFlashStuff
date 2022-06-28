package §>!C§
{
   import §[!<§.§2!#§;
   
   public class §6M§
   {
      
      public static const §"b§:String = "1-1";
      
      protected static var §>n§:Array = null;
      
      protected static var §6m§:Array = [];
      
      protected static var §@r§:Array = [];
      
      public static var §[z§:String = null;
      
      public static var §>D§:String = null;
      
      public static var §6!E§:Boolean;
      
      public static var §'0§:int = 0;
       
      
      public function §6M§()
      {
         super();
      }
      
      public static function §>7§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§1$§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §>n§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §1$§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§,"§ = _loc2_.leftCorner;
            _loc3_.§;!%§ = _loc2_.rightCorner;
            _loc3_.§;!-§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§8H§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §>n§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §@r§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §%!<§() : void
      {
      }
      
      public static function §1o§(param1:String) : §1$§
      {
         var _loc2_:§1$§ = null;
         for each(_loc2_ in §>n§)
         {
            if(_loc2_.§1! §(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §3!#§(param1:String) : int
      {
         var _loc3_:§1$§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §>n§.length)
         {
            _loc3_ = §>n§[_loc2_];
            if(_loc3_.§1! §(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §6[§(param1:int) : §1$§
      {
         return §>n§[param1];
      }
      
      public static function § C§(param1:String) : §1$§
      {
         var _loc2_:§1$§ = null;
         for each(_loc2_ in §>n§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §!!>§() : int
      {
         return §>n§.length;
      }
      
      public static function getLevelForId(param1:String) : §<-§
      {
         if(!§6m§[param1])
         {
            if(§@r§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §6m§[param1];
      }
      
      public static function § r§(param1:String, param2:§<-§) : void
      {
         §6m§[param1] = param2;
      }
      
      public static function §%Q§(param1:String, param2:int) : int
      {
         var level:§<-§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §6M§.getLevelForId(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§[!$§)
         {
            return 1;
         }
         if(score < level.§!!9§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function § 1§(param1:String) : String
      {
         if(!§@r§[param1])
         {
            return §"b§;
         }
         return param1;
      }
      
      public static function §<H§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§1$§ = null;
         if(param1 != §[z§)
         {
            _loc2_ = §3!#§(param1);
            if(_loc2_ >= 0)
            {
               §'0§ = _loc2_;
               §>D§ = §[z§;
               §[z§ = param1;
               _loc3_ = §&!;§();
               if(_loc3_)
               {
                  _loc3_.§8B§ = _loc3_.§ B§(param1);
               }
            }
            else
            {
               §>D§ = §[z§;
               §[z§ = null;
            }
         }
      }
      
      public static function §&q§() : String
      {
         return §[z§.substring(5);
      }
      
      public static function §&!;§() : §1$§
      {
         return §>n§[§'0§];
      }
      
      public static function §0!1§() : Boolean
      {
         return true;
      }
      
      public static function §9i§() : Boolean
      {
         var _loc1_:String = §"p§();
         var _loc2_:String = §&!;§().§]!3§(§[z§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §2!#§.§`&§(_loc2_);
         }
         return true;
      }
      
      public static function §"p§() : String
      {
         return §&!;§().§"p§(§[z§);
      }
   }
}
