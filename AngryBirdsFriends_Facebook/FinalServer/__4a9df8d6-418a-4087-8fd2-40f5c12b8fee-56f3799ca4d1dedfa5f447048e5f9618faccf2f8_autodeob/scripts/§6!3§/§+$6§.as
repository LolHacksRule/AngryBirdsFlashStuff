package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §>2§.§!6§;
   import §>2§.§>!^§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §+$6§ extends §?#g§
   {
       
      
      private var §`!5§:§>!^§;
      
      public function §+$6§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         var _loc8_:Number = -param1.width / param6 / 2;
         var _loc9_:Number = -param1.height / param6 / 2;
         this.§`!5§ = new §>!^§("BIRD_CHRISTMAS_FUSE",param1,§7n§.§6#K§,_loc8_,_loc9_,50,true);
         this.§`!5§.§="<§(true);
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         this.§`!5§.update(param1);
      }
      
      override protected function addTrail(param1:§8$B§) : Boolean
      {
         super.addTrail(param1);
         var _loc2_:Number = x * §!6§.§[#v§;
         var _loc3_:Number = y * §!6§.§[#v§;
         return true;
      }
   }
}
