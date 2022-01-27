package §0"k§
{
   public class §@"[§ extends §1>§
   {
       
      
      public function §@"[§(param1:String, param2:String, param3:Object = null)
      {
         super(param1,param2,"",true,param3);
      }
      
      override protected function getFriendListItemFromServerObject(param1:Object) : §&L§
      {
         if(param1.i)
         {
            return super.getFriendListItemFromServerObject(param1);
         }
         return §6!U§.§5"#§(param1);
      }
      
      override public function createNewSelfUser(param1:§ F§) : § F§
      {
         var _loc2_:§-"[§ = null;
         if(§`S§)
         {
            return new §6!U§(§3!u§,§0!=§,!!§6"A§ ? §6"A§.avatarString : "",0,0,!!param1 ? int(param1.§5!b§ + 1) : 1,0);
         }
         _loc2_ = new §-"[§(§3!u§,§0!=§,!!§6"A§ ? §6"A§.avatarString : "",0,0,0,!!param1 ? int(param1.§5!b§ + 1) : 1);
         _loc2_.§4"d§ = true;
         return _loc2_;
      }
   }
}
