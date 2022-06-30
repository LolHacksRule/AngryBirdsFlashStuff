package § a§
{
   import §%O§.§ !§;
   import §7h§.§7!"§;
   import §<!-§.Sprite;
   
   public class §=^§ extends §&K§
   {
       
      
      private var §+I§:String;
      
      private var §2!P§:Boolean;
      
      private var §>!b§:Number;
      
      private var §[!F§:int;
      
      public function §=^§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§+I§ = param3;
         this.§2!P§ = param4;
         this.§>!b§ = param5;
         this.§[!F§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §7!"§.§#W§(this.§+I§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §&K§
      {
         return new §=^§(time,duration,this.§+I§,this.§2!P§,this.§>!b§,this.§[!F§);
      }
   }
}
