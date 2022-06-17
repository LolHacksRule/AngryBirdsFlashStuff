package §"#X§
{
   public class §"5§
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function §"5§(param1:String, param2:String)
      {
         super();
         this.userID = param1;
         this.name = param2;
      }
      
      public static function §"!U§(param1:Object) : §"5§
      {
         var _loc2_:String = !!param1.ni ? param1.ni : param1.n;
         return new §"5§(param1.uid,_loc2_);
      }
   }
}
