package §[0§
{
   import §&"J§.§2!T§;
   import §&"J§.§3!3§;
   import §&"J§.§?$6§;
   import §+#t§.§!"l§;
   import §+#t§.§#"D§;
   import §+#t§.§-"3§;
   import §+#t§.§5V§;
   import §+#t§.§7§;
   import §[G§.§8A§;
   import flash.display.MovieClip;
   
   public class §8k§
   {
       
      
      private var §5!A§:§7#4§;
      
      public function §8k§(param1:MovieClip, param2:§2!T§)
      {
         var _loc5_:§!"l§ = null;
         var _loc6_:§#"D§ = null;
         super();
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
         var _loc3_:String = param2.avatarString;
         if(_loc3_ == "" || _loc3_ == null)
         {
            _loc3_ = §8A§.§&i§(param2.userId);
         }
         if(param2 is §?$6§ ? (param2 as §?$6§).profilePicture : null)
         {
            (_loc5_ = new §!"l§(param2.userId,null,_loc3_,false,§5V§.§?!S§)).scaleX = 0.85;
            _loc5_.scaleY = 0.85;
            param1.addChild(_loc5_);
         }
         else if(_loc3_ == "" || _loc3_ == null || §-"3§.§<"l§ == false)
         {
            (_loc6_ = new §#"D§(param2.userId,"",false,§5V§.§?!S§,false,(param2 as §3!3§).profileImageURL)).scaleX = 0.85;
            _loc6_.scaleY = 0.85;
            param1.addChild(_loc6_);
         }
         else
         {
            this.§5!A§ = new §7#4§(param2.userId,_loc3_,false,§5V§.§?!S§);
            this.§5!A§.y = 20;
            this.§5!A§.scaleX = 0.85;
            this.§5!A§.scaleY = 0.85;
            param1.addChild(this.§5!A§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§5!A§)
         {
            this.§5!A§.dispose();
         }
      }
   }
}
