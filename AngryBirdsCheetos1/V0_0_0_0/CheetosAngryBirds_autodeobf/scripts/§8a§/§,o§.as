package §8a§
{
   import §%!$§.§=m§;
   import §4W§.§!]§;
   import §`a§.Sprite;
   
   public class §,o§ extends §'!U§
   {
       
      
      private var §+!W§:String;
      
      private var §;Y§:Boolean;
      
      private var §=!L§:Number;
      
      private var §<O§:int;
      
      public function §,o§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§+!W§ = param3;
         this.§;Y§ = param4;
         this.§=!L§ = param5;
         this.§<O§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §=m§.playSound(this.§+!W§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §'!U§
      {
         return new §,o§(time,duration,this.§+!W§,this.§;Y§,this.§=!L§,this.§<O§);
      }
   }
}
