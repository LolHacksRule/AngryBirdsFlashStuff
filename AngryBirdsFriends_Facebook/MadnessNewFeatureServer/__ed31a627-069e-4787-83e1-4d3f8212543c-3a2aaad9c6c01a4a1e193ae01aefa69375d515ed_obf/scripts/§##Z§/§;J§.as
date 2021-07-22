package §##Z§
{
   import §!#C§.§0#;§;
   import §!#C§.§1#b§;
   import §!#C§.§[§;
   import §0"B§.§ #W§;
   import §?!a§.§%M§;
   import §?!a§.§-=§;
   import §?!a§.§4" §;
   import §?!a§.§6#b§;
   import §?!a§.§;!"§;
   import flash.display.MovieClip;
   
   public class §;J§
   {
       
      
      private var §1"§:§%M§;
      
      public function §;J§(param1:MovieClip, param2:§1#b§)
      {
         var _loc5_:§4" § = null;
         var _loc6_:§;!"§ = null;
         super();
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
         var _loc3_:String = param2.avatarString;
         if(_loc3_ == "" || _loc3_ == null)
         {
            _loc3_ = § #W§.§[#e§(param2.userId);
         }
         if(param2 is §[#8§ ? (param2 as §[#8§).profilePicture : null)
         {
            (_loc5_ = new §4" §(param2.userId,null,_loc3_,false,§6#b§.§""b§)).scaleX = 0.85;
            _loc5_.scaleY = 0.85;
            param1.addChild(_loc5_);
         }
         else if(_loc3_ == "" || _loc3_ == null || §-=§.§7$1§ == false)
         {
            (_loc6_ = new §;!"§(param2.userId,"",false,§6#b§.§""b§,false,(param2 as §0#;§).profileImageURL)).scaleX = 0.85;
            _loc6_.scaleY = 0.85;
            param1.addChild(_loc6_);
         }
         else
         {
            this.§1"§ = new §%M§(param2.userId,_loc3_,false,§6#b§.§""b§);
            this.§1"§.y = 20;
            this.§1"§.scaleX = 0.85;
            this.§1"§.scaleY = 0.85;
            param1.addChild(this.§1"§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§1"§)
         {
            this.§1"§.dispose();
         }
      }
   }
}
