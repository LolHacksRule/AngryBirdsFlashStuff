package §#+§
{
   import §#?§.§6!4§;
   import §#?§.§=E§;
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   
   public class §9! § extends §9!E§
   {
       
      
      private var §3&§:§'a§;
      
      public var §,I§:Number = 0;
      
      public function §9! §(param1:§=E§, param2:§6!4§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§=y§();
         var _loc18_:int = Math.random() * 7 + 1;
         var _loc19_:String = "WINGMAN_EFFECT_" + _loc18_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         this.§&C§();
      }
      
      private function §&C§() : void
      {
         if(!this.§3&§)
         {
            this.§3&§ = §-!&§.§;R§.§>!+§(§-!&§.§;R§.§2w§(this.§<2§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§-!&§.§]!C§),§-!&§.§;R§.§2w§(this.§<2§,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§-!&§.§?q§));
            this.§3&§.onComplete = this.§=y§;
            this.§3&§.play();
         }
      }
      
      private function §=y§() : void
      {
         this.§,I§ = 0;
         this.§3&§ = null;
      }
   }
}
