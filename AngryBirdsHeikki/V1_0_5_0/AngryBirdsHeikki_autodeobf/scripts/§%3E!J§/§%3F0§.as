package §>!J§
{
   import §1!K§.§>!<§;
   import §`!H§.§@!E§;
   import flash.utils.Dictionary;
   
   public class §?0§
   {
      
      private static var §]r§:Array = [];
      
      private static var §+!A§:Dictionary = new Dictionary();
       
      
      public function §?0§()
      {
         super();
      }
      
      public static function §<!S§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§>!c§ = null;
         for(_loc2_ in param1)
         {
            if(!§+!A§[_loc2_])
            {
               _loc3_ = new §>!c§(param1[_loc2_],_loc2_);
               §>!<§.log("Initializing cutScene: " + _loc2_);
               §+!A§[_loc2_] = _loc3_;
               if(§]r§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§1q§ = §>!c§.§'0§;
               }
            }
         }
      }
      
      public static function §2+§(param1:String, param2:§@!E§) : §>!c§
      {
         var _loc3_:§>!c§ = §+!A§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §@!<§(param1:String) : §>!c§
      {
         var _loc2_:§>!c§ = §+!A§[param1];
         if(_loc2_ && §]r§.indexOf(param1))
         {
            _loc2_.§1q§ = §>!c§.§'0§;
         }
         return _loc2_;
      }
      
      public static function §[s§(param1:String) : void
      {
         if(§]r§.indexOf(param1) < 0)
         {
            §]r§.push(param1);
         }
      }
   }
}
