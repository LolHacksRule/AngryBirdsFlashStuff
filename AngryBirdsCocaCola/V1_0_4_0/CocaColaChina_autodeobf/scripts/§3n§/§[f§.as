package §3n§
{
   import § !K§.Sprite;
   import §7I§.§<!0§;
   import §9!Y§.§!q§;
   
   public class §[f§ extends §'0§
   {
       
      
      private var §&l§:String;
      
      private var §9W§:Boolean;
      
      private var §2!D§:Number;
      
      private var §'$§:int;
      
      public function §[f§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§&l§ = param3;
         this.§9W§ = param4;
         this.§2!D§ = param5;
         this.§'$§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!q§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §<!0§.playSound(this.§&l§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §'0§
      {
         return new §[f§(time,duration,this.§&l§,this.§9W§,this.§2!D§,this.§'$§);
      }
   }
}
