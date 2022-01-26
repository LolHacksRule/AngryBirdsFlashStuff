package §_-Su§
{
   import §_-wH§.§_-6w§;
   import §_-wH§.§_-Em§;
   
   public class §_-8v§
   {
      
      private static var §_-Kb§:Array = null;
      
      private static var §_-sN§:Array = new Array();
      
      public static var §_-rq§:String = null;
      
      public static var §_-d3§:String = null;
      
      public static var §_-cy§:Boolean;
      
      public static var §_-t-§:int = 0;
       
      
      public function §_-8v§()
      {
         super();
      }
      
      public static function §_-Uz§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-N3§ = null;
         var _loc4_:* = null;
         §_-Kb§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-N3§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-JL§ = _loc2_.leftCorner;
            _loc3_.§_-3B§ = _loc2_.rightCorner;
            _loc3_.§_-OU§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-LN§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            §_-Kb§.push(_loc3_);
         }
      }
      
      public static function §_-Ca§() : void
      {
      }
      
      public static function §_-Zh§(param1:String) : §_-N3§
      {
         var _loc2_:§_-N3§ = null;
         for each(_loc2_ in §_-Kb§)
         {
            if(_loc2_.§_-a8§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-1h§(param1:int) : §_-N3§
      {
         return §_-Kb§[param1];
      }
      
      public static function §_-qS§() : int
      {
         return §_-Kb§.length;
      }
      
      public static function §_-NQ§(param1:String) : §_-Xk§
      {
         if(!§_-sN§[param1])
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return §_-sN§[param1];
      }
      
      public static function §_-P0§(param1:String, param2:§_-Xk§) : void
      {
         §_-sN§[param1] = param2;
      }
      
      public static function §_-nk§(param1:String, param2:int) : int
      {
         var _loc3_:§_-Xk§ = §_-8v§.§_-NQ§(param1);
         if(param2 <= 0)
         {
            return 0;
         }
         if(param2 < _loc3_.§_-Ql§)
         {
            return 1;
         }
         if(param2 < _loc3_.§_-Rm§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function static(param1:String) : void
      {
         if(param1 != §_-rq§)
         {
            §_-d3§ = §_-rq§;
            §_-rq§ = param1;
         }
      }
      
      public static function §_-jD§() : String
      {
         return §_-rq§.substring(5);
      }
      
      public static function §_-dJ§() : §_-N3§
      {
         return §_-Kb§[§_-t-§];
      }
      
      public static function §_-V0§() : Boolean
      {
         return true;
      }
      
      public static function §_-Br§() : Boolean
      {
         var _loc1_:String = §_-r3§();
         var _loc2_:String = §_-dJ§().§_-lG§(§_-rq§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         var _loc3_:§_-6w§ = §_-Em§.§_-lG§(_loc2_);
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-rq§.charAt(0))
            {
               return true;
            }
            return false;
         }
         _loc3_.§_-IB§ = §_-6w§.§_-l2§;
         return true;
      }
      
      public static function §_-r3§() : String
      {
         return §_-dJ§().§_-r3§(§_-rq§);
      }
   }
}
