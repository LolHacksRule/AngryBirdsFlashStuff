package §%#w§
{
   import §"!!§.§1§;
   import §+$?§.§#"n§;
   import §+$?§.§+F§;
   import §+$?§.§4!+§;
   import §+$?§.§<"`§;
   import §+$?§.§=#>§;
   import §2G§.§1#S§;
   import §2G§.§4O§;
   import §2G§.§9!m§;
   import flash.display.MovieClip;
   
   public class §@"m§
   {
       
      
      private var §#!v§:§+F§;
      
      public function §@"m§(param1:MovieClip, param2:§1#S§)
      {
         var _loc5_:§<"`§ = null;
         var _loc6_:§#"n§ = null;
         super();
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
         var _loc3_:String = param2.avatarString;
         if(_loc3_ == "" || _loc3_ == null)
         {
            _loc3_ = §1#0§.§^y§(param2.userId);
         }
         if(param2 is §9!m§ ? (param2 as §9!m§).profilePicture : null)
         {
            (_loc5_ = new §<"`§(param2.userId,null,_loc3_,false,§4!+§.§<!j§)).scaleX = 0.85;
            _loc5_.scaleY = 0.85;
            param1.addChild(_loc5_);
         }
         else if(_loc3_ == "" || _loc3_ == null || §=#>§.§]#R§ == false)
         {
            (_loc6_ = new §#"n§(param2.userId,"",false,§4!+§.§<!j§,false,(param2 as §4O§).profileImageURL)).scaleX = 0.85;
            _loc6_.scaleY = 0.85;
            param1.addChild(_loc6_);
         }
         else
         {
            this.§#!v§ = new §+F§(param2.userId,_loc3_,false,§4!+§.§<!j§);
            this.§#!v§.y = 20;
            this.§#!v§.scaleX = 0.85;
            this.§#!v§.scaleY = 0.85;
            param1.addChild(this.§#!v§);
         }
      }
      
      public function dispose() : void
      {
         if(this.§#!v§)
         {
            this.§#!v§.dispose();
         }
      }
   }
}
