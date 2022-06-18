package §+_§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §9#M§.§%"=§;
   
   public class §9#C§ extends §>$8§
   {
       
      
      private var §#!7§:String;
      
      private var §9y§:Boolean;
      
      private var §6!g§:Number;
      
      private var §6!U§:int;
      
      public function §9#C§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§#!7§ = param3;
         this.§9y§ = param4;
         this.§6!g§ = param5;
         this.§6!U§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%"=§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §4$4§.playSound(this.§#!7§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §>$8§
      {
         return new §9#C§(time,duration,this.§#!7§,this.§9y§,this.§6!g§,this.§6!U§);
      }
   }
}
