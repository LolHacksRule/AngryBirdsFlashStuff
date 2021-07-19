package §0R§
{
   import §1n§.§5#§;
   import §3O§.§@6§;
   import §^V§.Sprite;
   
   public class §9u§ extends §6! §
   {
       
      
      private var §-!E§:String;
      
      private var §`G§:Boolean;
      
      private var §^^§:Number;
      
      private var §^h§:int;
      
      public function §9u§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§-!E§ = param3;
         this.§`G§ = param4;
         this.§^^§ = param5;
         this.§^h§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §@6§.playSound(this.§-!E§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §6! §
      {
         return new §9u§(time,duration,this.§-!E§,this.§`G§,this.§^^§,this.§^h§);
      }
   }
}
