package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   
   public class §2",§ extends §^!8§
   {
       
      
      private var §3#o§:Boolean = false;
      
      public function §2",§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §7Q§() : void
      {
         this.§3#o§ = true;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§3#o§)
         {
            health = 0;
         }
      }
   }
}
