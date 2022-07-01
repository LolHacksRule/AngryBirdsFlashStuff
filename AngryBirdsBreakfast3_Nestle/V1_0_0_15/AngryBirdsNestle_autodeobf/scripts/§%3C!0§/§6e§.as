package §<!0§
{
   import §2`§.§%!!§;
   import §3!J§.Sprite;
   import §[!Z§.§>D§;
   
   public class §6e§ extends §=!?§
   {
       
      
      private var §`!A§:String;
      
      private var §-!%§:Boolean;
      
      private var §=A§:Number;
      
      private var §#!d§:int;
      
      public function §6e§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§`!A§ = param3;
         this.§-!%§ = param4;
         this.§=A§ = param5;
         this.§#!d§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §>D§.§9!q§(this.§`!A§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §=!?§
      {
         return new §6e§(time,duration,this.§`!A§,this.§-!%§,this.§=A§,this.§#!d§);
      }
   }
}
