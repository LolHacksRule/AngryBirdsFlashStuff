package §,!M§
{
   import §#!@§.Sprite;
   import §'0§.§]!2§;
   import §[v§.§0&§;
   
   public class §7!L§ extends §;!0§
   {
       
      
      private var §6<§:String;
      
      private var §8!0§:Boolean;
      
      private var §"=§:Number;
      
      private var §'%§:int;
      
      public function §7!L§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§6<§ = param3;
         this.§8!0§ = param4;
         this.§"=§ = param5;
         this.§'%§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0&§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §]!2§.playSound(this.§6<§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §;!0§
      {
         return new §7!L§(time,duration,this.§6<§,this.§8!0§,this.§"=§,this.§'%§);
      }
   }
}
