package §;$-§
{
   import §@!M§.§!"p§;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   
   public class §!!s§ extends §<#N§
   {
       
      
      private var §!W§:String;
      
      private var §6"&§:Boolean;
      
      private var §0#x§:Number;
      
      private var §[!F§:int;
      
      public function §!!s§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§!W§ = param3;
         this.§6"&§ = param4;
         this.§0#x§ = param5;
         this.§[!F§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§34§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §!"p§.playSound(this.§!W§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §<#N§
      {
         return new §!!s§(time,duration,this.§!W§,this.§6"&§,this.§0#x§,this.§[!F§);
      }
   }
}
