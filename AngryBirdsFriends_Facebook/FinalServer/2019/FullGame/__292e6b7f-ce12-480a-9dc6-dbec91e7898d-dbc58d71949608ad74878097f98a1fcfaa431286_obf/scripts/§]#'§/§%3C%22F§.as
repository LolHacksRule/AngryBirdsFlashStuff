package §]#'§
{
   import §,#,§.§0!u§;
   import §,#,§.§3!R§;
   import §,#,§.§;$A§;
   import §2!Y§.§"$=§;
   import §2G§.§##W§;
   import §2G§.§+#]§;
   import §2G§.§3§;
   import §2G§.§?!s§;
   import §2G§.§?$3§;
   import flash.display.MovieClip;
   
   public class §<"F§
   {
       
      
      private var §1"w§:§3#1§;
      
      public function §<"F§(param1:MovieClip, param2:§;$A§)
      {
         var _loc5_:§##W§ = null;
         var _loc6_:§+#]§ = null;
         super();
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
         var _loc3_:String = param2.avatarString;
         if(_loc3_ == "" || _loc3_ == null)
         {
            _loc3_ = §"$=§.§ $8§(param2.userId);
         }
         if(param2 is §3!R§ ? (param2 as §3!R§).profilePicture : null)
         {
            (_loc5_ = new §##W§(param2.userId,null,_loc3_,false,§?!s§.§<"-§)).scaleX = 0.85;
            _loc5_.scaleY = 0.85;
            param1.addChild(_loc5_);
         }
         else if(_loc3_ == "" || _loc3_ == null || §?$3§.§42§ == false)
         {
            (_loc6_ = new §+#]§(param2.userId,"",false,§?!s§.§<"-§,false,(param2 as §0!u§).profileImageURL)).scaleX = 0.85;
            _loc6_.scaleY = 0.85;
            param1.addChild(_loc6_);
         }
         else
         {
            this.§1"w§ = new §3#1§(param2.userId,_loc3_,false,§?!s§.§<"-§);
            this.§1"w§.y = 20;
            this.§1"w§.scaleX = 0.85;
            this.§1"w§.scaleY = 0.85;
            param1.addChild(this.§1"w§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§1"w§)
         {
            this.§1"w§.dispose();
         }
      }
   }
}
