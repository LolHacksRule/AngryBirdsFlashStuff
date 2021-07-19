package §3!Z§
{
   import §!V§.§]!`§;
   import §9t§.§=!>§;
   import §>^§.§!6§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class § !b§
   {
      
      private static var §#a§:Array = [];
      
      private static var §'!H§:§]!`§ = new §]!`§();
      
      private static var §'j§:Dictionary = new Dictionary();
       
      
      public function § !b§()
      {
         super();
      }
      
      public static function §,![§(param1:String, param2:ByteArray) : void
      {
         §'!H§[param1] = param2;
      }
      
      public static function §8%§(param1:String) : ByteArray
      {
         return §'!H§[param1];
      }
      
      public static function §?!P§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§?!3§ = null;
         for(_loc2_ in param1)
         {
            if(!§'j§[_loc2_])
            {
               _loc3_ = new §?!3§(param1[_loc2_],_loc2_);
               §!6§.log("Initializing cutScene: " + _loc2_);
               §'j§[_loc2_] = _loc3_;
               if(§#a§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§9!L§ = §?!3§.§!!J§;
               }
            }
         }
      }
      
      public static function §8!P§(param1:String, param2:§=!>§) : §?!3§
      {
         var _loc3_:§?!3§ = §'j§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §]<§(param1:String) : §?!3§
      {
         var _loc2_:§?!3§ = §'j§[param1];
         if(_loc2_ && §#a§.indexOf(param1))
         {
            _loc2_.§9!L§ = §?!3§.§!!J§;
         }
         return _loc2_;
      }
      
      public static function §?Z§(param1:String) : void
      {
         if(§#a§.indexOf(param1) < 0)
         {
            §#a§.push(param1);
         }
      }
   }
}
