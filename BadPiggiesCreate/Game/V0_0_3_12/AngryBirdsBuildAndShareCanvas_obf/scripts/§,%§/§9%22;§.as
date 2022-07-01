package §,%§
{
   import §%B§.§^k§;
   import §@!-§.§3"1§;
   import §@!i§.Sprite;
   
   public class §9";§ extends §"!2§
   {
       
      
      private var §"!Q§:String;
      
      private var §#l§:Boolean;
      
      private var §+!c§:Number;
      
      private var §#!§:int;
      
      public function §9";§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§"!Q§ = param3;
         this.§#l§ = param4;
         this.§+!c§ = param5;
         this.§#!§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§3"1§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §^k§.playSound(this.§"!Q§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §"!2§
      {
         return new §9";§(time,duration,this.§"!Q§,this.§#l§,this.§+!c§,this.§#!§);
      }
   }
}
