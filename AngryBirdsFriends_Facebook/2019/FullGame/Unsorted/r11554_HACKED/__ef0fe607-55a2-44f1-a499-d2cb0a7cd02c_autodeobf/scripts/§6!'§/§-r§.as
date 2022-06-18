package §6!'§
{
   import § "g§.§%!2§;
   import §=#§.§%#y§;
   import §=#§.§&!p§;
   import §=#§.§1!"§;
   import §=#§.§1#+§;
   import §=#§.§>"e§;
   import §]"'§.§0!S§;
   import §]"'§.§8!a§;
   import §]"'§.§^"X§;
   import flash.display.MovieClip;
   
   public class §-r§
   {
       
      
      private var §!"W§:§>"e§;
      
      public function §-r§(param1:MovieClip, param2:§0!S§)
      {
         var _loc5_:§1#+§ = null;
         var _loc6_:§&!p§ = null;
         super();
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
         var _loc3_:String = param2.avatarString;
         if(_loc3_ == "" || _loc3_ == null)
         {
            _loc3_ = §%!2§.§;"A§(param2.userId);
         }
         var _loc4_:String;
         if(_loc4_ = param2 is §^"X§ ? (param2 as §^"X§).profilePicture : null)
         {
            (_loc5_ = new §1#+§(param2.userId,_loc4_,_loc3_,false,§1!"§.§'"O§)).scaleX = 0.85;
            _loc5_.scaleY = 0.85;
            param1.addChild(_loc5_);
         }
         else if(_loc3_ == "" || _loc3_ == null || §%#y§.§%#J§ == false)
         {
            (_loc6_ = new §&!p§(param2.userId,"",false,§1!"§.§'"O§,false,(param2 as §8!a§).profileImageURL)).scaleX = 0.85;
            _loc6_.scaleY = 0.85;
            param1.addChild(_loc6_);
         }
         else
         {
            this.§!"W§ = new §>"e§(param2.userId,_loc3_,false,§1!"§.§'"O§);
            this.§!"W§.y = 20;
            this.§!"W§.scaleX = 0.85;
            this.§!"W§.scaleY = 0.85;
            param1.addChild(this.§!"W§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§!"W§)
         {
            this.§!"W§.dispose();
         }
      }
   }
}
