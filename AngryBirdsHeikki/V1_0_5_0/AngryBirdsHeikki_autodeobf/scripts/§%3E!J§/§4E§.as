package §>!J§
{
   import §2!Q§.§'[§;
   import §[=§.Sprite;
   import §`!H§.§@!E§;
   
   public class §4E§ extends §=!§
   {
       
      
      private var §69§:String;
      
      private var §8'§:Boolean;
      
      private var §2p§:Number;
      
      private var §!C§:int;
      
      public function §4E§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§69§ = param3;
         this.§8'§ = param4;
         this.§2p§ = param5;
         this.§!C§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§@!E§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §'[§.§"]§(this.§69§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §=!§
      {
         return new §4E§(time,duration,this.§69§,this.§8'§,this.§2p§,this.§!C§);
      }
   }
}
