package §-"h§
{
   public class §8c§
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function §8c§(param1:String, param2:String)
      {
         super();
         this.userID = param1;
         this.name = param2;
      }
      
      public static function §]"B§(param1:Object) : §8c§
      {
         var _loc2_:String = !!param1.ni ? param1.ni : param1.n;
         return new §8c§(param1.uid,_loc2_);
      }
   }
}
