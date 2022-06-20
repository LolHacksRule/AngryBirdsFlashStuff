package §%A§
{
   import §6§.§'#n§;
   import §6§.§]%§;
   import §^"[§.§2§;
   import §^"[§.§=#;§;
   
   public class §^I§ extends §3!t§
   {
       
      
      private var §,"6§:§]%§;
      
      public var §<#M§:Number = 0;
      
      public function §^I§(param1:§2#6§, param2:§=#;§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§6#a§();
         var _loc18_:int = Math.random() * 7 + 1;
         var _loc19_:String = "WINGMAN_EFFECT_" + _loc18_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         this.startAnimation();
      }
      
      private function startAnimation() : void
      {
         if(!this.§,"6§)
         {
            this.§,"6§ = §'#n§.§?q§.§set §(§'#n§.§?q§.§9!N§(this.displayObject,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§'#n§.§8"W§),§'#n§.§?q§.§9!N§(this.displayObject,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§'#n§.§-#o§));
            this.§,"6§.onComplete = this.§6#a§;
            this.§,"6§.play();
         }
      }
      
      private function §6#a§() : void
      {
         this.§<#M§ = 0;
         if(this.§,"6§)
         {
            this.§,"6§.stop();
         }
         this.§,"6§ = null;
      }
   }
}
