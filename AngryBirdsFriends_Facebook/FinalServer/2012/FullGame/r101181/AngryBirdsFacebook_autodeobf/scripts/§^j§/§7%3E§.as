package §^j§
{
   import §3![§.§^"1§;
   import §9"!§.§9"3§;
   
   public class §7>§ extends §^"1§
   {
      
      public static const §<v§:Number = 10000;
       
      
      public var §`F§:Function = null;
      
      public var §=T§:Boolean = false;
      
      public function §7>§(param1:§9"3§)
      {
         super(param1);
      }
      
      override protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         if(!§4d§)
         {
            §4d§ = true;
         }
         if(new Date().time - §@O§.slingshot.timeOfLastBirdShot < 6000)
         {
            return;
         }
         if(§@O§.slingshot.mDragging)
         {
            return;
         }
         if(§@O§.objects.isWorldAtSleep())
         {
            §^&§ = Math.min(§^&§,3500);
         }
         if(§^&§ <= 0)
         {
            if(param1 == §^"1§.LEVEL_STATE_FAIL)
            {
               if(this.§`F§ != null)
               {
                  if(!this.§=T§)
                  {
                     this.§`F§();
                     return;
                  }
               }
            }
            changeGameState(param1,param2);
         }
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      public function §2!§() : void
      {
         §4d§ = true;
         §^&§ = 0;
         this.setGameOverState(LEVEL_STATE_FAIL,true);
      }
   }
}
