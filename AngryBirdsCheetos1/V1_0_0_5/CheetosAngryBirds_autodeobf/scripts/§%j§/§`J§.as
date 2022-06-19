package §%j§
{
   import §!!R§.Sprite;
   import §&!W§.§8!K§;
   import §2!6§.§%!$§;
   
   public class §`J§ extends §;!X§
   {
       
      
      private var §,o§:String;
      
      private var §+!W§:Boolean;
      
      private var §;Y§:Number;
      
      private var §=!L§:int;
      
      public function §`J§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§,o§ = param3;
         this.§+!W§ = param4;
         this.§;Y§ = param5;
         this.§=!L§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§8!K§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §%!$§.playSound(this.§,o§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §;!X§
      {
         return new §`J§(time,duration,this.§,o§,this.§+!W§,this.§;Y§,this.§=!L§);
      }
   }
}
