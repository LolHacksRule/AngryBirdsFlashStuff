package §9A§
{
   import §%t§.§-!5§;
   import §5^§.§ !x§;
   import §^I§.Sprite;
   
   public class §""8§ extends §'"$§
   {
       
      
      private var §!!o§:String;
      
      private var §4t§:Boolean;
      
      private var §&5§:Number;
      
      private var §;!T§:int;
      
      public function §""8§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§!!o§ = param3;
         this.§4t§ = param4;
         this.§&5§ = param5;
         this.§;!T§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§-!5§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            § !x§.playSound(this.§!!o§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §'"$§
      {
         return new §""8§(time,duration,this.§!!o§,this.§4t§,this.§&5§,this.§;!T§);
      }
   }
}
