package §!#C§
{
   import §,"v§.§;"n§;
   import §,"v§.§^!b§;
   import §-u§.§8#i§;
   
   public class §6w§ extends §8#i§
   {
       
      
      private var mLevelManager:§;"n§;
      
      public function §6w§(param1:§;"n§)
      {
         super();
         this.mLevelManager = param1;
      }
      
      override protected function onLevelLoaded(param1:String) : void
      {
         var _loc2_:§^!b§ = null;
         super.onLevelLoaded(param1);
         if(!this.mLevelManager.getLevelForId(param1))
         {
            _loc2_ = §^!b§.§<%§(§2!O§(param1));
            _loc2_.name = param1;
            this.mLevelManager.addLevel(param1,_loc2_);
         }
      }
   }
}
