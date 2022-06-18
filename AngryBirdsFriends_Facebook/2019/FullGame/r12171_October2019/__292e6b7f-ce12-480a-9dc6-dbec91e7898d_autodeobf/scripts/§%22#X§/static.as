package §"#X§
{
   public class static
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function static(param1:String, param2:String)
      {
         super();
         this.userID = param1;
         this.name = param2;
      }
      
      public static function §"!U§(param1:Object) : static
      {
         return new static(param1.uid,param1.n);
      }
   }
}
