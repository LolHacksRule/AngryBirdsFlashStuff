package §9L§
{
   import § !m§.§6h§;
   import §5!l§.§ !D§;
   import §5x§.Sprite;
   
   public class §'<§ extends §<6§
   {
       
      
      private var § n§:String;
      
      private var §5n§:Boolean;
      
      private var §6W§:Number;
      
      private var §@5§:int;
      
      public function §'<§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§ n§ = param3;
         this.§5n§ = param4;
         this.§6W§ = param5;
         this.§@5§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !D§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §6h§.§-a§(this.§ n§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §<6§
      {
         return new §'<§(time,duration,this.§ n§,this.§5n§,this.§6W§,this.§@5§);
      }
   }
}
