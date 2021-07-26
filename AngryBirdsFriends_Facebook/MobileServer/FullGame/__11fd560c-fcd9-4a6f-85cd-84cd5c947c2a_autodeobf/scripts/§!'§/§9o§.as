package §!'§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §`"8§.§34§;
   import §`"8§.§`#+§;
   
   public class §9o§ extends §8! §
   {
       
      
      private var §^8§:§4[§;
      
      public var §!!Z§:Number = 0;
      
      public function §9o§(param1:§`#+§, param2:§34§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§;!J§();
         var _loc18_:int = Math.random() * 7 + 1;
         var _loc19_:String = "WINGMAN_EFFECT_" + _loc18_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         this.startAnimation();
      }
      
      private function startAnimation() : void
      {
         if(!this.§^8§)
         {
            this.§^8§ = §&"H§.§6!§.§5!j§(§&"H§.§6!§.§6C§(this.displayObject,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§&"H§.§=>§),§&"H§.§6!§.§6C§(this.displayObject,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§&"H§.§-t§));
            this.§^8§.onComplete = this.§;!J§;
            this.§^8§.play();
         }
      }
      
      private function §;!J§() : void
      {
         this.§!!Z§ = 0;
         if(this.§^8§)
         {
            this.§^8§.stop();
         }
         this.§^8§ = null;
      }
   }
}
