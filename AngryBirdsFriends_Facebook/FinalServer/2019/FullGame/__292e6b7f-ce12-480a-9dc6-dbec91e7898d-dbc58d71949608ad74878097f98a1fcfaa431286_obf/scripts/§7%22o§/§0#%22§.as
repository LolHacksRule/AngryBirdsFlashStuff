package §7"o§
{
   import §7"T§.§#"^§;
   import §7"T§.§4#[§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   
   public class §0#"§ extends §3#z§
   {
       
      
      private var §2!'§:§@$-§;
      
      public var §+"k§:Number = 0;
      
      public function §0#"§(param1:§4#[§, param2:§#"^§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§<!R§();
         var _loc18_:int = Math.random() * 7 + 1;
         var _loc19_:String = "WINGMAN_EFFECT_" + _loc18_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         this.startAnimation();
      }
      
      private function startAnimation() : void
      {
         if(!this.§2!'§)
         {
            this.§2!'§ = §6"W§.§+!,§.§8$>§(§6"W§.§+!,§.§9!n§(this.displayObject,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§6"W§.§%#T§),§6"W§.§+!,§.§9!n§(this.displayObject,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§6"W§.§[X§));
            this.§2!'§.onComplete = this.§<!R§;
            this.§2!'§.play();
         }
      }
      
      private function §<!R§() : void
      {
         this.§+"k§ = 0;
         if(this.§2!'§)
         {
            this.§2!'§.stop();
         }
         this.§2!'§ = null;
      }
   }
}
