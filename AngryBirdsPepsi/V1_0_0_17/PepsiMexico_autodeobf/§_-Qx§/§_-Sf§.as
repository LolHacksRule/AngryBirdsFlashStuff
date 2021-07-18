package §_-Qx§
{
   import §_-ya§.§_-oc§;
   import §_-ya§.§_-u-§;
   
   public class §_-Sf§
   {
      
      private static var §_-mw§:Array = null;
      
      private static var §_-ae§:Array = new Array();
      
      public static var §_-vj§:String = null;
      
      public static var §_-6M§:String = null;
      
      public static var §_-LD§:Boolean;
      
      public static var §_-wf§:int = 0;
       
      
      public function §_-Sf§()
      {
         super();
      }
      
      public static function §_-Do§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-JO§ = null;
         var _loc4_:* = null;
         §_-mw§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-JO§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-ZS§ = _loc2_.leftCorner;
            _loc3_.§_-aZ§ = _loc2_.rightCorner;
            _loc3_.§_-OD§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-N6§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            §_-mw§.push(_loc3_);
         }
      }
      
      public static function §_-6s§() : void
      {
      }
      
      public static function §_-in§(param1:String) : §_-JO§
      {
         var _loc2_:§_-JO§ = null;
         for each(_loc2_ in §_-mw§)
         {
            if(_loc2_.§_-Sr§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-Gd§(param1:int) : §_-JO§
      {
         return §_-mw§[param1];
      }
      
      public static function §_-DG§() : int
      {
         return §_-mw§.length;
      }
      
      public static function §_-L0§(param1:String) : §_-Wv§
      {
         if(!§_-ae§[param1])
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return §_-ae§[param1];
      }
      
      public static function §_-DJ§(param1:String, param2:§_-Wv§) : void
      {
         §_-ae§[param1] = param2;
      }
      
      public static function §_-mF§(param1:String, param2:int) : int
      {
         var _loc3_:§_-Wv§ = §_-Sf§.§_-L0§(param1);
         if(param2 <= 0)
         {
            return 0;
         }
         if(param2 < _loc3_.§_-Xf§)
         {
            return 1;
         }
         if(param2 < _loc3_.§for §)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-JA§(param1:String) : void
      {
         if(param1 != §_-vj§)
         {
            §_-6M§ = §_-vj§;
            §_-vj§ = param1;
         }
      }
      
      public static function §_-gF§() : String
      {
         return §_-vj§.substring(5);
      }
      
      public static function §_-Xv§() : §_-JO§
      {
         return §_-mw§[§_-wf§];
      }
      
      public static function §_-Lt§() : Boolean
      {
         return true;
      }
      
      public static function §_-fS§() : Boolean
      {
         var _loc1_:String = §_-ZP§();
         var _loc2_:String = §_-Xv§().§_-4B§(§_-vj§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         var _loc3_:§_-oc§ = §_-u-§.§_-4B§(_loc2_);
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-vj§.charAt(0))
            {
               return true;
            }
            return false;
         }
         _loc3_.§_-99§ = §_-oc§.§_-Qf§;
         return true;
      }
      
      public static function §_-ZP§() : String
      {
         return §_-Xv§().§_-ZP§(§_-vj§);
      }
   }
}
