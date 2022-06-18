package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   
   public class §"#e§ extends §4#m§
   {
       
      
      private var §"#9§:Boolean = false;
      
      public function §"#e§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §^!9§() : void
      {
         this.§"#9§ = true;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§"#9§)
         {
            health = 0;
         }
      }
   }
}
