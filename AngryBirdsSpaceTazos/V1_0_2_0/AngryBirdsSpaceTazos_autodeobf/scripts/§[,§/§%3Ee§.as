package §[,§
{
   import §#!X§.b2World;
   import §'!&§.Sprite;
   import §;"=§.§3!R§;
   import §;"=§.§]"<§;
   
   public class §>e§ extends §8!a§
   {
       
      
      protected var §8!6§:§0!>§;
      
      public function §>e§(param1:Sprite, param2:b2World, param3:§]"<§, param4:§3!R§, param5:Number, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function set §4!H§(param1:§0!>§) : void
      {
         this.§8!6§ = param1;
      }
      
      public function get §4!H§() : §0!>§
      {
         return this.§8!6§;
      }
      
      override public function addSensedObject(param1:§1d§) : void
      {
         super.addSensedObject(param1);
         if(this.§8!6§)
         {
            this.§8!6§.§]!;§(param1,this);
         }
      }
      
      override public function removeSensedObject(param1:§1d§) : void
      {
         super.removeSensedObject(param1);
         if(this.§8!6§)
         {
            this.§8!6§.§`g§(param1,this);
         }
      }
   }
}
