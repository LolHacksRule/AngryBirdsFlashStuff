package §#f§
{
   import flash.text.TextField;
   
   public class §3@§
   {
       
      
      public function §3@§()
      {
         super();
      }
      
      public static function §2#V§(param1:TextField) : int
      {
         var _loc2_:String = param1.text;
         var _loc3_:int = _loc2_.lastIndexOf(" ",param1.caretIndex) + 1;
         var _loc4_:int;
         if((_loc4_ = _loc2_.indexOf(" ",_loc3_)) < 0)
         {
            _loc4_ = param1.text.length;
         }
         return _loc4_;
      }
      
      public static function §,s§(param1:TextField) : void
      {
         var _loc2_:String = param1.text;
         var _loc3_:int = _loc2_.lastIndexOf(" ",param1.caretIndex) + 1;
         var _loc4_:int;
         if((_loc4_ = _loc2_.indexOf(" ",_loc3_)) == -1)
         {
            _loc4_ = _loc2_.length;
         }
         param1.setSelection(_loc3_,_loc4_);
      }
      
      public static function §+"O§(param1:TextField) : String
      {
         return §>!<§(param1,param1.caretIndex);
      }
      
      public static function §>!<§(param1:TextField, param2:int) : String
      {
         if(param1.text.charAt(param1.caretIndex) == " ")
         {
            param2--;
         }
         var _loc3_:String = param1.text;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = _loc3_.lastIndexOf(" ",param2)) + 1;
         var _loc6_:int;
         if((_loc6_ = _loc3_.indexOf(" ",_loc5_)) == -1)
         {
            _loc6_ = _loc3_.length;
         }
         return _loc3_.slice(_loc5_,_loc6_);
      }
      
      public static function §3b§(param1:TextField) : int
      {
         var _loc2_:String = §+"O§(param1);
         var _loc3_:String = param1.text;
         return _loc3_.lastIndexOf(_loc2_,param1.caretIndex);
      }
      
      public static function §`H§(param1:TextField) : int
      {
         var _loc2_:String = §+"O§(param1);
         var _loc3_:String = param1.text;
         return _loc3_.indexOf(_loc2_,param1.caretIndex) + _loc2_.length;
      }
      
      public static function §>R§(param1:TextField) : int
      {
         var _loc2_:int = §3b§(param1);
         return param1.caretIndex - _loc2_;
      }
      
      public static function §6""§(param1:String) : String
      {
         while(param1.charAt(param1.length - 1) == " ")
         {
            param1 = param1.substr(0,param1.length - 1);
         }
         return param1;
      }
      
      public static function §4f§(param1:String) : String
      {
         var _loc2_:Array = param1.split(" ");
         if(_loc2_.length > 1)
         {
            return _loc2_[1];
         }
         return "";
      }
      
      public static function §@!+§(param1:String) : String
      {
         param1 = param1.replace(/^\s\s*/,"");
         var _loc2_:RegExp = /\s/;
         var _loc3_:int = param1.length;
         while(_loc2_.test(param1.charAt(--_loc3_)))
         {
         }
         return param1.slice(0,_loc3_ + 1);
      }
   }
}
