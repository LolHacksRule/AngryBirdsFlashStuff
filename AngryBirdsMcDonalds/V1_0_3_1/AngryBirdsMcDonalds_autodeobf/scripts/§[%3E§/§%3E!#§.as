package §[>§
{
   import § !%§.§7!>§;
   import §&c§.Sprite;
   import §?!g§.§ !d§;
   
   public class §>!#§ extends §?m§
   {
       
      
      private var §@!$§:String;
      
      private var §>!&§:Boolean;
      
      private var §=A§:Number;
      
      private var §=6§:int;
      
      public function §>!#§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§@!$§ = param3;
         this.§>!&§ = param4;
         this.§=A§ = param5;
         this.§=6§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!>§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            § !d§.§-h§(this.§@!$§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §?m§
      {
         return new §>!#§(time,duration,this.§@!$§,this.§>!&§,this.§=A§,this.§=6§);
      }
   }
}
