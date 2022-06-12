package §-r§
{
   import §-p§.§4!`§;
   import §4!<§.§'!S§;
   import §<"F§.§"^§;
   import §>!G§.§20§;
   
   public class §!"M§ extends §4!`§
   {
      
      public static const §@!H§:Number = 10000;
       
      
      public var §3!W§:Function = null;
      
      public var §0!$§:Boolean = false;
      
      private var §>!§:Array;
      
      public function §!"M§(param1:§'!S§)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         super.init();
         this.§>!§ = [];
      }
      
      override protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         if(!§1!v§)
         {
            §1!v§ = true;
         }
         if(new Date().time - mLevelMain.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(mLevelMain.slingshot.mDragging)
         {
            return;
         }
         if(mLevelMain.objects.isWorldAtSleep())
         {
            §[!t§ = Math.min(§[!t§,3500);
         }
         if(§[!t§ <= 0)
         {
            if(param1 == §4!`§.LEVEL_STATE_FAIL)
            {
               if(this.§3!W§ != null)
               {
                  if(!this.§0!$§)
                  {
                     this.§3!W§();
                     return;
                  }
               }
            }
            this.changeGameState(param1,param2);
         }
      }
      
      public function §`"H§() : Array
      {
         return this.§>!§;
      }
      
      public function §3!_§(param1:String) : void
      {
         this.§>!§.push(param1);
         dispatchEvent(new §"^§(§"^§.§65§,param1));
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         super.changeGameState(param1,param2);
         dispatchEvent(new §20§(§20§.STATE_CHANGED,param1));
      }
      
      public function §88§() : void
      {
         §1!v§ = true;
         §[!t§ = 0;
         this.setGameOverState(LEVEL_STATE_FAIL,true);
      }
   }
}
