package §<1§
{
   import §0!_§.§!!G§;
   import §;X§.§4!@§;
   import §`!B§.Sprite;
   
   public class §]"6§ extends §@",§
   {
       
      
      private var §8!`§:String;
      
      private var §!!C§:Boolean;
      
      private var §1!w§:Number;
      
      private var §@Y§:int;
      
      public function §]"6§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§8!`§ = param3;
         this.§!!C§ = param4;
         this.§1!w§ = param5;
         this.§@Y§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!!G§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §4!@§.§`!w§(this.§8!`§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §@",§
      {
         return new §]"6§(time,duration,this.§8!`§,this.§!!C§,this.§1!w§,this.§@Y§);
      }
   }
}
