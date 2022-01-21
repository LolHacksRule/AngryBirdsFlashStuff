package §%!a§
{
   import §&[§.§&!m§;
   import §-!#§.§5!6§;
   import §2!g§.Sprite;
   
   public class §0l§ extends §`!3§
   {
       
      
      private var § !I§:String;
      
      private var §;[§:Boolean;
      
      private var §<8§:Number;
      
      private var §,!a§:int;
      
      public function §0l§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§ !I§ = param3;
         this.§;[§ = param4;
         this.§<8§ = param5;
         this.§,!a§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&!m§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §5!6§.§8!G§(this.§ !I§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §`!3§
      {
         return new §0l§(time,duration,this.§ !I§,this.§;[§,this.§<8§,this.§,!a§);
      }
   }
}
