package §5"D§
{
   import §4"@§.Sprite;
   import §6!M§.§7r§;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   
   public class §?Z§ extends §<!&§
   {
       
      
      protected var §?9§:§ do§;
      
      public function §?Z§(param1:Sprite, param2:b2World, param3:§<!r§, param4:§7r§, param5:Number, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function set §9!b§(param1:§ do§) : void
      {
         this.§?9§ = param1;
      }
      
      public function get §9!b§() : § do§
      {
         return this.§?9§;
      }
      
      override public function addSensedObject(param1:§>q§) : void
      {
         super.addSensedObject(param1);
         if(this.§?9§)
         {
            this.§?9§.§ n§(param1,this);
         }
      }
      
      override public function removeSensedObject(param1:§>q§) : void
      {
         super.removeSensedObject(param1);
         if(this.§?9§)
         {
            this.§?9§.§#^§(param1,this);
         }
      }
   }
}
