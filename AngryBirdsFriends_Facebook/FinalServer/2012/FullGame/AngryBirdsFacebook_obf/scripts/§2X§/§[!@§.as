package §2X§
{
   import §'x§.§=!R§;
   import §0!2§.§5"L§;
   import §70§.§^!>§;
   
   public class §[!@§ extends §^!>§
   {
      
      public static const §4!6§:Number = 10000;
       
      
      public var §<v§:Function = null;
      
      public var §!!g§:Boolean = false;
      
      public function §[!@§(param1:§5"L§)
      {
         super(param1);
      }
      
      override protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         if(!§7z§)
         {
            §7z§ = true;
         }
         if(new Date().time - §^!"§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§^!"§.slingshot.mDragging)
         {
            return;
         }
         if(§^!"§.objects.isWorldAtSleep())
         {
            §<"%§ = Math.min(§<"%§,3500);
         }
         if(§<"%§ <= 0)
         {
            if(param1 == §^!>§.LEVEL_STATE_FAIL)
            {
               if(this.§<v§ != null)
               {
                  if(!this.§!!g§)
                  {
                     this.§<v§();
                     return;
                  }
               }
            }
            this.changeGameState(param1,param2);
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         super.changeGameState(param1,param2);
         dispatchEvent(new §=!R§(§=!R§.STATE_CHANGED,param1));
      }
      
      public function §2!1§() : void
      {
         §7z§ = true;
         §<"%§ = 0;
         this.setGameOverState(LEVEL_STATE_FAIL,true);
      }
   }
}
