package §_-MP§
{
   import §_-qU§.§_-0U§;
   
   public class §_-N5§
   {
      
      public static const §try§:String = "1-1";
      
      protected static var §_-5y§:Array = null;
      
      protected static var §_-WW§:Array = [];
      
      protected static var §_-Mq§:Array = [];
      
      public static var §_-sI§:String = null;
      
      public static var §_-1m§:String = null;
      
      public static var §_-Kk§:Boolean;
      
      public static var §_-g7§:int = 0;
       
      
      public function §_-N5§()
      {
         super();
      }
      
      public static function §_-1u§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-ZZ§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §_-5y§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-ZZ§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-uu§ = _loc2_.leftCorner;
            _loc3_.§_-OP§ = _loc2_.rightCorner;
            _loc3_.§_-w7§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-hh§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §_-5y§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §_-Mq§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §_-1q§() : void
      {
      }
      
      public static function §_-Do§(param1:String) : §_-ZZ§
      {
         var _loc2_:§_-ZZ§ = null;
         for each(_loc2_ in §_-5y§)
         {
            if(_loc2_.§_-Rq§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-73§(param1:String) : int
      {
         var _loc3_:§_-ZZ§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §_-5y§.length)
         {
            _loc3_ = §_-5y§[_loc2_];
            if(_loc3_.§_-Rq§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §_-UW§(param1:int) : §_-ZZ§
      {
         return §_-5y§[param1];
      }
      
      public static function §_-XV§() : int
      {
         return §_-5y§.length;
      }
      
      public static function §_-pj§(param1:String) : §_-BI§
      {
         if(!§_-WW§[param1])
         {
            if(§_-Mq§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §_-WW§[param1];
      }
      
      public static function §_-1F§(param1:String, param2:§_-BI§) : void
      {
         §_-WW§[param1] = param2;
      }
      
      public static function §_-9k§(param1:String, param2:int) : int
      {
         var level:§_-BI§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §_-N5§.§_-pj§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§_-YI§)
         {
            return 1;
         }
         if(score < level.§_-eC§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-FC§(param1:String) : String
      {
         if(!§_-Mq§[param1])
         {
            return §try§;
         }
         return param1;
      }
      
      public static function §_-PC§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-ZZ§ = null;
         if(param1 != §_-sI§)
         {
            _loc2_ = §_-73§(param1);
            if(_loc2_ >= 0)
            {
               §_-g7§ = _loc2_;
               §_-1m§ = §_-sI§;
               §_-sI§ = param1;
               _loc3_ = §_-Ft§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§_-Sl§(param1);
               }
            }
            else
            {
               §_-1m§ = §_-sI§;
               §_-sI§ = null;
            }
         }
      }
      
      public static function §_-s3§() : String
      {
         return §_-sI§.substring(5);
      }
      
      public static function §_-Ft§() : §_-ZZ§
      {
         return §_-5y§[§_-g7§];
      }
      
      public static function §_-7z§() : Boolean
      {
         return true;
      }
      
      public static function §_-HP§() : Boolean
      {
         var _loc1_:String = § in§();
         var _loc2_:String = §_-Ft§().§_-xM§(§_-sI§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-sI§.charAt(0))
            {
               return true;
            }
            return false;
         }
         §_-0U§.§_-eF§(_loc2_);
         return true;
      }
      
      public static function § in§() : String
      {
         return §_-Ft§().§ in§(§_-sI§);
      }
   }
}
