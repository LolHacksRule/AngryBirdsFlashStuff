package §>!5§
{
   import §&!v§.Sprite;
   import §+!C§.§ "#§;
   import §+!C§.§!!S§;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §^#8§ extends §,#?§
   {
       
      
      private var §]"'§:§ "#§;
      
      public function §^#8§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         var _loc8_:Number = -param1.width / param6 / 2;
         var _loc9_:Number = -param1.height / param6 / 2;
         this.§]"'§ = new § "#§("BIRD_CHRISTMAS_FUSE",param1,§!#A§.§#F§,_loc8_,_loc9_,50,true);
         this.§]"'§.§,z§(true);
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         this.§]"'§.update(param1);
      }
      
      override protected function addTrail(param1:§-!S§) : Boolean
      {
         super.addTrail(param1);
         var _loc2_:Number = x * §!!S§.§,"3§;
         var _loc3_:Number = y * §!!S§.§,"3§;
         return true;
      }
   }
}
