package §+!c§
{
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   
   public class §7V§ extends §]A§
   {
       
      
      private var §4!p§:MovieClip;
      
      protected var §8#-§:int;
      
      public function §7V§(param1:String)
      {
         super(param1);
         this.§4!p§ = new §5_§.§`"G§("LevelIconBlackFacebook")();
         this.§4!p§.mcLevelIcon.addChild(mAsset);
         addChild(this.§4!p§);
      }
      
      public function get §9!<§() : int
      {
         return this.§8#-§;
      }
      
      public function set §9!<§(param1:int) : void
      {
         var _loc2_:String = null;
         this.§8#-§ = param1;
         if(this.§8#-§ > 0 && this.§8#-§ <= 3)
         {
            _loc2_ = ["Gold","Silver","Bronze"][this.§8#-§ - 1];
         }
         else
         {
            _loc2_ = "noCrown";
         }
         this.§4!p§.LevelSelection_Crown.gotoAndStop(_loc2_);
      }
   }
}
