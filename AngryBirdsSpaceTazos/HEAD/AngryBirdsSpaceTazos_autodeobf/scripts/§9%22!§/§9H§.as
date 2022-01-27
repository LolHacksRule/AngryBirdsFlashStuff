package §9"!§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §3>§.§1!'§;
   import §9!K§.b2World;
   
   public class §9H§ extends §]#§
   {
       
      
      protected var §,!§:§8!_§;
      
      public function §9H§(param1:Sprite, param2:b2World, param3:§-"8§, param4:§1!'§, param5:Number, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function set §1!t§(param1:§8!_§) : void
      {
         this.§,!§ = param1;
      }
      
      public function get §1!t§() : §8!_§
      {
         return this.§,!§;
      }
      
      override public function addSensedObject(param1:§,%§) : void
      {
         super.addSensedObject(param1);
         if(this.§,!§)
         {
            this.§,!§.§5+§(param1,this);
         }
      }
      
      override public function removeSensedObject(param1:§,%§) : void
      {
         super.removeSensedObject(param1);
         if(this.§,!§)
         {
            this.§,!§.§51§(param1,this);
         }
      }
   }
}
