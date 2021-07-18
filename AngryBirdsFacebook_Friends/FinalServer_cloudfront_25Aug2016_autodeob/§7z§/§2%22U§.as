package §7z§
{
   public class §2"U§
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function §2"U§(param1:String, param2:String)
      {
         super();
         this.userID = param1;
         this.name = param2;
      }
      
      public static function §>!§(param1:Object) : §2"U§
      {
         var _loc2_:String = !!param1.ni ? param1.ni : param1.n;
         return new §2"U§(param1.uid,_loc2_);
      }
   }
}
