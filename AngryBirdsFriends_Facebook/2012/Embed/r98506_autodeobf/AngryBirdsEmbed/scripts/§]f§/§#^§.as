package §]f§
{
   import §"a§.§>X§;
   import §3!A§.§9!0§;
   import §;q§.Sprite;
   
   public class §#^§ extends §6$§
   {
       
      
      private var §,z§:String;
      
      private var §^S§:Boolean;
      
      private var §,A§:Number;
      
      private var include:int;
      
      public function §#^§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§,z§ = param3;
         this.§^S§ = param4;
         this.§,A§ = param5;
         this.include = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>X§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §9!0§.§-! §(this.§,z§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §6$§
      {
         return new §#^§(time,duration,this.§,z§,this.§^S§,this.§,A§,this.include);
      }
   }
}
