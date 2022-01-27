package §`!b§
{
   public class §?#,§ extends §1X§
   {
       
      
      public function §?#,§(param1:String, param2:String, param3:Object = null)
      {
         super(param1,param2,"",true,param3);
      }
      
      override protected function getFriendListItemFromServerObject(param1:Object) : §"#6§
      {
         if(param1.i)
         {
            return super.getFriendListItemFromServerObject(param1);
         }
         return §`#1§.§5!G§(param1);
      }
      
      override public function createNewSelfUser(param1:§ each§) : § each§
      {
         var _loc2_:§>"h§ = null;
         if(§0!a§)
         {
            return new §`#1§(§!!B§,§+?§,!!§`#"§ ? §`#"§.avatarString : "",0,0,!!param1 ? int(param1.§["Q§ + 1) : 1,0);
         }
         _loc2_ = new §>"h§(§!!B§,§+?§,!!§`#"§ ? §`#"§.avatarString : "",0,0,0,!!param1 ? int(param1.§["Q§ + 1) : 1);
         _loc2_.§0!W§ = true;
         return _loc2_;
      }
   }
}
