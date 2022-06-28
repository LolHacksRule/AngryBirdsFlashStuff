package §`!i§
{
   import §"R§.§ !Q§;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   
   public class §=y§ extends §8d§
   {
       
      
      private var §"!D§:String;
      
      private var §"P§:Boolean;
      
      private var §!!Y§:Number;
      
      private var §`?§:int;
      
      public function §=y§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§"!D§ = param3;
         this.§"P§ = param4;
         this.§!!Y§ = param5;
         this.§`?§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            § !Q§.playSound(this.§"!D§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §8d§
      {
         return new §=y§(time,duration,this.§"!D§,this.§"P§,this.§!!Y§,this.§`?§);
      }
   }
}
