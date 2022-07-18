package §2"a§
{
   import §!!U§.Sprite;
   import §7!F§.§7§;
   import §="2§.§?!r§;
   
   public class §["8§ extends §,^§
   {
       
      
      private var §4!I§:String;
      
      private var §#S§:Boolean;
      
      private var §4!=§:Number;
      
      private var §`c§:int;
      
      public function §["8§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§4!I§ = param3;
         this.§#S§ = param4;
         this.§4!=§ = param5;
         this.§`c§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §?!r§.§"#_§(this.§4!I§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §,^§
      {
         return new §["8§(time,duration,this.§4!I§,this.§#S§,this.§4!=§,this.§`c§);
      }
   }
}
