package §0!?§
{
   import § !=§.Sprite;
   import §;L§.§"!X§;
   import §;s§.§%!c§;
   
   public class §"!y§ extends §&!G§
   {
       
      
      private var §="!§:String;
      
      private var §=!!§:Boolean;
      
      private var §''§:Number;
      
      private var §`"$§:int;
      
      public function §"!y§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§="!§ = param3;
         this.§=!!§ = param4;
         this.§''§ = param5;
         this.§`"$§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§"!X§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §%!c§.§8" §(this.§="!§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §&!G§
      {
         return new §"!y§(time,duration,this.§="!§,this.§=!!§,this.§''§,this.§`"$§);
      }
   }
}
