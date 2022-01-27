package §4A§
{
   import §'!&§.Sprite;
   import §8o§.§5"%§;
   import §9!G§.§"!S§;
   
   public class §%"@§ extends §9!i§
   {
       
      
      private var §!"@§:String;
      
      private var §+h§:Boolean;
      
      private var §5!Q§:Number;
      
      private var §7!l§:int;
      
      public function §%"@§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§!"@§ = param3;
         this.§+h§ = param4;
         this.§5!Q§ = param5;
         this.§7!l§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5"%§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §"!S§.playSound(this.§!"@§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §9!i§
      {
         return new §%"@§(time,duration,this.§!"@§,this.§+h§,this.§5!Q§,this.§7!l§);
      }
   }
}
