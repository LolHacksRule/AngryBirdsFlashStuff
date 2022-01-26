package §_-5b§
{
   import §_-00f§.§_-8K§;
   
   public class §_-Mm§
   {
      
      public static const §_-Sx§:String = "1-1";
      
      protected static var §_-CU§:Array = null;
      
      protected static var §break§:Array = [];
      
      protected static var §_-yx§:Array = [];
      
      public static var §_-Kw§:String = null;
      
      public static var §_-e7§:String = null;
      
      public static var §_-6e§:Boolean;
      
      public static var §_-007§:int = 0;
       
      
      public function §_-Mm§()
      {
         super();
      }
      
      public static function §_-Il§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-xQ§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §_-CU§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-xQ§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-p4§ = _loc2_.leftCorner;
            _loc3_.§_-Rj§ = _loc2_.rightCorner;
            _loc3_.§_-Yw§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-e6§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §_-CU§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §_-yx§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §_-XZ§() : void
      {
      }
      
      public static function §_-G1§(param1:String) : §_-xQ§
      {
         var _loc2_:§_-xQ§ = null;
         for each(_loc2_ in §_-CU§)
         {
            if(_loc2_.§_-pT§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-sM§(param1:String) : int
      {
         var _loc3_:§_-xQ§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §_-CU§.length)
         {
            _loc3_ = §_-CU§[_loc2_];
            if(_loc3_.§_-pT§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §_-dC§(param1:int) : §_-xQ§
      {
         return §_-CU§[param1];
      }
      
      public static function §_-G5§() : int
      {
         return §_-CU§.length;
      }
      
      public static function §_-Bp§(param1:String) : §_-Vj§
      {
         if(!§break§[param1])
         {
            if(§_-yx§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §break§[param1];
      }
      
      public static function §_-iG§(param1:String, param2:§_-Vj§) : void
      {
         §break§[param1] = param2;
      }
      
      public static function §_-Kv§(param1:String, param2:int) : int
      {
         var level:§_-Vj§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §_-Mm§.§_-Bp§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§_-pL§)
         {
            return 1;
         }
         if(score < level.§_-pr§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-2Q§(param1:String) : String
      {
         if(!§_-yx§[param1])
         {
            return §_-Sx§;
         }
         return param1;
      }
      
      public static function §false§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-xQ§ = null;
         if(param1 != §_-Kw§)
         {
            _loc2_ = §_-sM§(param1);
            if(_loc2_ >= 0)
            {
               §_-007§ = _loc2_;
               §_-e7§ = §_-Kw§;
               §_-Kw§ = param1;
               _loc3_ = §_-tG§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§_-47§(param1);
               }
            }
            else
            {
               §_-e7§ = §_-Kw§;
               §_-Kw§ = null;
            }
         }
      }
      
      public static function §_-Qc§() : String
      {
         return §_-Kw§.substring(5);
      }
      
      public static function §_-tG§() : §_-xQ§
      {
         return §_-CU§[§_-007§];
      }
      
      public static function §_-X0§() : Boolean
      {
         return true;
      }
      
      public static function §_-xG§() : Boolean
      {
         var _loc1_:String = §_-iM§();
         var _loc2_:String = §_-tG§().§_-nT§(§_-Kw§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-Kw§.charAt(0))
            {
               return true;
            }
            return false;
         }
         §_-8K§.§_-pq§(_loc2_);
         return true;
      }
      
      public static function §_-iM§() : String
      {
         return §_-tG§().§_-iM§(§_-Kw§);
      }
   }
}
