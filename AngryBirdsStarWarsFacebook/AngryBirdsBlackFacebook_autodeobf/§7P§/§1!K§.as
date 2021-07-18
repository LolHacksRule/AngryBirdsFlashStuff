package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §1!K§ extends §`#G§
   {
       
      
      private var §&!6§:Boolean = false;
      
      public function §1!K§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §0!v§() : void
      {
         this.§&!6§ = true;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§&!6§)
         {
            health = 0;
         }
      }
   }
}
