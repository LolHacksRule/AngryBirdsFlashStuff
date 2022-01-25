package §<c§
{
   import § !9§.§'!U§;
   import §8r§.§@V§;
   import §;t§.Sprite;
   
   public class §#!4§ extends §^N§
   {
       
      
      private var §7u§:String;
      
      private var §&@§:Boolean;
      
      private var §[C§:Number;
      
      private var §4!?§:int;
      
      public function §#!4§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§7u§ = param3;
         this.§&@§ = param4;
         this.§[C§ = param5;
         this.§4!?§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§@V§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §'!U§.playSound(this.§7u§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §^N§
      {
         return new §#!4§(time,duration,this.§7u§,this.§&@§,this.§[C§,this.§4!?§);
      }
   }
}
