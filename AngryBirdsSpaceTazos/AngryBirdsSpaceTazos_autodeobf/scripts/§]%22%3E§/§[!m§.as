package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.set;
   import §'!&§.b2World;
   import §7!8§.Sprite;
   
   public class §[!m§ extends §3=§
   {
       
      
      protected var §>k§:§+o§;
      
      public function §[!m§(param1:Sprite, param2:b2World, param3:§8X§, param4:set, param5:Number, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function set §9J§(param1:§+o§) : void
      {
         this.§>k§ = param1;
      }
      
      public function get §9J§() : §+o§
      {
         return this.§>k§;
      }
      
      override public function addSensedObject(param1:§<!=§) : void
      {
         super.addSensedObject(param1);
         if(this.§>k§)
         {
            this.§>k§.§34§(param1,this);
         }
      }
      
      override public function removeSensedObject(param1:§<!=§) : void
      {
         super.removeSensedObject(param1);
         if(this.§>k§)
         {
            this.§>k§.§0"<§(param1,this);
         }
      }
   }
}
