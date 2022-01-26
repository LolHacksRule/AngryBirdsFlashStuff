package §_-T8§
{
   import §_-CR§.§_-nU§;
   
   public class §_-Sa§
   {
      
      public static const §_-KY§:String = "1-1";
      
      protected static var §_-tN§:Array = null;
      
      protected static var §_-0S§:Array = [];
      
      protected static var §_-Y9§:Array = [];
      
      public static var §_-LZ§:String = null;
      
      public static var §_-UY§:String = null;
      
      public static var §_-DG§:Boolean;
      
      public static var §_-12§:int = 0;
       
      
      public function §_-Sa§()
      {
         super();
      }
      
      public static function §_-Lk§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-Cx§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §_-tN§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-Cx§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-iX§ = _loc2_.leftCorner;
            _loc3_.§_-nO§ = _loc2_.rightCorner;
            _loc3_.§_-bi§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-f§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §_-tN§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §_-Y9§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §_-tr§() : void
      {
      }
      
      public static function §_-KA§(param1:String) : §_-Cx§
      {
         var _loc2_:§_-Cx§ = null;
         for each(_loc2_ in §_-tN§)
         {
            if(_loc2_.§_-zf§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §finally§(param1:String) : int
      {
         var _loc3_:§_-Cx§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §_-tN§.length)
         {
            _loc3_ = §_-tN§[_loc2_];
            if(_loc3_.§_-zf§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §_-Sf§(param1:int) : §_-Cx§
      {
         return §_-tN§[param1];
      }
      
      public static function §_-ts§() : int
      {
         return §_-tN§.length;
      }
      
      public static function §_-x1§(param1:String) : §_-GI§
      {
         if(!§_-0S§[param1])
         {
            if(§_-Y9§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §_-0S§[param1];
      }
      
      public static function §_-kX§(param1:String, param2:§_-GI§) : void
      {
         §_-0S§[param1] = param2;
      }
      
      public static function §_-1o§(param1:String, param2:int) : int
      {
         var level:§_-GI§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §_-Sa§.§_-x1§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§_-W6§)
         {
            return 1;
         }
         if(score < level.§_-oT§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-NX§(param1:String) : String
      {
         if(!§_-Y9§[param1])
         {
            return §_-KY§;
         }
         return param1;
      }
      
      public static function §_-wW§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§_-Cx§ = null;
         if(param1 != §_-LZ§)
         {
            _loc2_ = §finally§(param1);
            if(_loc2_ >= 0)
            {
               §_-12§ = _loc2_;
               §_-UY§ = §_-LZ§;
               §_-LZ§ = param1;
               _loc3_ = §_-hC§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§_-0P§(param1);
               }
            }
            else
            {
               §_-UY§ = §_-LZ§;
               §_-LZ§ = null;
            }
         }
      }
      
      public static function §else§() : String
      {
         return §_-LZ§.substring(5);
      }
      
      public static function §_-hC§() : §_-Cx§
      {
         return §_-tN§[§_-12§];
      }
      
      public static function §_-8Q§() : Boolean
      {
         return true;
      }
      
      public static function §_-0-D§() : Boolean
      {
         var _loc1_:String = §_-TD§();
         var _loc2_:String = §_-hC§().§_-6f§(§_-LZ§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-LZ§.charAt(0))
            {
               return true;
            }
            return false;
         }
         §_-nU§.§_-PS§(_loc2_);
         return true;
      }
      
      public static function §_-TD§() : String
      {
         return §_-hC§().§_-TD§(§_-LZ§);
      }
   }
}
