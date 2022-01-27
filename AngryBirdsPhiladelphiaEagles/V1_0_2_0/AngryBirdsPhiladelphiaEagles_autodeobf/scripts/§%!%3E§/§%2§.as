package §%!>§
{
   import §+y§.§3V§;
   import §<!N§.Sprite;
   import §^'§.§ !C§;
   
   public class §%2§ extends §7!<§
   {
       
      
      private var §4b§:String;
      
      private var §0! §:Boolean;
      
      private var §4p§:Number;
      
      private var §8j§:int;
      
      public function §%2§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§4b§ = param3;
         this.§0! § = param4;
         this.§4p§ = param5;
         this.§8j§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !C§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §3V§.playSound(this.§4b§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §7!<§
      {
         return new §%2§(time,duration,this.§4b§,this.§0! §,this.§4p§,this.§8j§);
      }
   }
}
