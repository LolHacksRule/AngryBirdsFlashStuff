package §]!]§
{
   import §0!_§.§!!G§;
   import §;X§.§4!@§;
   import §`!B§.Sprite;
   
   public class §5!]§ extends §;Y§
   {
       
      
      private var §]"6§:String;
      
      private var §8!`§:Boolean;
      
      private var §!!C§:Number;
      
      private var §1!w§:int;
      
      public function §5!]§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§]"6§ = param3;
         this.§8!`§ = param4;
         this.§!!C§ = param5;
         this.§1!w§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!!G§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §4!@§.§`!w§(this.§]"6§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §;Y§
      {
         return new §5!]§(time,duration,this.§]"6§,this.§8!`§,this.§!!C§,this.§1!w§);
      }
   }
}
