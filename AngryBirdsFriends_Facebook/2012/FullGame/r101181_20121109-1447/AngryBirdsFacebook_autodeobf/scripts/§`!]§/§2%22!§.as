package §`!]§
{
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§0Y§;
   
   public class §2"!§ extends §>!D§
   {
       
      
      private var §3S§:String;
      
      private var §!1§:Boolean;
      
      private var §4a§:Number;
      
      private var §4!F§:int;
      
      public function §2"!§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§3S§ = param3;
         this.§!1§ = param4;
         this.§4a§ = param5;
         this.§4!F§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §>!E§.§7N§(this.§3S§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §>!D§
      {
         return new §2"!§(time,duration,this.§3S§,this.§!1§,this.§4a§,this.§4!F§);
      }
   }
}
