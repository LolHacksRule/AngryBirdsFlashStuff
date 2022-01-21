package §?l§
{
   import §0@§.Sprite;
   import §7! §.§4n§;
   import §]^§.§7G§;
   
   public class §%D§ extends §0!W§
   {
       
      
      private var §9!&§:String;
      
      private var §]!o§:Boolean;
      
      private var §`!B§:Number;
      
      private var §'!$§:int;
      
      public function §%D§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§9!&§ = param3;
         this.§]!o§ = param4;
         this.§`!B§ = param5;
         this.§'!$§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4n§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §7G§.§4W§(this.§9!&§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §0!W§
      {
         return new §%D§(time,duration,this.§9!&§,this.§]!o§,this.§`!B§,this.§'!$§);
      }
   }
}
