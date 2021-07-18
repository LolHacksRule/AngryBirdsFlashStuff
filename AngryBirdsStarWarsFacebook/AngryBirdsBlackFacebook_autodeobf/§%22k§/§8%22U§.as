package §"k§
{
   public class §8"U§ extends §!!J§
   {
       
      
      public function §8"U§(param1:String, param2:String, param3:Object = null)
      {
         super(param1,param2,"",true,param3);
      }
      
      override protected function getFriendListItemFromServerObject(param1:Object) : §]"V§
      {
         if(param1.i)
         {
            return super.getFriendListItemFromServerObject(param1);
         }
         return §4#G§.§[!b§(param1);
      }
      
      override public function createNewSelfUser(param1:§=!g§) : §=!g§
      {
         var _loc2_:§5"2§ = null;
         if(§7!C§)
         {
            return new §4#G§(§>#T§,§9#Y§,!!§-"a§ ? §-"a§.avatarString : "",0,0,!!param1 ? int(param1.§9!<§ + 1) : 1,0);
         }
         _loc2_ = new §5"2§(§>#T§,§9#Y§,!!§-"a§ ? §-"a§.avatarString : "",0,0,0,!!param1 ? int(param1.§9!<§ + 1) : 1);
         _loc2_.§-!P§ = true;
         return _loc2_;
      }
   }
}
