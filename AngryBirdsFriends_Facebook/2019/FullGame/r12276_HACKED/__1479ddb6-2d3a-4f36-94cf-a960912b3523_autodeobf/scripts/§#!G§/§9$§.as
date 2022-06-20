package §#!G§
{
   public class §9$§
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function §9$§(param1:String, param2:String)
      {
         super();
         this.userID = param1;
         this.name = param2;
      }
      
      public static function §5!I§(param1:Object) : §9$§
      {
         var _loc2_:String = !!param1.ni ? param1.ni : param1.n;
         return new §9$§(param1.uid,_loc2_);
      }
   }
}
