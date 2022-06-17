package §6Q§
{
   import §!6§.Sprite;
   import §>"9§.§[#%§;
   import §^"[§.§=#;§;
   
   public class §!$ § extends §?d§
   {
       
      
      private var §!#J§:String;
      
      private var §9#T§:Boolean;
      
      private var §6"]§:Number;
      
      private var §3#<§:int;
      
      public function §!$ §(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§!#J§ = param3;
         this.§9#T§ = param4;
         this.§6"]§ = param5;
         this.§3#<§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=#;§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §[#%§.playSound(this.§!#J§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §?d§
      {
         return new §!$ §(time,duration,this.§!#J§,this.§9#T§,this.§6"]§,this.§3#<§);
      }
   }
}
