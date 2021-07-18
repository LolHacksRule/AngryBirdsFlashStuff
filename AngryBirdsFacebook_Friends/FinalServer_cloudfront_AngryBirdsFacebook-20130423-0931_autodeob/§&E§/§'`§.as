package §&E§
{
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   
   public class §'`§ extends §]6§
   {
       
      
      private var §4a§:§6!K§;
      
      public var mAnimationRatio:Number = 0;
      
      public function §'`§(param1:§^!Y§, param2:§`m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§0"Y§();
         var _loc18_:int = Math.random() * 7 + 1;
         var _loc19_:String = "WINGMAN_EFFECT_" + _loc18_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         this.§<!-§();
      }
      
      private function §<!-§() : void
      {
         if(!this.§4a§)
         {
            this.§4a§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(this.§>R§,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§0W§.§]!t§),§0W§.§&"5§.§]!r§(this.§>R§,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§0W§.§[!Z§));
            this.§4a§.onComplete = this.§0"Y§;
            this.§4a§.play();
         }
      }
      
      private function §0"Y§() : void
      {
         this.mAnimationRatio = 0;
         if(this.§4a§)
         {
            this.§4a§.stop();
         }
         this.§4a§ = null;
      }
   }
}
