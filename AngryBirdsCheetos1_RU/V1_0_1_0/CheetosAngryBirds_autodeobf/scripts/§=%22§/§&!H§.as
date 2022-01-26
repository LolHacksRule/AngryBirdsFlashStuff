package §="§
{
   import §&!5§.Sprite;
   import §1E§.§2^§;
   import §9!2§.§'![§;
   
   public class §&!H§ extends §2!C§
   {
       
      
      private var §[!Z§:String;
      
      private var §!!!§:Boolean;
      
      private var §!p§:Number;
      
      private var §>H§:int;
      
      public function §&!H§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§[!Z§ = param3;
         this.§!!!§ = param4;
         this.§!p§ = param5;
         this.§>H§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'![§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §2^§.§ !C§(this.§[!Z§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §2!C§
      {
         return new §&!H§(time,duration,this.§[!Z§,this.§!!!§,this.§!p§,this.§>H§);
      }
   }
}
