package §2r§
{
   import §8T§.§@o§;
   import §;^§.Sprite;
   import §=!K§.§^Q§;
   
   public class §&!C§ extends §]6§
   {
       
      
      private var §'A§:String;
      
      private var §1!"§:Boolean;
      
      private var §9f§:Number;
      
      private var §8!+§:int;
      
      public function §&!C§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§'A§ = param3;
         this.§1!"§ = param4;
         this.§9f§ = param5;
         this.§8!+§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§^Q§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §@o§.playSound(this.§'A§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §]6§
      {
         return new §&!C§(time,duration,this.§'A§,this.§1!"§,this.§9f§,this.§8!+§);
      }
   }
}
