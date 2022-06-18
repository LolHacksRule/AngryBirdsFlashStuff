package §^0§
{
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §?$#§.§+#-§;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   
   public class §5!4§ extends §`"=§
   {
       
      
      private var §<!v§:§+#-§;
      
      public function §5!4§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         var _loc8_:Number = -param1.width / param6 / 2;
         var _loc9_:Number = -param1.height / param6 / 2;
         this.§<!v§ = new §+#-§("BIRD_CHRISTMAS_FUSE",param1,§+!p§.§`?§,_loc8_,_loc9_,50,true);
         this.§<!v§.§&#6§(true);
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         this.§<!v§.update(param1);
      }
      
      override protected function addTrail(param1:§>"T§) : Boolean
      {
         super.addTrail(param1);
         Number(x * §<d§.§6@§);
         Number(y * §<d§.§6@§);
         return true;
      }
   }
}
