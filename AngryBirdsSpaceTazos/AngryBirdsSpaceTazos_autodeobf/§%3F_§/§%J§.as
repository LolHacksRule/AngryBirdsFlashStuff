package §?_§
{
   import §3"#§.§<!O§;
   import §4&§.§,C§;
   import §7!8§.Sprite;
   
   public class §%J§ extends §3'§
   {
       
      
      private var §;!7§:String;
      
      private var §%"-§:Boolean;
      
      private var §8!W§:Number;
      
      private var §?!q§:int;
      
      public function §%J§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         super(param1,param2);
         this.§;!7§ = param3;
         this.§%"-§ = param4;
         this.§8!W§ = param5;
         this.§?!q§ = param6;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,C§) : Boolean
      {
         if(!super.update(param1,param2,param3))
         {
            §<!O§.playSound(this.§;!7§);
            return false;
         }
         return false;
      }
      
      override public function clone() : §3'§
      {
         return new §%J§(time,duration,this.§;!7§,this.§%"-§,this.§8!W§,this.§?!q§);
      }
   }
}
