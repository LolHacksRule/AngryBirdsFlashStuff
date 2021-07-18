package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §'"Y§ extends §`#G§
   {
       
      
      protected var §>!p§:Number;
      
      protected var §-#[§:Number;
      
      protected var §;"F§:Number;
      
      protected var §75§:Number;
      
      public function §'"Y§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§>!p§ = param6;
         this.§-#[§ = param7;
         this.§;"F§ = param8;
         this.§75§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§;$§) : void
      {
         if(param1)
         {
            param1.§6#4§(§3!t§().GetPosition().x,§3!t§().GetPosition().y,this.§>!p§,this.§-#[§,this.§;"F§,this.§75§);
         }
      }
   }
}
