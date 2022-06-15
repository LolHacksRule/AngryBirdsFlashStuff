package §7g§
{
   import §%$!§.§"#q§;
   import §%$!§.§%!2§;
   import §%$!§.§9$6§;
   import §,n§.§!";§;
   import §,n§.§+!f§;
   import §,n§.§3I§;
   import §,n§.§?#!§;
   import §,n§.§]E§;
   import §;4§.§-#a§;
   import flash.display.MovieClip;
   
   public class §4Q§
   {
       
      
      private var §0!_§:§]E§;
      
      public function §4Q§(param1:MovieClip, param2:§"#q§)
      {
         var _loc5_:§?#!§ = null;
         var _loc6_:§!";§ = null;
         super();
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
         var _loc3_:String = param2.avatarString;
         if(_loc3_ == "" || _loc3_ == null)
         {
            _loc3_ = §-#a§.§;"h§(param2.userId);
         }
         var _loc4_:String;
         if(_loc4_ = param2 is §%!2§ ? (param2 as §%!2§).profilePicture : null)
         {
            (_loc5_ = new §?#!§(param2.userId,_loc4_,_loc3_,false,§+!f§.§`#Q§)).scaleX = 0.85;
            _loc5_.scaleY = 0.85;
            param1.addChild(_loc5_);
         }
         else if(_loc3_ == "" || _loc3_ == null || §3I§.§5#"§ == false)
         {
            (_loc6_ = new §!";§(param2.userId,"",false,§+!f§.§`#Q§,false,(param2 as §9$6§).profileImageURL)).scaleX = 0.85;
            _loc6_.scaleY = 0.85;
            param1.addChild(_loc6_);
         }
         else
         {
            this.§0!_§ = new §]E§(param2.userId,_loc3_,false,§+!f§.§`#Q§);
            this.§0!_§.y = 20;
            this.§0!_§.scaleX = 0.85;
            this.§0!_§.scaleY = 0.85;
            param1.addChild(this.§0!_§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§0!_§)
         {
            this.§0!_§.dispose();
         }
      }
   }
}
