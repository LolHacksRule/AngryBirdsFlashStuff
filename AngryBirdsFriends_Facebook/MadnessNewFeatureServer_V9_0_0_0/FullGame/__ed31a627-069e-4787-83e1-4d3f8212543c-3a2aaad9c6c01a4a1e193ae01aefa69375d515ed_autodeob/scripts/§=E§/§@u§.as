package §=E§
{
   public class §@u§
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function §@u§(param1:String, param2:String)
      {
         super();
         this.userID = param1;
         this.name = param2;
      }
      
      public static function §5+§(param1:Object) : §@u§
      {
         var _loc2_:String = !!param1.ni ? param1.ni : param1.n;
         return new §@u§(param1.uid,_loc2_);
      }
   }
}
