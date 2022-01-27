package §`"]§
{
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   
   public class §'!7§ extends §^"N§
   {
       
      
      private var §6r§:MovieClip;
      
      protected var §%W§:int;
      
      public function §'!7§(param1:String)
      {
         super(param1);
         this.§6r§ = new §%!Z§.§;",§("LevelIconBlackFacebook")();
         this.§6r§.mcLevelIcon.addChild(mAsset);
         addChild(this.§6r§);
      }
      
      public function get §5!b§() : int
      {
         return this.§%W§;
      }
      
      public function set §5!b§(param1:int) : void
      {
         var _loc2_:String = null;
         this.§%W§ = param1;
         if(this.§%W§ > 0 && this.§%W§ <= 3)
         {
            _loc2_ = ["Gold","Silver","Bronze"][this.§%W§ - 1];
         }
         else
         {
            _loc2_ = "noCrown";
         }
         this.§6r§.LevelSelection_Crown.gotoAndStop(_loc2_);
      }
   }
}
