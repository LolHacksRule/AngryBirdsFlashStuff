package §"k§
{
   public class §8"U§ extends §!!J§
   {
       
      
      public function §8"U§(param1:String, param2:String, param3:Object = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,"",true,param3);
         }
      }
      
      override protected function getFriendListItemFromServerObject(param1:Object) : §]"V§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.i)
            {
               if(_loc2_)
               {
                  §§goto(addr48);
               }
            }
            return §4#G§.§[!b§(param1);
         }
         addr48:
         return super.getFriendListItemFromServerObject(param1);
      }
      
      override public function createNewSelfUser(param1:§=!g§) : §=!g§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§5"2§ = null;
         if(§7!C§)
         {
            return new §4#G§(§>#T§,§9#Y§,!!§-"a§ ? §-"a§.avatarString : "",0,0,!!param1 ? int(param1.§9!<§ + 1) : 1,0);
         }
         _loc2_ = new §5"2§(§>#T§,§9#Y§,!!§-"a§ ? §-"a§.avatarString : "",0,0,0,!!param1 ? int(param1.§9!<§ + 1) : 1);
         if(_loc3_ || _loc2_)
         {
            _loc2_.§-!P§ = true;
         }
         return _loc2_;
      }
   }
}
