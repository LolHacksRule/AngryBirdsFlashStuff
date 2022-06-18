package §]#p§
{
   public class §4!J§
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function §4!J§(param1:String, param2:String)
      {
         super();
         this.userID = param1;
         this.name = param2;
      }
      
      public static function §2u§(param1:Object) : §4!J§
      {
         var _loc2_:String = !!param1.ni ? param1.ni : param1.n;
         return new §4!J§(param1.uid,_loc2_);
      }
   }
}
