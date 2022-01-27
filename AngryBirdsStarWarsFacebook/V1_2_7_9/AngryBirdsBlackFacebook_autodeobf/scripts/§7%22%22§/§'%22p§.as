package §7""§
{
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   
   public class §'"p§ extends §^!1§
   {
       
      
      private var §=!x§:MovieClip;
      
      protected var §1[§:int;
      
      public function §'"p§(param1:String)
      {
         super(param1);
         this.§=!x§ = new §5"]§.§4!K§("LevelIconBlackFacebook")();
         this.§=!x§.mcLevelIcon.addChild(mAsset);
         addChild(this.§=!x§);
      }
      
      public function get §["Q§() : int
      {
         return this.§1[§;
      }
      
      public function set §["Q§(param1:int) : void
      {
         var _loc2_:String = null;
         this.§1[§ = param1;
         if(this.§1[§ > 0 && this.§1[§ <= 3)
         {
            _loc2_ = ["Gold","Silver","Bronze"][this.§1[§ - 1];
         }
         else
         {
            _loc2_ = "noCrown";
         }
         this.§=!x§.LevelSelection_Crown.gotoAndStop(_loc2_);
      }
   }
}
