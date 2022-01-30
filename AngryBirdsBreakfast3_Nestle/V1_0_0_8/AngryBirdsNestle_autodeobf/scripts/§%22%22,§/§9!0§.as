package §"",§
{
   import §-![§.Sprite;
   import §6`§.§2a§;
   import §8q§.§]d§;
   
   public class §9!0§ extends §`=§
   {
       
      
      private var §0"+§:String;
      
      private var §^c§:Boolean;
      
      private var §0e§:Number;
      
      private var §1!W§:int;
      
      public function §9!0§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§0"+§ = param3;
         this.§^c§ = param4;
         this.§0e§ = param5;
         this.§1!W§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2a§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §]d§.§^!J§(this.§0"+§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §`=§
      {
         return new §9!0§(time,duration,this.§0"+§,this.§^c§,this.§0e§,this.§1!W§);
      }
   }
}
