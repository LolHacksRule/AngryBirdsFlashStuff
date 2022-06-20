package §^#?§
{
   import §3#t§.§-#b§;
   import §9x§.§ m§;
   import §9x§.§&$<§;
   import §9x§.§,"V§;
   import §9x§.§6!P§;
   import §9x§.§7",§;
   import §>#Y§.§!!d§;
   import §>#Y§.§1N§;
   import §>#Y§.§3"Q§;
   import flash.display.MovieClip;
   
   public class § !'§
   {
       
      
      private var §;#K§:§,"V§;
      
      public function § !'§(param1:MovieClip, param2:§!!d§)
      {
         var _loc5_:§&$<§ = null;
         var _loc6_:§6!P§ = null;
         super();
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
         var _loc3_:String = param2.avatarString;
         if(_loc3_ == "" || _loc3_ == null)
         {
            _loc3_ = §-#b§.§5!K§(param2.userId);
         }
         var _loc4_:String;
         if(_loc4_ = param2 is §3"Q§ ? (param2 as §3"Q§).profilePicture : null)
         {
            (_loc5_ = new §&$<§(param2.userId,_loc4_,_loc3_,false,§7",§.§>z§)).scaleX = 0.85;
            _loc5_.scaleY = 0.85;
            param1.addChild(_loc5_);
         }
         else if(_loc3_ == "" || _loc3_ == null || § m§.§8!U§ == false)
         {
            (_loc6_ = new §6!P§(param2.userId,"",false,§7",§.§>z§,false,(param2 as §1N§).profileImageURL)).scaleX = 0.85;
            _loc6_.scaleY = 0.85;
            param1.addChild(_loc6_);
         }
         else
         {
            this.§;#K§ = new §,"V§(param2.userId,_loc3_,false,§7",§.§>z§);
            this.§;#K§.y = 20;
            this.§;#K§.scaleX = 0.85;
            this.§;#K§.scaleY = 0.85;
            param1.addChild(this.§;#K§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§;#K§)
         {
            this.§;#K§.dispose();
         }
      }
   }
}
